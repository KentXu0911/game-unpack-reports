#!/usr/bin/env python3
"""Validate local file links, HTML anchors and assets without dependencies."""

from collections import Counter
from html.parser import HTMLParser
from pathlib import Path
from urllib.parse import unquote, urlsplit


ROOT = Path(__file__).resolve().parents[1] / "site"


class Document(HTMLParser):
    def __init__(self):
        super().__init__()
        self.ids = Counter()
        self.links = []

    def handle_starttag(self, tag, attrs):
        attributes = dict(attrs)
        if attributes.get("id"):
            self.ids[attributes["id"]] += 1
        for key in ("href", "src"):
            if attributes.get(key):
                self.links.append(attributes[key])


def main():
    documents = {}
    errors = []
    checked = 0
    for path in sorted(ROOT.rglob("*.html")):
        document = Document()
        document.feed(path.read_text(encoding="utf-8"))
        documents[path] = document
        for anchor, count in document.ids.items():
            if count > 1:
                errors.append(f"{path.relative_to(ROOT)}: duplicate id {anchor!r}")

    if ROOT / "index.html" not in documents:
        errors.append("Missing site/index.html")

    for path, document in documents.items():
        for link in document.links:
            url = urlsplit(link)
            if url.scheme or url.netloc:
                continue
            checked += 1
            label = f"{path.relative_to(ROOT)}: {link}"
            if url.path.startswith("/"):
                errors.append(f"{label}: use a relative path for GitHub Pages")
                continue
            target = (path.parent / unquote(url.path)).resolve() if url.path else path
            if not target.is_relative_to(ROOT):
                errors.append(f"{label}: outside site directory")
                continue
            if target.is_dir():
                target /= "index.html"
            if not target.is_file():
                errors.append(f"{label}: missing file")
            elif url.fragment and target in documents:
                if unquote(url.fragment) not in documents[target].ids:
                    errors.append(f"{label}: missing anchor")

    if errors:
        raise SystemExit("\n".join(errors))
    print(f"OK: {len(documents)} HTML pages, {checked} local links/assets checked")


if __name__ == "__main__":
    main()
