# pacman preparations
pacman -S --noconfirm archlinux-keyring
pacman -S --needed --noconfirm archiso mkinitcpio-archiso
pacman-key --init
pacman-key --recv-key FBA220DFC880C036 --keyserver keyserver.ubuntu.com
pacman-key --lsign-key FBA220DFC880C036
pacman -U 'https://cdn-mirror.chaotic.cx/chaotic-aur/chaotic-keyring.pkg.tar.zst' 'https://cdn-mirror.chaotic.cx/chaotic-aur/chaotic-mirrorlist.pkg.tar.zst' --noconfirm
pacman -Sy


# enable systemd services
mkdir -p airootfs/etc/systemd/system/sockets.target.wants
ln -s /usr/lib/systemd/system/libvirtd.service airootfs/etc/systemd/system/sockets.target.wants

# mkarchiso run cmd
mkarchiso -v -w ./ -o ./out .

# rename iso
cd out
mv phantoms-arch-*-x86_64.iso phantoms-arch-x86_64.iso

      
