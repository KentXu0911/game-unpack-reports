#!/usr/bin/env python3
"""Read-only metadata/index snapshot for the report; no account or network access."""
import argparse
import csv
import hashlib
import json
import re
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]

def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--source-root', type=Path, required=True)
    args = parser.parse_args()
    dump = args.source_root / 'tools/il2cppdumper/output-arm64/dump.cs'
    index = args.source_root / 'indices/commercialization_method_evidence.csv'
    text = dump.read_text()
    start = text.index('public class AbTestHelper ')
    end = text.index('\n// Namespace:', start)
    fields = text[start:text.index('// Methods', start)]
    constants = [{'name': n, 'id': int(v)} for n, v in re.findall(r'private const int (\w+) = (\d+);', fields)]
    for row in constants:
        row['theme'] = re.sub(r'(NewUser|OldUser)(AbId)?$', '', row['name'])
    assert len(constants) == len({row['id'] for row in constants}) == 107
    methods = list(csv.DictReader(index.open()))
    methods = [row for row in methods if row['method'].startswith('AbTestHelper$$') or
               row['method'].startswith('MergeSmithOfferModel$$get_Is') or
               row['method'] == 'SuperBoosterManager$$GetAbCoinPrice']
    output = ROOT / 'site/assets/evidence/ab-tests'
    data = {
        'sample': 'Royal Match build 38174, ARM64',
        'constantCount': len(constants),
        'normalizedThemeCount': len({row['theme'] for row in constants}),
        'normalization': 'Remove terminal (NewUser|OldUser)(AbId)?; names are metadata labels, not confirmed active experiments.',
        'sources': {str(p.relative_to(args.source_root)): hashlib.sha256(p.read_bytes()).hexdigest() for p in (dump, index)},
        'constants': constants, 'indexedMethods': methods,
        'limits': ['Metadata constants are not live assignments or traffic shares.',
                   'Native snapshots cover selected conditions only; method names alone do not verify behavior.',
                   'Reward predicates may share experiment keys. Different functions are not automatically independent experiments.'],
    }
    (output / 'catalog.json').write_text(json.dumps(data, ensure_ascii=False, indent=2) + '\n')
    (output / 'metadata-excerpts.txt').write_text(text[start:end] + '\n')
    manifest = json.loads((output / 'manifest.json').read_text())
    manifest['binary'] = 'research/rm-reunpack-2026-10-14/native/libil2cpp.so'
    manifest['captureTool'] = 'royal-match-unity/Tools/capture_native_methods.py'
    for row in manifest['methods']:
        row['listingSha256'] = hashlib.sha256((output / row['file']).read_bytes()).hexdigest()
    manifest['supplementaryFiles'] = {name: hashlib.sha256((output / name).read_bytes()).hexdigest()
                                      for name in ['catalog.json', 'metadata-excerpts.txt']}
    (output / 'manifest.json').write_text(json.dumps(manifest, ensure_ascii=False, indent=2) + '\n')
    print(f"{len(constants)} IDs / {data['normalizedThemeCount']} name themes; {len(methods)} indexed methods")

if __name__ == '__main__':
    main()
