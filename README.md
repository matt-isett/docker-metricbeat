
# docker-metricbeat

#Usage

### Elasticsearch
      docker run metricbeat

### Custom Endpoint

      docker run -d \
        -e HOST=elasticsearch.in.aws.com \
        -e PORT=80 \
        -e USER:elastic \
        -e PASS:changeme \
        -h metricDockerHost
        metricbeat
