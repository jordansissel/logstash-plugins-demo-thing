FROM java:8

RUN mkdir /opt/kibana
WORKDIR /opt/kibana
RUN wget https://download.elastic.co/kibana/kibana/kibana-4.1.1-linux-x64.tar.gz

RUN tar -zxf kibana-4.1.1-linux-x64.tar.gz --strip-components 1

RUN sed -i -e 's@localhost:9200@elasticsearch:9200@g' /opt/kibana/config/kibana.yml

RUN true

CMD [ "/opt/kibana/bin/kibana" ]
