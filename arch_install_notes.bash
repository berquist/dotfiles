## Arch installation notes inspired by https://ghostbin.co/paste/5ft32

# Verify boot mode
ls /sys/firmware/efi/efivars

# Connect to internet
systemctl enable --now iwd
iwctl
# See https://wiki.archlinux.org/index.php/Iwd#iwctl

# Update system clock
timedatectl set-ntp true

# Partition
lsblk

cfdisk /dev/nvme0n1

##########

### Without encryption

# -> 512M EFI system
# -> 234G Linux root (x86-64)
# -> 4G Linux swap

# Formatting the partitions
mkfs.fat -F32 /dev/nvme0n1p1
mkfs.ext4 /dev/nvme0n1p2
mkswap /dev/nvme0n1p3
swapon /dev/nvme0n1p3

# Mounting the partitions
mount /dev/nvme0n1p2 /mnt
mkdir /mnt/boot
mount /dev/nvme0n1p1 /mnt/boot

### With encryption

# -> 512M EFI system
# no need for 3rd partition since we can put /boot on the EFI partition
# -> 238G Linux LVM

mkfs.fat -F32 /dev/nvme0n1p1
cryptsetup luksFormat /dev/nvme0n1p2
cryptsetup open /dev/nvme0n1p2 cryptlvm
pvcreate /dev/mapper/cryptlvm
vgcreate vg /dev/mapper/cryptlvm
lvcreate -L 8G vg -n swap
lvcreate -l 100%FREE vg -n root
mkfs.ext4 /dev/vg/root
mkswap /dev/vg/swap
mount /dev/vg/root /mnt
swapon /dev/vg/swap
mkdir /mnt/boot
mount /dev/nvme0n1p1 /mnt/boot

##########

# The next step might be pretty slow if you don't update your
# mirrorlist...this step is just for the installation process.
pacman -Sy
pacman -S reflector
reflector --latest 5 --protocol http --sort rate --save /etc/pacman.d/mirrorlist

# Installing essential base packages
pacstrap /mnt base linux linux-firmware base-devel \
    nano \
    reflector \
    xorg xorg-apps \
    zsh \
    git ansible

# Fstab
genfstab -U /mnt >> /mnt/etc/fstab

# Chroot
arch-chroot /mnt

# Time zone
ln -sf /usr/share/zoneinfo/US/Eastern /etc/localtime
hwclock --systohc

# Locale
sed -i -E 's/#(en_US.UTF-8 UTF-8)/\1/' /etc/locale.gen
locale-gen
echo "LANG=en_US.UTF-8" >> /etc/locale.conf

# Hostname
hostname=beryllium
echo "${hostname}" > /etc/hostname
echo "127.0.0.1 localhost" >> /etc/hosts
echo "::1     localhost" >> /etc/hosts
echo "127.0.1.1   ${hostname}.localdomain  ${hostname}" >> /etc/hosts

# NetworkManager and sshd
pacman -S networkmanager networkmanager-pptp openssh zerotier-one
systemctl enable NetworkManager
systemctl enable sshd
systemctl enable zerotier-one
zerotier-cli join # <16-digit hex network id>

### If you've set up encryption...
pacman -S lvm2
nano /etc/mkinitcpio.conf
# and change
HOOKS=(base udev autodetect modconf block filesystems keyboard fsck)
# to
HOOKS=(base udev autodetect modconf block encrypt lvm2 filesystems keyboard fsck)
# save and exit
mkinitcpio -p linux

# Password
passwd

# Boot loader
pacman -S grub efibootmgr
### If you've set up encryption...
nano /etc/default/grub
# uncomment GRUB_ENABLE_CRYPTODISK=y
# add "cryptdevice=device:dmname"
###
grub-install --target=x86_64-efi --efi-directory=/boot
grub-mkconfig -o /boot/grub/grub.cfg

# CPU microcode
pacman -S intel-ucode

# Pacman config
nano /etc/pacman.conf
# Uncomment:
#  CheckSpace
#  Color
#  ILoveCandy
#  TotalDownload
#  VerbosePkgLists
# and the repo:
#  [multilib]

reflector --latest 200 --protocol http --sort rate --save /etc/pacman.d/mirrorlist

# Creating a user account
useradd -m -G wheel -s /bin/zsh eric
passwd eric
EDITOR=nano visudo
# uncomment the line ```#%wheel ALL=(ALL) ALL```
# add to bottom of file ```Defaults passwd_timeout=0```
# save and exit

# Video driver
pacman -S xf86-video-intel

# Desktop and window manager
pacman -S gnome
systemctl enable gdm

# Reboot
exit
umount -R /mnt
reboot
# All done!
