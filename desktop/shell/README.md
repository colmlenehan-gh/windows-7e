# Windows 7e shell and desktop architecture

The project will build a Windows 7–style desktop based on KDE Plasma with a real shell customization layer.

## Goals

- Start menu with Windows 7–style layout and program ordering
- taskbar with pinned app behavior, grouped windows, and system tray
- desktop icons and file associations resembling Windows Explorer behavior
- color palette and translucency tuned to Aero-inspired style
- reduced-effects fallback mode for older hardware

## Decoupled approach

The shell will be layered as:

1. KDE Plasma base desktop
2. custom `plasmashell` theming and shortcuts
3. custom start-menu launcher integration
4. Win7e taskbar controls and icon layout policy
5. Explorer-style file-manager wrapper and file associations

## Notable risks

- a full Windows 7 recreation in a Linux compositor is not a one-day theme task
- shell fidelity must be built around real integration and usability, not only screenshot mimicry
- old Windows 7 features like Live Thumbnails and Jump Lists require careful engineering

## Immediate milestone

The repository currently sets up the system architecture and build tooling; the desktop shell work will be the next major engineering phase after the ISO pipeline is validated.
