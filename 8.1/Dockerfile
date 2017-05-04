FROM toopher/centos-i386:centos5
MAINTAINER Thomas Edwin Santosa <thomas@katalisindonesia.com>

# inspired from https://github.com/alclouds/docker-postgres8/

VOLUME /var/lib/pgsql
COPY start.sh /

#Indonesian locale

RUN rm /etc/yum.repos.d/CentOS-Base.repo
# install postgres 8.1.23
RUN sed -i 's/\$basearch/i386/g' /etc/yum.repos.d/CentOS-Vault.repo
RUN yum --enablerepo=C5.10-base list postgresql-server
RUN yum  --enablerepo=C5.10-base update && yum -y --enablerepo=C5.10-base reinstall postgresql-server.i386 glibc-common && yum -y --enablerepo=C5.10-base clean all \
	&& chmod +x /start.sh

EXPOSE 5432/tcp
RUN /usr/bin/localedef -f UTF-8 -i id_ID id_ID.UTF-8

CMD ["/start.sh"]
