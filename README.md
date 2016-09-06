
# Elastic [Metricbeat](https://www.elastic.co/guide/en/beats/metricbeat/current/index.html) Dockerized

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
        
        
[Stress](https://launchpad.net/ubuntu/trusty/+package/stress) is pre-installed so you can log into the container and create "noise" from your Docker image to be reported within the Kibana's Metricbeat Dashboard



