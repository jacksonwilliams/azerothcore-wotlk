HOST ?= 127.0.0.1

.PHONY: all create base wobgob clean
.PHONY: all create base wobgob retro clean

all: create base wobgob retro

create:
	@mysql --host=$(HOST) --user=wobgob --password=wobgob --execute 'CREATE DATABASE IF NOT EXISTS dbc'

base:
	@cat base/*.sql | mysql --host=$(HOST) --user=wobgob --password=wobgob dbc

wobgob:
	@cat wobgob/*.sql | mysql --host=$(HOST) --user=wobgob --password=wobgob dbc

retro:
	@cat ../modules/mod-retroporting/sql/world/item_creation_item_template.sql | \
		mysql --host=$(HOST) --user=wobgob --password=wobgob dbc
	@cat retro/*.sql | mysql --host=$(HOST) --user=wobgob --password=wobgob dbc

clean:
	@mysql --host=$(HOST) --user=wobgob --password=wobgob --execute 'DROP DATABASE dbc'
