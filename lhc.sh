#!/bin/bash

# PARROT_RUN=${PARROT_RUN:=${HOME}/parrot_run}
export HOME="$(pwd)"
export TOPDIR="$(pwd)"
export WORKSPACE="${TOPDIR}/workspace"
export PARROT_ALLOW_SWITCHING_CVMFS_REPOSITORIES=yes
export PARROT_CVMFS_REPO="<default-repositories> \
  alice-ocdb.cern.ch:url=http://cvmfs-stratum-one.cern.ch/cvmfs/alice-ocdb.cern.ch,pubkey=$(pwd)/cern-it1.cern.ch.pub"
# export PARROT_OPTIONS="-d cvmfs"
export HTTP_PROXY="http://ca-proxy.cern.ch:3128;DIRECT"


if [ $# -lt 1 ]; then
  echo "Usage: $0 <test case>"
  exit 1
fi

TEST=$1
shift
if [ ! -f "${TEST}/run.sh" ]; then
  echo "No test case ${TEST}"
  exit 1
fi

mkdir -p "${WORKSPACE}"
cd "${WORKSPACE}"
[ -f "${TOPDIR}/${TEST}/setup.sh" ] && source "${TOPDIR}/${TEST}/setup.sh"
exec  /opt/cctools/bin/parrot_run ${PARROT_OPTIONS} bash -c "${TOPDIR}/${TEST}/run.sh $*"
