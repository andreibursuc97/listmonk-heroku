#!/usr/bin/env bash

if [ ! -f config/listmonk.toml ]; then
  echo "Compiling listmonk config file"
  erb config/listmonk.toml.erb > config/listmonk.toml
fi

touch /tmp/app-initialized
./listmonk --upgrade --config config/listmonk.toml
./listmonk --config config/listmonk.toml
