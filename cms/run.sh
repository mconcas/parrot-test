#!/bin/sh

source /cvmfs/cms.cern.ch/cmsset_default.sh
scramv1 project CMSSW CMSSW_6_2_3
cd CMSSW_6_2_3
eval `scram runtime -sh`
cmsDriver.py TTbar_Tauola_8TeV_cfi -s GEN,SIM --conditions auto:startup --eventcontent FEVTDEBUG --datatier GEN-SIM -n 1 --no_exec
cmsRun TTbar_Tauola_8TeV_cfi_GEN_SIM.py
cmsDriver.py TTbar_Tauola_8TeV_cfi -s DIGI,L1,DIGI2RAW,RAW2DIGI,L1Reco,RECO --conditions auto:startup --eventcontent RECOSIM --datatier RECO -n -1 --no_exec --filein file:./TTbar_Tauola_8TeV_cfi_GEN_SIM.root
cmsRun TTbar_Tauola_8TeV_cfi_DIGI_L1_DIGI2RAW_RAW2DIGI_L1Reco_RECO.py
