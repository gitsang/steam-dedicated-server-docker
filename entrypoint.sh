#!/bin/bash

set -x

APP_ID=$APP_ID
APP_INSTALL_DIR=$APP_INSTALL_DIR
UPDATE=${UPDATE:-always}

if [[ ${UPDATE} == "always" ]]; then
    NEED_UPDATE=true
elif [[ ${UPDATE} == "if_not_exist" ]]; then
    if [[ ! -d ${APP_INSTALL_DIR} ]]; then
        NEED_UPDATE=true
    fi
fi

if [[ ${NEED_UPDATE} == "true" ]]; then
    steamcmd +force_install_dir ${APP_INSTALL_DIR} +login anonymous +app_update ${APP_ID} +quit
fi

exec "$@"
