#!/bin/bash

efibootmgr -u | grep -P 'Boot.+\s+Arch Linux\s+HD' | cut -c5-8 | xargs -Ix \
 efibootmgr --delete-bootnum --unicode --bootnum x

boot=$(lsblk -flp | grep -e vfat | grep boot | cut -f1 -d" ")
efibootmgr --create \
 --disk ${boot::-2} --part ${boot: -1} \
 --label 'Arch Linux' \
 --loader /vmlinuz-linux-xanmod-edge-x64v3 \
 --unicode 'root=$(grep "\s/\s" /etc/fstab | cut -f1) initrd=\amd-ucode.img initrd=\booster-linux-xanmod-edge-x64v3.img quiet loglevel=3 systemd.show_status=auto rd.udev.log_level=3 nowatchdog nmi_watchdog=0 nvidia_drm.modeset=1 nvidia.NVreg_RegistryDwords=EnableBrightnessControl=1 nvidia.NVreg_UsePageAttributeTable=1'

# eg: boot=/dev/nvme0n1p6 ${boot::-2}=/dev/nvme0n1  ${boot: -1}=6
