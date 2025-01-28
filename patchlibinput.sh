git clone https://gitlab.freedesktop.org/libinput/libinput.git
rm libinput/src/evdev-mt-touchpad.c
cp evdev-mt-touchpad.c libinput/src
cd libinput
meson builddir --prefix=/usr
ninja -C builddir
sudo ninja -C builddir install
echo "Patched libinput. Reboot / Log out for it to apply"
echo "Add libinput to IgnorePkg to your pacman config to prevent it from updating"
