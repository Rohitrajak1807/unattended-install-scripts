# auto install packages using pacman

pacman -S pacman-contrib
echo "::Refreshing mirrorlist"
pacman-mirrors -f
echo "::Refreshing pacman keys"
pacman-mirrors --refresh-keys
echo "::Upgrading existing packages"
pacman -Syyu --noconfirm
echo "::Installing user packages"
pacman -S $(< ./user/packages) --needed --noconfirm