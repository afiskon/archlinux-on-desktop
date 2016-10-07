#!/bin/sh

set -e

# TODO: fsck

losetup /dev/loop0 /home/.eax
cryptsetup luksOpen /dev/loop0 eax_home
mount /dev/mapper/eax_home /home/eax
