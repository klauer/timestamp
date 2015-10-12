#!../../bin/linux-x86_64/timestamp

< envPaths

## Register all support components
dbLoadDatabase("../../dbd/timestamp.dbd",0,0)
timestamp_registerRecordDeviceDriver(pdbbase) 

## Load record instances
dbLoadRecords("../../db/timestamp.db","Sys=XF:03IDC-ES,Dev={TO-BS},Inp=XF:03IDC-TS{EVR:1}EvtBCnt-I,N=100000")

# dbLoadRecords("../../db/timestamp.db","Sys=XF:23ID1-ES,Dev={TO-Inj},Inp=XF:23ID1-TS{EVR:1}EvtACnt-I, N=100000")
# dbLoadRecords("../../db/timestamp.db","Sys=XF:23ID1-ES,Dev={FCCD-TS},Inp=XF:23ID1-TS{EVR:1}EvtCCnt-I,N=100000")

iocInit()
