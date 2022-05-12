#!/usr/bin/bash

set -ex

oc login --insecure-skip-tls-verify --token $(eval \${OCP_SA_${UPPERCASE_DEPLOY_ENV}_TOKEN}) ${OCP_URL}

VALUES_FILE=${HELM_CHART_DIR}/values.yml
if [[ -f ${VALUES_FILE} ]]
then
    DEPLOY_VALUES_FILE="--values ${VALUES_FILE}"
fi

ENV_VALUES_FILE=${HELM_CHART_DIR}/values-${.yml
if [[ -f ${ENV_VALUES_FILE} ]]
then
    DEPLOY_ENV_VALUES_FILE="--values ${ENV_VALUES_FILE}"
fi

if [[ ! -z ${DEPLOY_VALUES_FILE} || ! -z ${DEPLOY_ENV_VALUES_FILE} ]]
then
    helm upgrade --install ${COMPONENT_NAME} ${HELM_CHART_DIR} ${DEPLOY_VALUES_FILE} ${DEPLOY_ENV_VALUES_FILE}
fi

set +ex