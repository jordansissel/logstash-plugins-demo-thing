#!/bin/bash

elasticsearch=$(docker inspect elasticsearch | grep '"IPAddress"' | awk -F\" '{print $4}')
watch_name="http_pager"

curl -XPUT "http://${elasticsearch}:9200/_watcher/watch/${watch_name}" -d@watcher.json
