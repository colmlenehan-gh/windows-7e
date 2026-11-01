# Windows 7e application tools

The application layer contains the custom utilities needed to make the system feel like a coherent Windows 7 environment, including task manager, notepad, calculator, and system tools.

## Planned tooling

- Task Manager equivalent
- Notepad equivalent
- Calculator
- Run dialog equivalent
- System information utility
- Explorer replacement
- update manager

## Native Linux compatibility

These tools must work with real Linux processes, systemd status, and local file systems. They should not be purely decorative wrappers.

## Implementation strategy

- prefer mature open-source tools where possible
- layer Windows 7e styling on top of a real Linux backend
- keep commands and file semantics explicit and honest

## Current state

This directory is the engineering scaffold for the system utilities phase.
