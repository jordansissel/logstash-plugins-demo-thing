#!/bin/sh

sed -e "s/PAGERDUTY_API_KEY/$PAGERDUTY_API_KEY/g" pager.conf.in > pager.conf

exec bin/logstash --debug -f pager.conf
