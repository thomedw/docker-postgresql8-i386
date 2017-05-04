FROM toopher/centos-i386:centos5
MAINTAINER Thomas Edwin Santosa <thomas@katalisindonesia.com>

# inspired from https://github.com/alclouds/docker-postgres8/

VOLUME /var/lib/pgsql
COPY start.sh /

# install postgres 8.1.23
RUN yum -y --disablerepo=* --enablerepo=C5.10-base install postgresql-server.i386 \
	&& yum -y  --disablerepo=* --enablerepo=C5.10-base clean all \
	&& chmod +x /start.sh

EXPOSE 5432/tcp

CMD ["/start.sh"]
