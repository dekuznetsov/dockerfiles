#/bin/sh

export DEBIAN_FRONTEND=noninteractive
apt update
apt install -y debootstrap docker.io
debootstrap --variant=minbase noble noble
mount -o bind /proc noble/proc
mount -o bind /dev noble/dev
mount -o bind /sys noble/sys
cat <<EOF >  /noble/etc/apt/sources.list
deb http://ports.ubuntu.com/ubuntu-ports/ noble main restricted
deb http://ports.ubuntu.com/ubuntu-ports/ noble-updates main restricted
deb http://ports.ubuntu.com/ubuntu-ports/ noble universe
deb http://ports.ubuntu.com/ubuntu-ports/ noble-updates universe
deb http://ports.ubuntu.com/ubuntu-ports/ noble multiverse
deb http://ports.ubuntu.com/ubuntu-ports/ noble-updates multiverse
deb http://ports.ubuntu.com/ubuntu-ports/ noble-backports main restricted universe multiverse
deb http://ports.ubuntu.com/ubuntu-ports/ noble-security main restricted
deb http://ports.ubuntu.com/ubuntu-ports/ noble-security universe
deb http://ports.ubuntu.com/ubuntu-ports/ noble-security multiverse
EOF

umount noble/dev
umount noble/proc
umount noble/sys
tar -C noble -c . | docker import - noble
