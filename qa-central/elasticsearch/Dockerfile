FROM kuzzleio/elasticsearch:7.4.0

RUN echo 'path.repo: ["/opt/elasticsearch/backup"]' >> /usr/share/elasticsearch/config/elasticsearch.yml
RUN mkdir -p /opt/elasticsearch/backup
RUN chown -R elasticsearch:elasticsearch /opt/elasticsearch/backup
