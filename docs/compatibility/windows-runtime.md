# Windows runtime integration plan

## Goal

Allow Windows EXE files to launch with minimal friction while preserving Linux security principles.

## Compatibility stack

The planned runtime stack is:

- Wine or Wine Staging as the primary compatibility layer
- Proton components where game or DXVK support is needed
- DXVK and VKD3D-Proton for Vulkan and Direct3D translation
- Mono/Gecko for legacy .NET and web control needs
- per-app prefix management and profile selection

## Design approach

The project is intentionally not trying to emulate a full Windows installer system. Instead it provides a Linux-native compatibility enclosure that behaves like a Windows 7 environment.

### Runtime components

- EXE association manager
- prefix lifecycle creation and cleanup
- profile selector
- automatic compatibility detection
- launch logging and crash diagnostics

### Security model

Downloaded EXE files should not silently receive unrestricted access. The launch path should implement:

- trust warnings for downloaded binaries
- user confirmation on first execution
- per-application sandbox considerations
- explicit file access permissions where appropriate

## Windows 7e runtime naming

The runtime may be delivered under the internal name `Seven Compatibility Runtime` (SCR) if it remains an upstream-compatible packaging layer, rather than a fork for branding alone.

## Limitations

Some Windows software will remain incompatible due to unsupported kernel drivers, anti-cheat systems, Microsoft Store requirements, or modern Windows-only APIs.

The project must document these limitations rather than pretend they are solved.
