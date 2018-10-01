#!/bin/bash
echo "Content-type: text/html"
echo ''
echo "<meta http-equiv="refresh" content="1"> <!-- See the difference? -->"
echo "<pre>"
docker ps
echo "</pre></br>"
echo "<a href=\"/cgi-bin/create.sh\">Create container</a>"
