FROM rethinkdb:2.3

MAINTAINER Rory Hunter <roryhunter2@gmail.com>

COPY giddyup /usr/bin/

COPY docker-entrypoint.sh /

ENTRYPOINT ["/docker-entrypoint.sh"]

CMD ["rethinkdb-cluster"]
