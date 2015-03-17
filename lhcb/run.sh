#!/bin/sh

source /cvmfs/lhcb.cern.ch/etc/login.sh
SetupProject Brunel v45r1 --use PRConfig
gaudirun.py "${TOPDIR}/lhcb/PRTEST-COLLISION10-1evts.py"
