#!/bin/bash
echo "Content-type: text/html"
echo ''

# Get unique ID of newly created container
ID=$(docker run -d opn_backend)

# Get IP of newly created container from ID
IP=$(docker inspect --format '{{ .NetworkSettings.IPAddress }}' $ID)

echo "Container started with ID: $ID and IP: $IP</br>"
echo "Browser will be redirected in 3 seconds..."
echo "<META HTTP-EQUIV=\"Refresh\" Content=\"3; URL=http://$IP/cgi-bin/welcome.sh\">"

