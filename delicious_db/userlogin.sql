--------------------------------------------------------
--  File created - Friday-May-24-2019   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table USERLOGIN
--------------------------------------------------------

  CREATE TABLE "HR"."USERLOGIN" 
   (	"ID" NUMBER(10,0), 
	"USER_ID" VARCHAR2(40 BYTE), 
	"USER_NAME" VARCHAR2(40 BYTE), 
	"PASSWORD" VARCHAR2(30 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS" ;
REM INSERTING into HR.USERLOGIN
SET DEFINE OFF;
Insert into HR.USERLOGIN (ID,USER_ID,USER_NAME,PASSWORD) values (1,'ric@gmail.com','richard','richard');
Insert into HR.USERLOGIN (ID,USER_ID,USER_NAME,PASSWORD) values (2,'sakthi@gmail.com','sakthi','sakthi');
Insert into HR.USERLOGIN (ID,USER_ID,USER_NAME,PASSWORD) values (3,'siva@gmail.com','siva','siva');
--------------------------------------------------------
--  DDL for Index USERLOGIN_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."USERLOGIN_PK" ON "HR"."USERLOGIN" ("USER_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table USERLOGIN
--------------------------------------------------------

  ALTER TABLE "HR"."USERLOGIN" MODIFY ("ID" NOT NULL ENABLE);
 
  ALTER TABLE "HR"."USERLOGIN" MODIFY ("USER_ID" NOT NULL ENABLE);
 
  ALTER TABLE "HR"."USERLOGIN" MODIFY ("USER_NAME" NOT NULL ENABLE);
 
  ALTER TABLE "HR"."USERLOGIN" MODIFY ("PASSWORD" NOT NULL ENABLE);
 
  ALTER TABLE "HR"."USERLOGIN" ADD CONSTRAINT "USERLOGIN_PK" PRIMARY KEY ("USER_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS"  ENABLE;