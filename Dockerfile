FROM phusion/baseimage:latest
MAINTAINER Tudor Golubenco <tudor@packetbeat.com>

ARG ELASTICSEARCH_VERSION

RUN apt-get update
RUN apt-get -y -q install libpcap0.8 wget
RUN apt-get install stress

ENV VERSION=${ELASTICSEARCH_VERSION} ARCH=linux-x86_64 EXTENSION=tar.gz
ENV FILENAME=metricbeat-${VERSION}-${ARCH}.${EXTENSION}

RUN wget https://download.elastic.co/beats/metricbeat/${FILENAME}
RUN tar zxvf ${FILENAME}

WORKDIR metricbeat-${VERSION}-${ARCH}
ADD metricbeat.yml metricbeat.yml
COPY wait-for-elastic.sh wait-for-elastic.sh
COPY import_dashboards.sh kibana/import_dashboards.sh

RUN chmod 0700 wait-for-elastic.sh

CMD ["./metricbeat", "-e", "-c","metricbeat.yml", "-d", "publish"]


