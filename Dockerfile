FROM docker.elastic.co/elasticsearch/elasticsearch:5.2.2

MAINTAINER frekele <leandro.freitas@softdevelop.com.br>

ADD config/elasticsearch.yml /usr/share/elasticsearch/config/

USER root

#Remove X-Pack
#RUN /usr/share/elasticsearch/bin/elasticsearch-plugin remove x-pack

RUN chown elasticsearch:elasticsearch /usr/share/elasticsearch/config/elasticsearch.yml

USER elasticsearch
