#!/bin/bash

APP_ID=$APP_ID

steamcmd +force_install_dir /data +login anonymous +app_update $APP_ID +quit

exec "$@"
