#!/bin/sh
#
wget -O /tmp/subssupport_1.5.8-20200522_all.deb "https://raw.githubusercontent.com/tarekzoka/subssupport/main/subssupport_1.5.8-20200522_all.deb"

wait

apt-get update ; dpkg -i /tmp/*.deb ; apt-get -y -f install

wait

dpkg -i --force-overwrite /tmp/*.deb

wait

rm -r /tmp/subssupport_1.5.8-20200522_all.deb

wait

sleep 2;

exit 0
