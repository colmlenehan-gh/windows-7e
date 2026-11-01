# Windows 7e contribution guide

Contributions are welcome if they support real engineering work toward a maintainable Linux distribution.

## Principles

- Prefer real buildable code and reproducible configuration over mock-ups
- Respect open-source licensing requirements
- Keep the system maintainable and Debian-native
- Favor upstream packages and mature dependencies over ad hoc rewrites
- Do not claim bootable or working results without validation

## Areas of contribution

- Debian live-build configuration
- KDE Plasma theming and shell behavior
- Installer integration and boot customization
- Security and update policy
- Windows runtime integration
- System tooling and diagnostics
- Test automation and VM validation

## Workflow

1. Open an issue or discuss the change before large refactors.
2. Keep changes small and reviewable.
3. Document any dependency or build changes.
4. Ensure scripts are reproducible and idempotent.
5. Validate in a Debian-based environment when possible.

## Coding standards

- Prefer shell scripts with `set -euo pipefail`
- Document commands and expected output
- Avoid unreviewed binary blobs or copyrighted assets
- Track license metadata for all bundled assets

## Pull request policy

PRs should include:

- a brief technical summary
- the rationale for the change
- validation performed
- any follow-up work required

## Security

Do not add network or system behavior that bypasses user consent or package integrity.

## Scope caution

This project is an operating-system engineering effort. Do not submit speculative visual mock-ups or a non-functional front-end without a real build or runtime path.
