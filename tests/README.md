# Test strategy

Testing for the first milestone is mainly a VM-driven smoke-check process.

## Required validation

- ISO boots successfully
- graphical session reaches login or desktop
- native Linux app launches
- file manager opens
- Start menu opens
- terminal launches
- basic shutdown works

## Support tools

- QEMU/KVM
- virt-manager
- libvirt
- a disposable virtual disk

## Execution notes

These tests must be executed on a Debian or Ubuntu host capable of running virtual machines. This environment is not yet capable of verifying bootable ISO execution, so the test plan is provided as the real production workflow to be run later.
