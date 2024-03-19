#!/bin/bash

APP_ID=$APP_ID

steamcmd +login anonymous +force_install_dir /data +app_update $APP_ID +quit

exec "$@"
