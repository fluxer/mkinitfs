## Features

* Minimal software requirements
* UUID/Label boot device support
* Simple, extendable via hooks
* Creates images which GRUB can detect without patching it
* Not tide to specific init system

## Requirements

* Busybox
* File
* Standard C library
* e2fsprogs

## Notes

* Only GNU libc and musl are currently supported
* Prefer building the Busybox binary as static
* e2fsprogs is optional but required for checking filesystems other than what Busybox supports (ext2 only)
