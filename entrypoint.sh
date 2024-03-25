#!/bin/bash

set -x
set -e

APP_ID=$APP_ID
APP_INSTALL_DIR=$APP_INSTALL_DIR
UPDATE=${UPDATE:-always}

if [[ ${UPDATE} == "always" ]]; then
    NEED_UPDATE=true
elif [[ ${UPDATE} == "if_not_exist" ]]; then
    if [[ ! -f ${APP_INSTALL_DIR}/INSTALLED ]]; then
        NEED_UPDATE=true
    fi
fi

if [[ ${NEED_UPDATE} == "true" ]]; then
    steamcmd +force_install_dir ${APP_INSTALL_DIR} +login anonymous +app_update ${APP_ID} +quit
    touch ${APP_INSTALL_DIR}/INSTALLED
fi

exec "$@"
