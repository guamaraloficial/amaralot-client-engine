# Privacy notice - engine review candidate

Updated: 2026-10-18.

## Scope

This notice describes the open-source C++ engine review candidate in this
repository, including the build from commit
40d13e4f15d80be015c314c2abb7538fae52c991.
It is a description of reviewed capabilities, not a claim that the separately
distributed AmaralOT game client or server has completed a privacy audit.
Private game modules, artwork, account databases and server services are not
included in this repository or the proposed engine signing scope.

## Network and authentication data

The engine provides login/game networking, HTTP/HTTPS and WebSocket facilities.
The runtime configuration and modules select destinations and request contents.
Login facilities can send an account identifier or email, password and
authentication token to the configured login service; game connections exchange
character and gameplay data. Contacted services can observe the connection's
source IP and protocol/request metadata.

The source supports both HTTPS and an optional HTTP login fallback. This notice
does not promise encryption for every configuration. Operators must review their
actual endpoints, transport settings and modules before distributing a complete
game client.

Relevant code:
- [HTTP login](src/framework/net/httplogin.cpp)
- [HTTP/WebSocket facilities](src/framework/net/protocolhttp.cpp)
- [Game protocol](src/client/protocolgame.cpp)

## Local files and identifiers

Depending on runtime configuration, the engine can read/write settings, game
resources, cached data, screenshots and diagnostic logs. The Windows crash
handler writes a local crash report containing build/exception information and
a stack trace.

Some debug/login helper paths print request or response contents. Do not assume
logs are automatically redacted; review them before sharing and never post
credentials, authentication tokens or private gameplay/account information.

The cryptography API can generate a random UUID and expose an encrypted
representation to Lua. That capability alone does not establish whether a
particular runtime stores or transmits it; the relevant modules must be reviewed.

Relevant code:
- [Logging](src/framework/core/logger.cpp)
- [Windows crash reporting](src/framework/platform/win32crashhandler.cpp)
- [UUID/cryptography helpers](src/framework/util/crypt.cpp)

## Other software and services

Game modules and server operators determine any additional data collection,
recipients, retention periods and account/privacy controls. They need their own
accurate user-facing policy; this engine notice does not replace it.
GitHub separately provides repository hosting and CI/artifact services under
its own policies.

## Signing and review status

No SignPath sponsorship or trusted signature has been obtained.
This notice does not assert that all SignPath privacy or eligibility requirements
have been met. Upstream provenance, the separately distributed runtime scope,
maintainer/MFA declarations and complete end-user data handling remain subject
to clarification and review before a production signing application.

For repository-scope questions, contact the repository owner
[guamaraloficial](https://github.com/guamaraloficial).
Do not include passwords, tokens or private account records in public issues.
