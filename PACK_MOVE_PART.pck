CREATE OR REPLACE PACKAGE PACK_MOVE_PART IS

  -- Author  : KFZX-LIHD
  -- Created : 2015/1/13 10:53:12
  -- Purpose : PACK_MOVE_PART

  PROCEDURE PROC_MAIN
  (
    P_I_DATE    IN VARCHAR2,
    P_O_SUCCEED OUT VARCHAR2
  );

  PROCEDURE PROC_MOVE_PART(P_I_PART IN VARCHAR2);

  PROCEDURE PROC_REBUILD_IND(P_I_PART IN VARCHAR2);

END PACK_MOVE_PART;
/
CREATE OR REPLACE PACKAGE BODY PACK_MOVE_PART IS

  PROCEDURE PROC_MAIN
  (
    P_I_DATE    IN VARCHAR2,
    P_O_SUCCEED OUT VARCHAR2
  ) IS
  
  BEGIN
  
    --PROC_STAT_TABROW(P_I_DATE);
    /*    PROC_MOVE_PART('201301');
    PROC_MOVE_PART('201302');
    PROC_MOVE_PART('201303');
    
    PROC_MOVE_PART('201304');
    PROC_MOVE_PART('201305');
    PROC_MOVE_PART('201306');
    PROC_MOVE_PART('201307');
    PROC_MOVE_PART('201308');
    PROC_MOVE_PART('201309');
    PROC_MOVE_PART('201310');
    PROC_MOVE_PART('201311');
    PROC_MOVE_PART('201312');
    
    PROC_MOVE_PART('201401');
    PROC_MOVE_PART('201402');
    PROC_MOVE_PART('201403');
    
    PROC_MOVE_PART('201404');
    PROC_MOVE_PART('201405');
    PROC_MOVE_PART('201406');
    PROC_MOVE_PART('201407');
    PROC_MOVE_PART('201408');
    PROC_MOVE_PART('201409');
    PROC_MOVE_PART('201410');
    PROC_MOVE_PART('201411');
    PROC_MOVE_PART('201412');*/
  
    PROC_MOVE_PART('201501');
    PROC_MOVE_PART('201502');
    PROC_MOVE_PART('201503');
  
    PROC_MOVE_PART('201504');
    PROC_MOVE_PART('201505');
    PROC_MOVE_PART('201506');
    PROC_MOVE_PART('201507');
    PROC_MOVE_PART('201508');
    PROC_MOVE_PART('201509');
    PROC_MOVE_PART('201510');
    PROC_MOVE_PART('201511');
    PROC_MOVE_PART('201512');
  
    PROC_REBUILD_IND('');
  
  END PROC_MAIN;

  --统计表信息

  PROCEDURE PROC_MOVE_PART(P_I_PART IN VARCHAR2) IS
    --ALTER TABLE DW_DAT_ABDB_AFJTRPT MOVE PARTITION PART_201301 TABLESPACE DATALOAD_DAT201301;
  
    --SELECT * FROM USER_INDEXES T WHERE T.index_type='NORMAL' AND T.table_name LIKE 'DW%'
  
    V_SQL VARCHAR2(300);
  
    /* V_TABLE_NAME      VARCHAR2(100);
    V_PARTITION_NAME  VARCHAR2(100);
    V_TABLESPACE_NAME VARCHAR2(100);*/
  
    CURSOR S_TABS IS
    
      SELECT T.TABLE_NAME, T.PARTITION_NAME, T.TABLESPACE_NAME FROM USER_TAB_PARTITIONS T WHERE T.PARTITION_NAME = 'PART_' || P_I_PART; --'PART_201302';
  
    A_REC S_TABS%ROWTYPE;
  BEGIN
  
    OPEN S_TABS;
    LOOP
      FETCH S_TABS
        INTO A_REC;
      EXIT WHEN S_TABS%NOTFOUND;
    
      V_SQL := 'ALTER TABLE ' || A_REC.TABLE_NAME || ' MOVE PARTITION PART_' || P_I_PART || ' TABLESPACE DATALOAD_DAT' || P_I_PART;
    
      EXECUTE IMMEDIATE V_SQL;
    
      --DBMS_OUTPUT.PUT_LINE(V_SQL);
    
      COMMIT;
    
    END LOOP;
    CLOSE S_TABS;
  
  END PROC_MOVE_PART;

  PROCEDURE PROC_REBUILD_IND(P_I_PART IN VARCHAR2) IS
    --ALTER TABLE DW_DAT_ABDB_AFJTRPT MOVE PARTITION PART_201301 TABLESPACE DATALOAD_DAT201301;
  
    --SELECT * FROM USER_INDEXES T WHERE T.index_type='NORMAL' AND T.table_name LIKE 'DW%'
  
    V_SQL VARCHAR2(300);
  
    /* V_TABLE_NAME      VARCHAR2(100);
    V_PARTITION_NAME  VARCHAR2(100);
    V_TABLESPACE_NAME VARCHAR2(100);*/
  
    --ALTER TABLE tab_name MODIFY PARTITION partition_name REBUILD UNUSABLE LOCAL INDEXES;
  
    --ALTER INDEX local_index_name REBUILD PARTITION partition_name TABLESPACE tbs_name;
  
    --ALTER INDEX global_index REBUILD;
  
    CURSOR S_TABS IS
    
      SELECT T.INDEX_NAME
        FROM USER_INDEXES T
       WHERE T.INDEX_TYPE = 'NORMAL'
         AND T.TABLE_NAME LIKE 'DW%';
  
    A_REC S_TABS%ROWTYPE;
  BEGIN
  
    OPEN S_TABS;
    LOOP
      FETCH S_TABS
        INTO A_REC;
      EXIT WHEN S_TABS%NOTFOUND;
    
      V_SQL := 'ALTER INDEX ' || A_REC.INDEX_NAME || ' REBUILD';
    
      EXECUTE IMMEDIATE V_SQL;
    
      DBMS_OUTPUT.PUT_LINE(V_SQL);
    
    END LOOP;
    CLOSE S_TABS;
  
  END PROC_REBUILD_IND;

END PACK_MOVE_PART;
/
