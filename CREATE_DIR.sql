create or replace directory DUMP_DIR as 'F:\DBDATA_SDC\DVD2';

GRANT READ,WRITE ON DIRECTORY DUMP_DIR TO DATALOAD;