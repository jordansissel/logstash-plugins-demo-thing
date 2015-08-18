FROM java:8

RUN mkdir /opt/elasticsearch
WORKDIR /opt/elasticsearch
RUN wget https://download.elastic.co/elasticsearch/elasticsearch/elasticsearch-1.7.1.tar.gz

RUN tar -zxf elasticsearch-1.7.1.tar.gz --strip-components 1
RUN bin/plugin -i elasticsearch/license/latest
RUN bin/plugin -i elasticsearch/watcher/latest 

CMD [ "bin/elasticsearch" ]
