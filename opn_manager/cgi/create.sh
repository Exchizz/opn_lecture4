#!/bin/bash
echo "Content-type: text/html"
echo ''

echo "<pre>"
env
echo "<pre>"
# Get name of docker-compose network
NETWORK=$(docker network ls | grep opn_manager | awk '{print $2}')

echo "network is: $NETWORK</br>";

# Get unique ID of newly created container
ID=$(docker run --network $NETWORK -d opn_backend | cut -b1-12)

# Get IP of newly created container from ID
#IP=$(docker inspect --format '{{ .NetworkSettings.IPAddress }}' $ID)

echo "Container started with ID: $ID</br>"
echo "Browser will be redirected in 3 seconds..."
echo "<META HTTP-EQUIV=\"Refresh\" Content=\"3; URL=http://$HTTP_HOST/$ID/cgi-bin/welcome.sh\">"

