#!/bin/sh

cp /docker-entrypoint.d/records.json /mnt/geonetwork_data/config/index/records.json
#cp /docker-entrypoint.d/features.json /mnt/geonetwork_data/config/index/features.json
echo ""
echo "Update records.json."
