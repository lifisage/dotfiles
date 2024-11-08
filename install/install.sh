if command -v yay > /dev/null; then
    echo "yay is available";
else
    git clone https://aur.archlinux.org/yay.git
    cd yay
    makepkg -si
    cd ..
    rm -rf yay
fi

sudo pacman -S --needed --noconfirm figlet

cd packages
chmod a+x *

./system.sh
./desktop.sh
./user.sh
./fonts.sh

