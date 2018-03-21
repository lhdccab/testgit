CREATE  TABLESPACE ORSUSER_USA_TSPACE      DATAFILE  'ORSUSER_USA_TSPACE.dbf'     size 50M Autoextend on next 1024K maxsize unlimited logging Extent management local autoallocate Segment space management auto;

Create user ORSUSER_USA identified by ORSUSER_USA default tablespace ORSUSER_USA_TSPACE;

GRANT "CONNECT" TO "ORSUSER_USA";
ALTER USER "ORSUSER_USA" DEFAULT ROLE  ALL;

GRANT ALTER ANY INDEX TO "ORSUSER_USA";
GRANT ALTER ANY INDEXTYPE TO "ORSUSER_USA";
GRANT ALTER ANY SEQUENCE TO "ORSUSER_USA";
GRANT CREATE ANY INDEX TO "ORSUSER_USA";
GRANT CREATE ANY INDEXTYPE TO "ORSUSER_USA";
GRANT CREATE ANY PROCEDURE TO "ORSUSER_USA";
GRANT CREATE ANY SEQUENCE TO "ORSUSER_USA";
GRANT CREATE ANY TABLE TO "ORSUSER_USA";
GRANT CREATE ANY TRIGGER TO "ORSUSER_USA";
GRANT CREATE ANY VIEW TO "ORSUSER_USA";
GRANT CREATE PROCEDURE TO "ORSUSER_USA";
GRANT CREATE ROLLBACK SEGMENT TO "ORSUSER_USA";
GRANT CREATE TRIGGER TO "ORSUSER_USA";
GRANT CREATE VIEW TO "ORSUSER_USA";
GRANT DEBUG ANY PROCEDURE TO "ORSUSER_USA";
GRANT DELETE ANY TABLE TO "ORSUSER_USA";
GRANT DROP ANY INDEX TO "ORSUSER_USA";
GRANT DROP ANY INDEXTYPE TO "ORSUSER_USA";
GRANT DROP ANY LIBRARY TO "ORSUSER_USA";
GRANT DROP ANY PROCEDURE TO "ORSUSER_USA";
GRANT DROP ANY SEQUENCE TO "ORSUSER_USA";
GRANT DROP ANY TABLE TO "ORSUSER_USA";
GRANT EXECUTE ANY INDEXTYPE TO "ORSUSER_USA";
GRANT EXECUTE ANY LIBRARY TO "ORSUSER_USA";
GRANT EXECUTE ANY PROCEDURE TO "ORSUSER_USA";
GRANT INSERT ANY TABLE TO "ORSUSER_USA";
GRANT SELECT ANY DICTIONARY TO "ORSUSER_USA";
GRANT SELECT ANY SEQUENCE TO "ORSUSER_USA";
GRANT SELECT ANY TABLE TO "ORSUSER_USA";
GRANT UNDER ANY TABLE TO "ORSUSER_USA";
GRANT UNDER ANY VIEW TO "ORSUSER_USA";
GRANT UPDATE ANY TABLE TO "ORSUSER_USA";
GRANT UNLIMITED TABLESPACE TO "ORSUSER_USA";

GRANT RESOURCE TO "ORSUSER_USA";

GRANT DEBUG ANY PROCEDURE, DEBUG CONNECT SESSION TO ORSUSER_USA;

GRANT IMP_FULL_DATABASE TO ORSUSER_USA;

GRANT DBA TO ORSUSER_USA;


