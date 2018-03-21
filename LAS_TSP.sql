CREATE  TABLESPACE LAF_TSPACE      DATAFILE  'LAF_TSPACE.dbf'     size 5M Autoextend on next 1024K maxsize unlimited logging Extent management local autoallocate Segment space management auto;

Create user LAF identified by LAF default tablespace LAF_TSPACE;

GRANT "CONNECT" TO "LAF";
ALTER USER "LAF" DEFAULT ROLE  ALL;

GRANT ALTER ANY INDEX TO "LAF";
GRANT ALTER ANY INDEXTYPE TO "LAF";
GRANT ALTER ANY SEQUENCE TO "LAF";
GRANT CREATE ANY INDEX TO "LAF";
GRANT CREATE ANY INDEXTYPE TO "LAF";
GRANT CREATE ANY PROCEDURE TO "LAF";
GRANT CREATE ANY SEQUENCE TO "LAF";
GRANT CREATE ANY TABLE TO "LAF";
GRANT CREATE ANY TRIGGER TO "LAF";
GRANT CREATE ANY VIEW TO "LAF";
GRANT CREATE PROCEDURE TO "LAF";
GRANT CREATE ROLLBACK SEGMENT TO "LAF";
GRANT CREATE TRIGGER TO "LAF";
GRANT CREATE VIEW TO "LAF";
GRANT DEBUG ANY PROCEDURE TO "LAF";
GRANT DELETE ANY TABLE TO "LAF";
GRANT DROP ANY INDEX TO "LAF";
GRANT DROP ANY INDEXTYPE TO "LAF";
GRANT DROP ANY LIBRARY TO "LAF";
GRANT DROP ANY PROCEDURE TO "LAF";
GRANT DROP ANY SEQUENCE TO "LAF";
GRANT DROP ANY TABLE TO "LAF";
GRANT EXECUTE ANY INDEXTYPE TO "LAF";
GRANT EXECUTE ANY LIBRARY TO "LAF";
GRANT EXECUTE ANY PROCEDURE TO "LAF";
GRANT INSERT ANY TABLE TO "LAF";
GRANT SELECT ANY DICTIONARY TO "LAF";
GRANT SELECT ANY SEQUENCE TO "LAF";
GRANT SELECT ANY TABLE TO "LAF";
GRANT UNDER ANY TABLE TO "LAF";
GRANT UNDER ANY VIEW TO "LAF";
GRANT UPDATE ANY TABLE TO "LAF";
GRANT UNLIMITED TABLESPACE TO "LAF";

GRANT RESOURCE TO "LAF";

GRANT DEBUG ANY PROCEDURE, DEBUG CONNECT SESSION TO LAF;

GRANT IMP_FULL_DATABASE TO LAF;

GRANT DBA TO LAF;

