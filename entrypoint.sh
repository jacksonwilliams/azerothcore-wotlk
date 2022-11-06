#!/bin/bash

define() { IFS='\n' read -r -d '' ${1} || true; }

if [ -z "$ID" ]; then
    ID="1"
fi

if [ -z "$NAME" ]; then
    NAME="arcade"
fi

if [ -z "$ZONE" ]; then
    ZONE="1"
fi

if [ -z "$MYSQL_USER" ]; then
	MYSQL_USER="wobgob"
fi

if [ -z "$MYSQL_PASSWORD" ]; then
	MYSQL_PASSWORD="wobgob"
fi

if [ -z "$MYSQL_HOST" ]; then
	MYSQL_HOST="host.docker.internal"
fi

if [ -z "$MYSQL_PORT" ]; then
	MYSQL_PORT="3306"
fi

define SEDSCRIPT <<EOF
s/{{ID}}/$ID/g
s/{{NAME}}/$NAME/g
s/{{ZONE}}/$ZONE/g
s/{{MYSQL_USER}}/$MYSQL_USER/g
s/{{MYSQL_PASSWORD}}/$MYSQL_PASSWORD/g
s/{{MYSQL_HOST}}/$MYSQL_HOST/g
s/{{MYSQL_PORT}}/$MYSQL_PORT/g
EOF

if [ $AUTHSERVER ]; then
	echo "Initializing authserver"
    sed -i "$SEDSCRIPT" /core/etc/authserver.conf
	until /core/bin/authserver; do sleep 1; done
	exit 0
fi

echo "Initializing worldserver"
sed -i "$SEDSCRIPT" /core/etc/worldserver.conf
until /core/bin/worldserver; do sleep 1; done
exit 0
