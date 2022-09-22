#!/bin/bash

if [ -z "$MYSQL_USER" ]; then
	MYSQL_USER="acore"
fi

if [ -z "$MYSQL_PASSWORD" ]; then
	MYSQL_PASSWORD="acore"
fi

if [ -z "$MYSQL_HOST" ]; then
	MYSQL_HOST="host.docker.internal"
fi

if [ -z "$MYSQL_PORT" ]; then
	MYSQL_PORT="3306"
fi

if [ "$BINARY" == "authserver" ]; then
	echo "Initializing authserver"
    sed -i "s/LoginDatabaseInfo.*/LoginDatabaseInfo = \"$MYSQL_HOST;$MYSQL_PORT;$MYSQL_USER;$MYSQL_PASSWORD;acore_auth\"/g" /core/etc/authserver.conf
	until /core/bin/authserver; do sleep 1; done
	exit 0
fi

echo "Initializing worldserver"
sed -i "s/LoginDatabaseInfo.*/LoginDatabaseInfo = \"$MYSQL_HOST;$MYSQL_PORT;$MYSQL_USER;$MYSQL_PASSWORD;acore_auth\"/g" /core/etc/worldserver.conf
sed -i "s/WorldDatabaseInfo.*/WorldDatabaseInfo = \"$MYSQL_HOST;$MYSQL_PORT;$MYSQL_USER;$MYSQL_PASSWORD;acore_world\"/g" /core/etc/worldserver.conf
sed -i "s/CharacterDatabaseInfo.*/CharacterDatabaseInfo = \"$MYSQL_HOST;$MYSQL_PORT;$MYSQL_USER;$MYSQL_PASSWORD;acore_characters\"/g" /core/etc/worldserver.conf
until /core/bin/worldserver; do sleep 1; done
exit 0
