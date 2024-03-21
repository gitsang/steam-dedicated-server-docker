#!/bin/bash

APP_ID=$APP_ID
APP_INSTALL_DIR=$APP_INSTALL_DIR

/home/steam/steamcmd/steamcmd.sh +force_install_dir $APP_INSTALL_DIR +login anonymous +app_update $APP_ID +quit

exec "$@"
