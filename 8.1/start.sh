#!/bin/bash

/etc/init.d/postgresql start

cat /var/lib/pgsql/pgstartup.log
pid=`pidof -s /usr/bin/postmaster`
if [ $pid ] && [ -f "/var/lib/pgsql/data/postmaster.pid" ]
then
  echo '---------------------------------------------------'
  tail -f /var/lib/pgsql/pgstartup.log
fi
