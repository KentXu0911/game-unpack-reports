#!/usr/bin/env python3
"""RM38174 DynamicDifficultyInventory decoder. No network or account access.
Bit numbers are zero-based, endpoints inclusive. Unknown bits are preserved.
update_long matches native helper for these ranges, including input overflow;
it deliberately does NOT clamp value to the field width.
"""
import argparse, json
MASK64=(1<<64)-1
FIELDS={'tryCount':(1,12),'deltaRaw':(13,17),'lastUpdatedSection':(18,34),'currentLevel':(35,49)}
def extract_long(state, start, end):
    return (state>>start)&((1<<(end-start+1))-1)
def update_long(state, value, start, end):
    # ARM64 sign-extends int32 value before shifting. No field-width mask.
    value=(value&0xffffffff)-(1<<32) if value&0x80000000 else value&0xffffffff
    mask=((1<<(end-start+1))-1)<<start
    return ((state&~mask)|(value<<start))&MASK64
def decode(state):
    state &= MASK64
    values={k:extract_long(state,*bits) for k,bits in FIELDS.items()}
    raw=values['deltaRaw'];values['deltaMove']=raw-10 if raw else 0
    known=sum(((1<<(hi-lo+1))-1)<<lo for lo,hi in FIELDS.values())
    return dict(unsignedState=str(state),hex=f'0x{state:016x}',**values,uninterpretedBits=hex(state&~known))
if __name__=='__main__':
    ap=argparse.ArgumentParser(description=__doc__);ap.add_argument('state',type=lambda s:int(s,0));a=ap.parse_args()
    print(json.dumps(decode(a.state),ensure_ascii=False,indent=2))
