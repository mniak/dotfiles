Arch Linux Basic Installation
=============================

Outside
-------

### Pre-Install Basics
```bash 
loadkeys br
timedatectl set-ntp true
```
### Disk
```bash
parted /dev/sdx
mkfs.ext4 /dev/sdx0
mkswap /dev/sdx0

mount /dev/sdx0 /mnt
swapon /dev/sdx0
```

### Install
```bash
pacstrap /mnt base linux linux-firmware
genfstab -U /mnt >> /mnt/etc/fstab
arch-chroot /mnt
```

Inside
------

### Localization
```bash
ln -sf /usr/share/zoneinfo/America/Sao_Paulo /etc/localtime
hwclock --systohc

echo en_US.UTF-8 UTF-8 >> /etc/locale.gen
locale-gen
echo LANG=en_US.UTF-8 > /etc/locale.conf
echo KEYMAP=br > /etc/vconsole.conf

echo MYHOST > /etc/hostname
echo 127.0.0.1	localhost >  /etc/hosts
echo ::1		localhost >> /etc/hosts

```

### Users
```bash
passwd
useradd -m USER
passwd USER
```