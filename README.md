
# Elastic Metricbeat docker image

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
        
        
Stress is pre-installed so you can log into the container and create "noise" from your Docker image to be reported within the Kibana's Metricbeat Dashboard

### Links
[Metricbeat](https://www.elastic.co/guide/en/beats/metricbeat/current/index.html)
[Docker for Mac](https://docs.docker.com/engine/installation/mac/#/docker-for-mac)
[stress](https://launchpad.net/ubuntu/trusty/+package/stress)

