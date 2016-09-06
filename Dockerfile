FROM rethinkdb:2.3

MAINTAINER Rory Hunter <roryhunter2@gmail.com>

# Used to query rancher metadata service
RUN apt-get update \
    && apt-get install -y curl \
    && rm -rf /var/lib/apt/lists/*

COPY giddyup /usr/bin/

COPY docker-entrypoint.sh /

ENTRYPOINT ["/docker-entrypoint.sh"]

CMD ["rethinkdb-cluster"]
