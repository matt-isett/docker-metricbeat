FROM phusion/baseimage:latest
MAINTAINER Tudor Golubenco <tudor@packetbeat.com>

RUN apt-get update
RUN apt-get -y -q install libpcap0.8 wget
RUN apt-get install stress

ENV VERSION=5.0.0-alpha4 ARCH=linux-x86_64 EXTENSION=tar.gz
ENV FILENAME=metricbeat-${VERSION}-${ARCH}.${EXTENSION}

RUN wget https://download.elastic.co/beats/metricbeat/${FILENAME}
RUN tar zxvf ${FILENAME}

WORKDIR metricbeat-${VERSION}-${ARCH}
ADD metricbeat.yml metricbeat.yml

CMD ["./metricbeat", "-e", "-c","metricbeat.yml", "-d", "publish"]

