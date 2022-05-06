
#!/usr/bin/bash

set -x

CICD_ONBOARDING=cicd-onboarding
CICD_MANAGER=cicd-manager

echo "CICD_ONBOARDING=${CICD_ONBOARDING}" >> ${GITHUB_ENV}
echo "CICD_MANAGER=${CICD_MANAGER}" >> ${GITHUB_ENV}

echo "SYSTEM_NAME=${{ github.event.inputs.system-name }}" >> ${GITHUB_ENV}
echo "TEAM_NAME=${{ github.event.inputs.system-name }}" >> ${GITHUB_ENV}

echo "CICD_REPO_ONBOARDING_DIR=${GITHUB_WORKSPACE}/${CICD_ONBOARDING}" >> ${GITHUB_ENV}
echo "CICD_REPO_MGR_DIR=${GITHUB_WORKSPACE}/${CICD_MANAGER}" >> ${GITHUB_ENV}
echo "SYSTEM_DEFS_DIR=${GITHUB_WORKSPACE}/${CICD_MANAGER}/.github/system-defs" >> ${GITHUB_ENV}

echo "WORKING_DIR=${GITHUB_WORKSPACE}/${GITHUB_REPOSITORY}" >> ${GITHUB_ENV}

set +x