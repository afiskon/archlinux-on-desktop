#!/bin/sh

set -e

umount /home/eax
cryptsetup luksClose eax_home
losetup -d /dev/loop0
