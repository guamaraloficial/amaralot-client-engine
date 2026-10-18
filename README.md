# AmaralOT client engine - review candidate

This is a public source review candidate, not an approved or signed player release.
It contains the C++ engine recovered from the supplied OTClient Redemption source
archive. The archive's executable is different from the executable currently
distributed by AmaralOT. Compatibility must be established before replacement.

The original MIT license, copyright notices and AUTHORS are retained. This tree
does not include accounts, databases, server settings, credentials, player data,
game modules, maps, sprites or the production client's encrypted/obfuscated Lua.
The private source archive, precompiled dependencies and compiler are excluded.

## Purpose and origin

The C++ engine provides rendering, UI, networking and Lua integration for a
tile-based online RPG client. Runtime game scripts and artwork are separate;
this repository is the engine source review scope only.
It is an attributed source derivative of [OTClient Redemption](https://github.com/opentibiabr/otclient).
The exact upstream archive revision is unresolved; see [UPSTREAM.md](UPSTREAM.md).

## Build

Windows x64 with MSVC 2026, CMake and the dependency versions pinned in vcpkg.json.
The workflow in .github/workflows/windows-review.yml can run manually or on
engine changes pushed to main. It has no signing or release deployment steps.

A fresh Windows build and offline engine integration checks have passed.
See [BUILD_REVIEW.md](BUILD_REVIEW.md) for the CI run, source commit, checksums,
dependency inventory and the limits of the review.

The isolated local build uses the archived dependency tree only to establish
feasibility; it is not a substitute for a fresh dependency build in CI.

## Signing status

No public certificate has been obtained. CompanyName/ProductName metadata is not
an Authenticode signature. See CODE_SIGNING.md for the remaining eligibility work.
