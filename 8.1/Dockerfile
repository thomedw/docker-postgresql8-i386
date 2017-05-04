FROM toopher/centos-i386:centos5
MAINTAINER Thomas Edwin Santosa <thomas@katalisindonesia.com>

# inspired from https://github.com/alclouds/docker-postgres8/

VOLUME /var/lib/pgsql
COPY start.sh /

RUN rm /etc/yum.repos.d/CentOS-Base.repo
# install postgres 8.1.23

RUN yum --verbose --enablerepo=C5.10-base repolist
RUN yum --verbose --enablerepo=C5.10-base makecache
RUN yum --enablerepo=C5.10-base list postgresql-server
RUN yum  --enablerepo=C5.10-base update && yum -y --enablerepo=C5.10-base install postgresql-server.i386 && yum -y --enablerepo=C5.10-base clean all \
	&& chmod +x /start.sh

EXPOSE 5432/tcp

CMD ["/start.sh"]
