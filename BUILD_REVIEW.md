# Windows engine build review

The fresh Windows x64 build completed successfully on 2026-10-18:
[GitHub Actions run 39168603402](https://github.com/guamaraloficial/amaralot-client-engine/actions/runs/39168603402).

- Source commit: `40d13e4f15d80be015c314c2abb7538fae52c991`.
- Artifact: `amaralot-engine-unsigned-review` (13,478,154 bytes).
- Artifact SHA-256: `5a197e549a7c9ff8f6a78806175b22619b3ae5c3d1899fe099c2a832243f7e2c`.
- Engine SHA-256: `00c3df31986a544b350514218aebae7dc2f67bc4f787b27dfcdbaec4121f256a`.
- Engine size: 7,324,672 bytes.
- Authenticode status: **NotSigned**.
- Windows product metadata: AmaralOT, version 0.1.0.0.
- Dependencies: 25 runtime DLLs, 35 copyright notices and SPDX documents, plus a fresh version inventory.
- The artifact was downloaded and its checksums matched the GitHub digest and build provenance.
- Microsoft Defender found no threats in the candidate executable during a targeted scan. This is not a security guarantee.

Offline integration checks of the freshly built engine with separate private runtime assets passed for:
- all nine Pokemon looks in four directions;
- the owned selector, statistics, evolution/PZ controls, special skills and UI cleanup;
- Store and outfit thumbnail loading, scrolling and selection.

These offline checks do not certify account login, network gameplay, hunts or performance on every player's PC.
The CI artifact is an unsigned engine review candidate, not a standalone player download.
It has not replaced the distributed AmaralOT client. No game server restart was performed.

## Provenance and signing limits

This repository is an attributed source derivative of OTClient Redemption:
[upstream](https://github.com/opentibiabr/otclient).
It was recovered from a supplied source archive; the exact upstream source revision
and its relationship to the existing production executable remain unestablished.
See [UPSTREAM.md](UPSTREAM.md).

The official upstream 4.1 OpenGL executable inspected during preparation was unsigned.
SignPath eligibility for that upstream history and for a separately distributed
game runtime must be clarified before an application makes any eligibility attestations.
No sponsorship, signing approval or trusted signature has been obtained.
