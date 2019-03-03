#!/bin/bash

apt-get install -y xfce4 task-xfce-desktop dirmngr
apt-key adv --recv-keys --keyserver keys.gnupg.net E1F958385BFE2B6E

cat << EOF > /etc/apt/sources.list.d/x2go.list
# X2Go Repository (release builds)
deb http://packages.x2go.org/debian stretch extras main
# X2Go Repository (sources of release builds)
deb-src http://packages.x2go.org/debian stretch extras main

# X2Go Repository (nightly builds)
#deb http://packages.x2go.org/debian stretch extras heuler
# X2Go Repository (sources of nightly builds)
#deb-src http://packages.x2go.org/debian stretch extras heuler
EOF

apt update
apt-get install -y x2goserver x2goserver-xsession

