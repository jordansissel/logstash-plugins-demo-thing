FROM java:8

RUN mkdir /opt/logstash
WORKDIR /opt/logstash 
RUN wget https://download.elastic.co/logstash/logstash/logstash-1.5.3.tar.gz

RUN tar -zxf logstash-1.5.3.tar.gz --strip-components=1
RUN bin/plugin install logstash-input-http_poller
RUN true

CMD [ "/opt/logstash/bin/logstash", "-e", "input { http_poller { interval => 5 urls => { \"google\" => \"https://www.google.com/\" } } } output { stdout { codec => rubydebug { metadata => true } } }" ]
