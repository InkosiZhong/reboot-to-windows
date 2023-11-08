# Reboot-to-Windows

This is a simple tool for **GRUB** users to quickly switch systems.

It makes it possible for unattended devices to switch between multiple systems using remote connections.

### Install

```sh
> sh setup.sh
```

### Usage

```sh
> r2w
### GRUB boot menu ###
1: Ubuntu
2: Advanced options for Ubuntu
3: Windows Boot Manager (on /dev/nvme0n1p1)
4: UEFI Firmware Settings

Select the index of the target system:
> 3
Selected system: Windows Boot Manager (on /dev/nvme0n1p1)
```

