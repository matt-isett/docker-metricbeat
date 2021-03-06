#!/bin/bash

set -e

>&2 echo "DEBUG: curl elastic at http://$USER:$PASS@$HOST:9200"

until $(curl --output /dev/null --silent --head --fail http://$USER:$PASS@$HOST:9200); do
    >&2 echo '.'
    sleep 5
done

>&2 echo "elasticsearch is up - executing command"
exec sh kibana/import_dashboards.sh -url http://$USER:$PASS@$HOST:9200 -d kibana
