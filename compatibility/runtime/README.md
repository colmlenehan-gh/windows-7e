# Windows Compatibility Runtime (SCR)

This directory documents the compatibility runtime architecture for Windows 7e.

## Purpose

Provide packaged support for Windows EXE launch, installer integration, and app profile management in a Linux environment.

## Components

- runtime bootstrap
- prefix manager
- compatibility profiles
- launcher integration
- crash logging
- uninstall tracking

## Packaging model

The runtime will be included as a standard Debian package or a controlled project package stream, not as a hidden manual setup tool.

## Status

The repository sets up the architecture and requirements. Detailed implementation will proceed after the ISO build is validated.
