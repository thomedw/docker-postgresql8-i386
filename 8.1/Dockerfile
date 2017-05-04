FROM toopher/centos-i386:centos5
MAINTAINER Thomas Edwin Santosa <thomas@katalisindonesia.com>

# inspired from https://github.com/alclouds/docker-postgres8/

VOLUME /var/lib/pgsql
COPY start.sh /

# install postgres 8.1.23
RUN yum -y update  \
	&& yum -y install postgresql-server \
	&& yum -y clean all \
	&& chmod +x /start.sh

EXPOSE 5432/tcp

CMD ["/start.sh"]
