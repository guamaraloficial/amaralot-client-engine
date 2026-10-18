# AmaralOT client engine - review candidate

This is a local preparation candidate, not an approved or signed public release.
It contains the C++ engine recovered from the supplied OTClient Redemption source
archive. The archive's executable is different from the executable currently
distributed by AmaralOT. Compatibility must be established before replacement.

The original MIT license, copyright notices and AUTHORS are retained. This tree
does not include accounts, databases, server settings, credentials, player data,
game modules, maps, sprites or the production client's encrypted/obfuscated Lua.
The private source archive, precompiled dependencies and compiler are excluded.

## Build

Windows x64 with MSVC 2026, CMake and the dependency versions pinned in vcpkg.json.
The workflow in .github/workflows/windows-review.yml is manual and has no signing
or publishing steps. It must be run successfully in the intended repository
before any request for sponsored signing is made.

The isolated local build uses the archived dependency tree only to establish
feasibility; it is not a substitute for a fresh dependency build in CI.

## Signing status

No public certificate has been obtained. CompanyName/ProductName metadata is not
an Authenticode signature. See CODE_SIGNING.md for the remaining eligibility work.
