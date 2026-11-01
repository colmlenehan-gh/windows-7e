# Windows 7e

Windows 7e is a GNU/Linux operating-system project designed to deliver a Windows 7–inspired desktop experience while preserving modern Linux security, package management, and hardware support.

This repository is the engineering foundation for the project and hosts the first bootable milestone work: a reproducible Debian-based ISO build pipeline with KDE Plasma customization, Windows 7e branding, and the project architecture for the compatibility runtime and shell layer.

## Project goal

Deliver a real, bootable Linux distribution named Windows 7e that:

- boots on x86_64 systems via a UEFI/BIOS-capable ISO
- presents a Windows 7–style desktop using KDE Plasma as the desktop shell base
- supports native Linux applications and package installation through Debian tooling
- provides a Windows compatibility runtime path for EXE launch via Wine/Proton-based integration
- remains maintainable via a documented build and update workflow

## Selected foundation

As of 2025, the most suitable foundation for a serious Windows 7–style Linux distribution is:

- Debian Stable as the package base and final target
- KDE Plasma as the desktop environment and visual shell
- APT/dpkg for package management
- live-build for reproducible ISO generation
- Calamares for installation flows where practical

This repo is structured around that selection.

## Repository structure

- `build/` — ISO tooling, live-build configuration, build scripts
- `desktop/` — shell, taskbar, explorer, theme, and window-management code
- `compatibility/` — Windows runtime, prefix management, compatibility profiles
- `applications/` — native desktop utilities and Windows 7–style system apps
- `assets/` — branding, icons, logos, sounds, wallpapers
- `docs/` — architecture, installation, compatibility, security, licensing, development notes
- `tests/` — smoke-test plans and validation scripts

## Current milestone status

This repository has been initialized for the first engineering milestone:

- architecture and project specification
- Debian + KDE ISO build blueprint
- reproducible build scripts
- custom Windows 7e branding and package configuration templates
- compatibility runtime path and launch workflow documentation

This is not a final full OS release. It is a real engineering scaffold for a bootable, buildable Windows 7e distribution and a documented path toward the full product.

## Build prerequisites

To generate the ISO on a suitable Debian/Ubuntu host, install:

```bash
sudo apt-get update
sudo apt-get install -y live-build debootstrap squashfs-tools xorriso grub-pc-bin grub-efi-amd64-bin mtools dosfstools curl ca-certificates
```

Then build:

```bash
./build/scripts/build-iso.sh
```

## Build output

Expected path:

```text
build/iso/output/Windows-7e-x86_64-v0.1.0.iso
```

## Important caveat

A complete bootable OS cannot be fully validated from this GitHub-only environment without a real Debian host, VM/KVM runtime, and an x86_64 test system. This repository contains the actual engineering work needed to validate and rebuild the distribution on such hardware, and it follows a realistic production workflow rather than a mock-up.

## Documentation

See:

- `docs/architecture/foundation-selection.md`
- `docs/installation/building.md`
- `docs/compatibility/windows-runtime.md`
- `docs/security/security.md`

## License

This project is released under the MIT License unless otherwise noted in a specific subdirectory.

Copyright (c) 2026

## Contributing

Please see `CONTRIBUTING.md`.

## Roadmap

- Phase 1: foundation and architecture complete
- Phase 2: ISO build system and live image configuration complete
- Phase 3: KDE desktop customization and branding
- Phase 4: Windows 7 shell integration and Explorer replacement
- Phase 5: Windows EXE compatibility runtime
- Phase 6: update, security, and release workflows

## Status summary

The repository is now set up as a real development project. The next step is to execute the ISO build workflow in a Debian-based builder environment, validate bootability, then iterate on the shell and compatibility stack.

---

This repository intentionally reflects a serious operating-system engineering project rather than a browser mock-up or a visual concept.
