#!/bin/sh

source /cvmfs/alice.cern.ch/etc/login.sh
eval `alienv printenv AliRoot/v5-05-Rev-30`
cd ppbench
rm -rf *.root *.dat *.log fort* hlt hough raw* recraw/*.root recraw/*.log GRP QAImageSim0.ps
aliroot -b -q sim.C
aliroot -b -q rec.C
aliroot -b -q ${ALICE_ROOT}/STEER/CheckESD.C
