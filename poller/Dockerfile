FROM java:8

RUN mkdir /opt/logstash
WORKDIR /opt/logstash 
RUN wget https://download.elastic.co/logstash/logstash/logstash-1.5.3.tar.gz

RUN tar -zxf logstash-1.5.3.tar.gz --strip-components=1
RUN bin/plugin install logstash-input-http_poller

COPY ./poller.conf ./poller.conf
RUN true

CMD [ "/opt/logstash/bin/logstash", "-f", "poller.conf" ]
