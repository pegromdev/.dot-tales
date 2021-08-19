#!/usr/bin/env bash
echo -e "\nSeting up time\n$HR"
timedatectl set-ntp true

echo -e "\nInstalling prereqs...\n$HR"
pacman -S --noconfirm btrfs-progs

echo -e "\nFormating Disk...\n$HR"
# Boot 
mkfs.fat -F32 -L boot /dev/sda1
# Swap
mkswap -L swap /dev/sda2
swapon /dev/sda2
# btfs root
mkfs.btrfs -L arch -n 32k /dev/sda3

echo -e "\nMounting BTRFS subvolumes...\n$HR"
btrfs su cr /mnt/@
btrfs su cr /mnt/@home
btrfs su cr /mnt/@var
btrfs su cr /mnt/@opt
btrfs su cr /mnt/@tmp
btrfs su cr /mnt/@.snapshots
umount /mnt

mount -o noatime,commit=120,compress=zstd,space_cache,subvol=@ /dev/sda3 /mnt
# creating folders to mount the other subvolumes at
mkdir /mnt/{boot,home,var,opt,tmp,.snapshots}

mount -o noatime,commit=120,compress=zstd,space_cache,subvol=@home /dev/sda3 /mnt/home
mount -o noatime,commit=120,compress=zstd,space_cache,subvol=@opt /dev/sda3 /mnt/opt
mount -o noatime,commit=120,compress=zstd,space_cache,subvol=@tmp /dev/sda3 /mnt/tmp
mount -o noatime,commit=120,compress=zstd,space_cache,subvol=@.snapshots /dev/sda3 /mnt/.snapshots
mount -o subvol=@var /dev/sda3 /mnt/var

echo -e "\nMounting boot partition...\n$HR"
mount /dev/sda1 /mnt/boot


echo "-- Installing Arch on Main Drive       --"
pacstrap /mnt base base-devel linux-lts linux-lts-headers linux-firmware man info man-db man-pages texinfo gvim intel-ucode btrfs-progs sudo --noconfirm --needed

echo "-- Post install main configuration run...     --"
# Generate fstab
genfstab -U /mnt >> /mnt/etc/fstab
cat /mnt/etc/fstab
# Chroot into install
arch-chroot /mnt
# Seting timezone
ln -sf /usr/share/zoneinfo/America/Montevideo /etc/localtime
timedatectl --no-ask-password set-timezone America/Montevideo
# Sync hardware and system clock
hwclock --systohc
# Setting System Locale
sed -i 's/^#en_US.UTF-8 UTF-8/en_US.UTF-8 UTF-8/' /etc/locale.gen
localectl --no-ask-password set-locale LANG="en_US.UTF-8" LC_COLLATE="" LC_TIME="en_US.UTF-8"
locale-gen
echo LANG=en_US.UTF-8 >> /etc/locale.conf
#Hostname
echo arch-Xps >> /etc/hostname

echo "-- Network Setup almost done...        --"
pacman -S networkmanager --noconfirm --needed
systemctl enable --now NetworkManager

echo "--      Set Password for Root       --"
echo "Enter password for root user: "
passwd

echo "-- Please MANUALLY edit  btrfs module to mkinitcpio inside /etc/mkinitcpio.conf ( MODULES=btrfs )!!! --"
# Now to recreate the image
mkinitcpio -p linux-lts
# Grub
grub-install --target=i386-pc /dev/sda
grub-mkconfig -o /boot/grub/grub.cfg

# Create user
useradd -mG wheel niko
passwd niko

# Now to give usersfrom the wheel group full sudo access:( This I gonna do it with root stow files )

# Enabling service and exit
systemctl enable NetworkManager
## Exiting the installation
#exit
## Unmounting all drives
#umount -l /mnt
## If you're dual booting/installing on a device
#reboot

