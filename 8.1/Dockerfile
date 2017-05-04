FROM toopher/centos-i386:centos5
MAINTAINER Thomas Edwin Santosa <thomas@katalisindonesia.com>

# inspired from https://github.com/alclouds/docker-postgres8/

VOLUME /var/lib/pgsql
COPY start.sh /

COPY CentOS-510.repo /etc/yum.repos.d/

RUN rm /etc/yum.repos.d/CentOS-Base.repo
# install postgres 8.1.23
RUN sed -i 's/\$basearch/i386/g' /etc/yum.repos.d/CentOS-Vault.repo
RUN yum list postgresql-server
RUN yum -y update && yum -y install postgresql-server.i386 && yum -y reinstall glibc-common && yum -y clean all \
	&& chmod +x /start.sh

EXPOSE 5432/tcp

#Indonesian locale
RUN /usr/bin/localedef -f UTF-8 -i id_ID id_ID.UTF-8

CMD ["/start.sh"]
