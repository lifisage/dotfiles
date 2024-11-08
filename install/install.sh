if command -v yay > /dev/null; then
    echo "yay is available";
else
    git clone https://aur.archlinux.org/yay.git
    cd yay
    makepkg -si
    cd ..
    rm -rf yay
fi

sudo pacman -S --needed --noconfirm figlet gum

cd packages
chmod a+x *

./system.sh
./desktop.sh
./fonts.sh

if gum confirm "Do you want to install user apps";then
    ./user.sh
fi

cd ..

./services.sh

#inits

./pywal.sh
