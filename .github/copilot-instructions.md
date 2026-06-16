# Copilot review instructions for AdvPL/TLPP

When reviewing pull requests in this repository:

- Focus on security, compliance, and correctness before style.
- Flag critical issues in AdvPL/TLPP sources such as:
  - `StaticCall(...)` in TLPP code
  - `#include "tlpp-core.th"` inside `.prw` or `.prx` files
  - `ConOut(...)`, `OutErr(...)`, and `IIF(...)` when a safer pattern exists
  - missing `#include "tlpp-core.th"` in `.tlpp` sources
  - unsafe changes to queries, filters, or permissions
- Prefer current documented TOTVS patterns when the code clearly needs them.
- If a pattern or API is uncertain, say so instead of guessing.
- Leave comments only for findings that matter to security, compliance, compatibility, or maintainability.

This repository uses GitHub Actions and CODEOWNERS as the blocking gate. Copilot review comments are advisory and help the tech lead validate the PR.
