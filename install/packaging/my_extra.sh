# Install all base packages
mapfile -t packages < <(grep -v '^#' "$OMARCHY_INSTALL/my-extra.packages" | grep -v '^$')
sudo pacman -S --noconfirm --needed "${packages[@]}"
