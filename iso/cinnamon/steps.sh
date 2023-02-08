# pacman preparations
pacman -Sy --noconfirm archlinux-keyring
pacman -S --needed --noconfirm archiso mkinitcpio-archiso

# enable systemd services
mkdir -p airootfs/etc/systemd/system/sockets.target.wants
ln -s /usr/lib/systemd/system/libvirtd.service airootfs/etc/systemd/system/sockets.target.wants

# mkarchiso run cmd
mkarchiso -v -w ./ -o ./out .

# rename iso
cd out
mv phantoms-arch-*-x86_64.iso phantoms-arch-x86_64.iso
cd ..

      
