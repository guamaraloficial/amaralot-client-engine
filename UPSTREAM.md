# Source origin and unresolved provenance

Intended upstream: https://github.com/mehah/otclient (OTClient Redemption), derived
from https://github.com/edubart/otclient . The supplied archive contains the MIT
license and contributors' notices, which are retained.

This candidate was recovered from the owner-supplied OTC-Redemptiom.rar archive.
The original upstream commit was not recoverable from the supplied gitinfo.h,
which only identifies a development branch. Do not invent an upstream commit or
claim that this candidate is the exact source of the current production binary.

Local source changes: Windows version/product metadata; optional test default
disabled because this engine-only candidate does not include upstream tests;
portable GLEW imported target; explicit Texture include needed without unity
build; dependency selection and a manual review build workflow.

Before sponsored signing, establish the upstream/fork history and confirm the
Foundation's rules for unsigned upstream projects. A successful local build does
not by itself establish eligibility. The archived dependencies also require a
fresh build in the intended CI repository.
