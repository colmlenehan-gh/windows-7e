# Windows 7e

Windows 7e is a GNU/Linux operating system project designed to recreate the familiarity and usability of Windows 7 while running on a modern, secure Linux foundation.

## Project purpose

This repository is the engineering home for a real, bootable Linux distribution named Windows 7e. The goal is to deliver:

- a Windows 7-inspired desktop environment
- a Debian-based operating system foundation
- KDE Plasma as the graphical shell foundation
- a compatibility runtime for launching Windows software
- a real ISO build and install workflow

## Current status

This repository is intentionally a real development project, not a static mock-up. It contains the architecture, build tooling, documentation, and implementation scaffolding required to build a legitimate Windows 7e distribution.

## Foundation

The selected base is:

- Debian Stable
- KDE Plasma desktop
- APT/dpkg package management
- live-build driven ISO generation

## Repository structure

- `build/` — ISO and live-image build workflow
- `desktop/` — desktop shell and window-management work
- `compatibility/` — Windows runtime and compatibility layers
- `applications/` — native tools and system utilities
- `assets/` — branding, themes, and original resources
- `docs/` — architecture, installation, security, compatibility, and licensing
- `tests/` — validation plans and VM-based smoke tests

## Build path

The intended build flow is to generate a Debian-based live ISO and validate it in a VM environment using QEMU/KVM or similar tooling.

## Important note

This repository does not claim a finished bootable release until the actual ISO has been built and validated on a real Debian-capable host. The project follows a production-style engineering workflow rather than a conceptual mock-up.

## License

This project is distributed under the MIT License unless otherwise specified in a file or subdirectory.

## Contributing

See `CONTRIBUTING.md` for contribution guidelines and engineering principles.
