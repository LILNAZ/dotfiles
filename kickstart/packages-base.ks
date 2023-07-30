%packages
# Main OS
@^minimal-environment
glibc-all-langpacks
kernel
kernel-modules
kernel-modules-extra

# EFI
shim
shim-ia32
shim-x64
grub2
grub2-efi
grub2-efi-ia32
grub2-efi-ia32-cdboot
grub2-efi-x64
grub2-efi-x64-cdboot
efibootmgr

#
# Misc. dependencies
#
aajohan-comfortaa-fonts
glibc-all-langpacks
newt
zenity


#
# xorg
#
xorg-x11-server-common
xorg-x11-server-Xorg
xorg-x11-xinit
glx-utils
xorg-x11-xauth
plymouth-system-theme
%end


#
# Fonts
#
dejavu-sans-fonts
dejavu-sans-mono-fonts
dejavu-serif-fonts
gnu-free-fonts-common
gnu-free-mono-fonts
gnu-free-sans-fonts
gnu-free-serif-fonts
fontawesome-fonts

#
# drivers
#
libinput
xorg-x11-drv-libinput
xorg-x11-drv-vmware
xorg-x11-drv-intel
xorg-x11-drivers
mesa-dri-drivers
mesa-vulkan-drivers
xorg-x11-drv-amdgpu
xorg-x11-drv-ati

#
# System tools
#
nano
tar
unzip