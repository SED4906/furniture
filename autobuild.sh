#!/bin/sh
git pull
rm -f furniture_*
mkosi
sudo find /srv/http/* -ctime +3 -delete
sudo cp furniture_*.root*.*.raw /srv/http/
sudo cp furniture_*.efi /srv/http/
cd /srv/http
sha256sum -b * | sudo tee SHA256SUMS
