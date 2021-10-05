#!/bin/sh

. scripts/prepare_vroot_functions.sh

PACKAGES_MINIMAL="$PACKAGES_MINIMAL bind916 bind-tools"
PACKAGES_MINIMAL=`echo $PACKAGES_MINIMAL | sed 's/quagga/frr7/'`
PACKAGES_COMMON=`echo $PACKAGES_COMMON | sed 's/lsof//'`
PACKAGES="$PACKAGES_MINIMAL $PACKAGES_COMMON isc-dhcp44-server isc-dhcp44-client isc-dhcp44-relay \
    sylpheed xorp netsurf midori firefox wireshark gnome-themes-extra sakura vte3 gdk-pixbuf2 apache24 \
    php74 mod_php74 php74-mysqli php74-pdo_mysql php74-mbstring php74-zlib php74-curl php74-gd php74-json \
    php74-extensions php74-xmlrpc php74-bz2 php74-gettext php74-openssl php74-opcache php74-pear \
    php74-soap php74-imap php74-fileinfo php74-pecl-mcrypt openvpn easy-rsa net-snmp"
#PACKAGES=`echo $PACKAGES | sed 's/scapy/py37-scapy/'`
PACKAGES=`echo $PACKAGES | sed -e 's/scapy/py37-scapy/' -e 's/xorp//'`

checkArgs $*

# Start installation
mkdir -p $WORKDIR
cd $WORKDIR
echo -n "" > $LOG

if [ $mini -eq 1 ]; then
    PKGS=${PACKAGES_MINIMAL}
else
    PKGS=${PACKAGES}
fi

if [ $offline -eq 0 ]; then
    fetchBaseOnline
fi

prepareUnionfs
populateFs

preparePackagesPkg
chroot $VROOT_MASTER /bin/sh -c 'env ASSUME_ALWAYS_YES=YES pkg bootstrap' >> $LOG 2>&1
checkPkgVersion
installPackagesPkg

if [ $mini -eq 0 ]; then
    log "OUT" "Installing additional tools..."
    sh $IMUNESDIR/scripts/install_usr_tools.sh >> $LOG 2>&1
    log "OUT" "Installing additional tools done."
fi

#configQuagga
#configXorp

mkdir $VROOT_MASTER/usr/local/etc/snmp
mkdir $VROOT_MASTER/usr/local/etc/openvpn
mkdir $VROOT_MASTER/usr/local/etc/quagga
configQuagga

wiresharkGUIfix

cleanUnnecessary

log "OUT" "Installation successfully finished. Check the log for more \
information: $LOG"
