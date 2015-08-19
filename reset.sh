#!/bin/bash

elasticsearch=$(docker inspect elasticsearch | grep '"IPAddress"' | awk -F\" '{print $4}')
watch_name="http_pager"

curl -XDELETE "http://${elasticsearch}:9200/_watcher/watch/${watch_name}"
curl -XDELETE "http://${elasticsearch}:9200/logstash-*/"
