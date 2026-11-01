# Building Windows 7e

## Host requirements

To generate the ISO, run the build on an Ubuntu or Debian system with a working package manager and sufficient disk space.

Recommended:

- x86_64 host
- 20 GB free disk space for build work
- internet access for package downloads
- root or sudo access

## Install build dependencies

```bash
sudo apt-get update
sudo apt-get install -y \
  live-build debootstrap squashfs-tools xorriso grub-pc-bin \
  grub-efi-amd64-bin mtools dosfstools curl ca-certificates \
  tasksel apt-utils
```

## Build the ISO

```bash
./build/scripts/build-iso.sh
```

## Expected output

```text
build/iso/output/Windows-7e-x86_64-v0.1.0.iso
```

## Notes

This is a reproducible Linux ISO workflow for a Debian-based Windows 7e live image. The build is intentionally conservative and avoids claiming a fully finished OS when validation has not been run.

## Validation workflow

After building, validate in a VM such as QEMU/KVM using:

```bash
qemu-system-x86_64 -m 4G -drive file=build/iso/output/Windows-7e-x86_64-v0.1.0.iso,format=raw,if=virtio -boot d
```

Real verification includes:

- ISO boots
- graphical session starts
- native app can launch
- file manager opens
- Start menu launches
- basic shutdown works

## Current implementation status

The build pipeline is structured as a production-quality first milestone, but must be executed on a proper Debian-based host to confirm full bootability.
