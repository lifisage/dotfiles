if command -v yay >/dev/null; then
  echo "yay is available"
else
  git clone https://aur.archlinux.org/yay.git
  cd yay || exit
  makepkg -si
  cd ..
  rm -rf yay
fi

sudo pacman -S --needed --noconfirm figlet gum

cd packages || exit
chmod a+x *

./fonts.sh
./system.sh
./desktop.sh
./user.sh
