FROM java:8

RUN mkdir /opt/logstash
WORKDIR /opt/logstash 
RUN wget https://download.elastic.co/logstash/logstash/logstash-1.5.3.tar.gz

RUN tar -zxf logstash-1.5.3.tar.gz --strip-components 1
RUN bin/plugin install logstash-input-http

COPY ./pager.conf.in ./pager.conf.in
COPY ./run-logstash.sh ./run-logstash.sh

RUN true

CMD [ "sh", "-c", "cd /opt/logstash; sh run-logstash.sh" ]
