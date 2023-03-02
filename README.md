# JitKit SbATU POC
SideStore-based Application Testing Unit

## Info
### What's this?

this is a proof-of-concept iOS application that automates JIT-acceleration with SideStore using the SideStore:// URL scheme with the Feb 10 2023 pull-request build

### Requirements

- iOS 14.0 or later (iOS 16.0 or later for v2.0.0)
- SideStore 3/1/23 pull-request build or later for v2.1.0, PRB 2/11/23 or later for v1.1.0 and PRB 2/10/23 or later for v1.1.0
- the JITtable app :trollface:

### Notes

- The SideStore URL scheme is still considered an experiment, and at this time, the URL scheme could change with every new pull-request build, nightly build, ETC. I can't guarantee that this PoC will work with every latest SideStore version. If it doesn't, I'll try to update it ASAP!

## Building the IPA
- Pre-built IPAs are available in the "Releases" tab
- This project does not require any extra dependencies, so it can be built right inside of Xcode
