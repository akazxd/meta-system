# meta-system
Important packages for a functioning install

```bash
pactrsap -iM /mnt base base-devel git
arch-chroot /mnt
su $NEW_USER
cd ~
git clone https://aur.archlinux.org/paru.git
pushd paru && makepkg -si && popd
git clone https://github.com/akazxd/meta-system.git
source meta-system/extra-repos.sh
cd meta-system && paru -Bi .
```
