# JitKit SbATU POC
SideStore-based Application Testing Unit

## Info
### What's this?

this is a proof-of-concept iOS application that automates JIT-acceleration with SideStore using the SideStore:// URL scheme with the Feb 10 2023 pull-request build

### Requirements

- iOS 14.0 or later
- SideStore (2/10/23 pull-request build or later) and the JITtable app :trollface:

### Notes

- The SideStore URL scheme is still considered an experiment, and at this time, the URL scheme could change with every new pull-request build, nightly build, ETC. I can't guarantee that this PoC will work with every latest SideStore version. If it doesn't, I'll try to update it ASAP!

## Building the PoC IPA
#### Pre-built IPAs are available in the "Releases" tab
- This project does not require any extra dependencies, so it can be built right inside of Xcode
