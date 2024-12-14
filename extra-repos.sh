#chaotic: Pedro Henrique Lara Campos
pacman-key --recv-key 3056513887B78AEB --keyserver keyserver.ubuntu.com
pacman-key --lsign-key 3056513887B78AEB
pacman -U 'https://cdn-mirror.chaotic.cx/chaotic-aur/chaotic-keyring.pkg.tar.zst'
pacman -U 'https://cdn-mirror.chaotic.cx/chaotic-aur/chaotic-mirrorlist.pkg.tar.zst'

#alhp: Giovanni Harting
pacman-key --recv-key 48998B4039BED1CA --keyserver keyserver.ubuntu.com
pacman-key --lsign-key 48998B4039BED1CA
