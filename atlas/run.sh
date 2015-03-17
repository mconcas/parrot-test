#!/bin/sh

export ATLAS_LOCAL_ROOT_BASE=/cvmfs/atlas.cern.ch/repo/ATLASLocalRootBase
source ${ATLAS_LOCAL_ROOT_BASE}/user/atlasLocalSetup.sh
source ${AtlasSetup}/scripts/asetup.sh 19.0.0
athena.py AthExHelloWorld/HelloWorldOptions.py
