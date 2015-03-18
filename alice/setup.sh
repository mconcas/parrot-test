cp -av "${TOPDIR}/alice/ppbench" "${WORKSPACE}/"
export PARROT_OPTIONS="-M /cvmfs/alice-ocdb.cern.ch/calibration/MC/Ideal/GRP/CTP/Aliases=/cvmfs/alice-ocdb.cern.ch/calibration/data/2013/OCDB/GRP/CTP/Aliases -M /cvmfs/alice-ocdb.cern.ch/calibration/MC/Ideal/HLT/Calib/esdLayout=/cvmfs/alice-ocdb.cern.ch/calibration/data/2013/OCDB/HLT/Calib/esdLayout ${PARROT_OPTIONS}"
