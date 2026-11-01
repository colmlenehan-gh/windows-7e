# Windows 7e architecture overview

## Selected distribution foundation

The distribution foundation for the first release is Debian Stable.

### Why Debian Stable

- broad hardware support and mature package repositories
- excellent UEFI support and standard Linux installer paths
- strong package integrity and security model
- predictable upgrade path and long-term maintenance
- large ecosystem for drivers, tools, and desktop packages

### Desktop environment selection

KDE Plasma is the selected desktop foundation because it provides:

- high configurability and deep theming support
- strong performance
- robust taskbar and panel customization
- compatibility with start-menu and system-tray customization patterns
- a mature desktop environment for Windows 7–inspired shell work

## Compatibility strategy

Windows application compatibility is addressed via a Debian-native, Wine-based runtime layer with a user-facing "Seven Compatibility Runtime" concept. The runtime is intentionally designed to be modular and profile-driven rather than a monolithic hack.

## Boot and installer path

The final release will target:

- x86_64 ISO for desktop systems
- UEFI and legacy BIOS support where feasible
- Debian live-build for ISO generation
- Calamares for guided installation

## Major subsystems

1. base system
   - Debian Stable
   - kernel, init system, package repositories, firmware

2. desktop shell
   - KDE Plasma
   - custom taskbar, start menu, theme, panel behavior

3. compatibility runtime
   - Wine / Wine Staging / Proton-derived components
   - per-app prefixes and startup profile detection

4. system utilities
   - file manager, task manager, updater, settings, log viewer

5. branding assets
   - original icons, wallpapers, boot animations, sounds, start orb, login images

6. automation and testing
   - reproducible ISO generation
   - smoke tests and VM validation

## Engineering principles

- build real repository artifacts
- validate actual ISO generation behavior
- keep dependencies minimal and upstream where possible
- avoid proprietary or unlicensed assets
- document known limitations honestly

## Project status

This repository currently contains the developer workflow, build configuration, and architecture documents for the first pass. Full system validation requires a real Debian live-build host and a VM runner.
