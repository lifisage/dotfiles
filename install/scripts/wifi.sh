nmcli con modify Arthur ipv4.ignore-auto-dns yes
nmcli con modify Arthur ipv4.dns "1.1.1.1,1.0.0.1"
nmcli con down Arthur
nmcli con up Arthur