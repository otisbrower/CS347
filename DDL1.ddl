-- Generated by Oracle SQL Developer Data Modeler 4.1.3.901
--   at:        2016-03-31 15:14:41 CDT
--   site:      Oracle Database 11g
--   type:      Oracle Database 11g




DROP TABLE Child_Parent CASCADE CONSTRAINTS ;

DROP TABLE Department CASCADE CONSTRAINTS ;

DROP TABLE Person CASCADE CONSTRAINTS ;

DROP TABLE Project CASCADE CONSTRAINTS ;

DROP TABLE Project_Manager CASCADE CONSTRAINTS ;

CREATE TABLE Child_Parent
  (
    Person_Person_ID1 INTEGER ,
    Person_Person_ID  INTEGER NOT NULL
  ) ;


CREATE TABLE Department
  (
    Dept_No   INTEGER NOT NULL ,
    Dept_Name VARCHAR2 (20) NOT NULL
  ) ;
ALTER TABLE Department ADD CONSTRAINT Department_PK PRIMARY KEY ( Dept_No ) ;


CREATE TABLE Person
  (
    Person_ID          INTEGER NOT NULL ,
    First_Name         VARCHAR2 (250) NOT NULL ,
    Last_Name          VARCHAR2 (250) NOT NULL ,
    Home_Address       VARCHAR2 (250) ,
    Zip_Code           INTEGER ,
    Home_Phone         INTEGER ,
    US_Citizen         CHAR (1) NOT NULL ,
    Employee_ID        INTEGER NOT NULL ,
    Salary             INTEGER NOT NULL ,
    Salary_Exception   CHAR (1) ,
    Bonus              INTEGER ,
    Is_Fired           CHAR (1) ,
    Person_Person_ID   INTEGER ,
    Type               VARCHAR2 (255) NOT NULL ,
    Department_Dept_No INTEGER NOT NULL ,
    Project_Project_No INTEGER NOT NULL
  ) ;
CREATE UNIQUE INDEX Person__IDX ON Person
  (
    Person_Person_ID ASC
  )
  ;
ALTER TABLE Person ADD CONSTRAINT Person_PK PRIMARY KEY ( Person_ID ) ;


CREATE TABLE Project
  (
    Project_No         INTEGER NOT NULL ,
    Project_Title      VARCHAR2 (20) NOT NULL ,
    Project_Active     CHAR (1) NOT NULL ,
    End_Date_Month     INTEGER ,
    End_Date_Day       INTEGER ,
    End_Date_Year      INTEGER ,
    Est_Person_Hours   INTEGER ,
    Type               VARCHAR2 (255) NOT NULL ,
    Project_Project_No INTEGER ,
    Department_Dept_No INTEGER
  ) ;
ALTER TABLE Project ADD CONSTRAINT Project_PK PRIMARY KEY ( Project_No ) ;


CREATE TABLE Project_Manager
  (
    Person_Person_ID   INTEGER ,
    Project_Project_No INTEGER
  ) ;


ALTER TABLE Child_Parent ADD CONSTRAINT Child_Parent_Person_FK FOREIGN KEY ( Person_Person_ID ) REFERENCES Person ( Person_ID ) ;

ALTER TABLE Child_Parent ADD CONSTRAINT Child_Parent_Person_FKv1 FOREIGN KEY ( Person_Person_ID1 ) REFERENCES Person ( Person_ID ) ;

ALTER TABLE Person ADD CONSTRAINT Person_Department_FK FOREIGN KEY ( Department_Dept_No ) REFERENCES Department ( Dept_No ) ;

ALTER TABLE Person ADD CONSTRAINT Person_Person_FK FOREIGN KEY ( Person_Person_ID ) REFERENCES Person ( Person_ID ) ;

ALTER TABLE Person ADD CONSTRAINT Person_Project_FK FOREIGN KEY ( Project_Project_No ) REFERENCES Project ( Project_No ) ;

ALTER TABLE Project ADD CONSTRAINT Project_Department_FK FOREIGN KEY ( Department_Dept_No ) REFERENCES Department ( Dept_No ) ;

ALTER TABLE Project_Manager ADD CONSTRAINT Project_Manager_Person_FK FOREIGN KEY ( Person_Person_ID ) REFERENCES Person ( Person_ID ) ;

ALTER TABLE Project_Manager ADD CONSTRAINT Project_Manager_Project_FK FOREIGN KEY ( Project_Project_No ) REFERENCES Project ( Project_No ) ;

ALTER TABLE Project ADD CONSTRAINT Project_Project_FK FOREIGN KEY ( Project_Project_No ) REFERENCES Project ( Project_No ) ;


-- Oracle SQL Developer Data Modeler Summary Report: 
-- 
-- CREATE TABLE                             5
-- CREATE INDEX                             1
-- ALTER TABLE                             12
-- CREATE VIEW                              0
-- ALTER VIEW                               0
-- CREATE PACKAGE                           0
-- CREATE PACKAGE BODY                      0
-- CREATE PROCEDURE                         0
-- CREATE FUNCTION                          0
-- CREATE TRIGGER                           0
-- ALTER TRIGGER                            0
-- CREATE COLLECTION TYPE                   0
-- CREATE STRUCTURED TYPE                   0
-- CREATE STRUCTURED TYPE BODY              0
-- CREATE CLUSTER                           0
-- CREATE CONTEXT                           0
-- CREATE DATABASE                          0
-- CREATE DIMENSION                         0
-- CREATE DIRECTORY                         0
-- CREATE DISK GROUP                        0
-- CREATE ROLE                              0
-- CREATE ROLLBACK SEGMENT                  0
-- CREATE SEQUENCE                          0
-- CREATE MATERIALIZED VIEW                 0
-- CREATE SYNONYM                           0
-- CREATE TABLESPACE                        0
-- CREATE USER                              0
-- 
-- DROP TABLESPACE                          0
-- DROP DATABASE                            0
-- 
-- REDACTION POLICY                         0
-- 
-- ORDS DROP SCHEMA                         0
-- ORDS ENABLE SCHEMA                       0
-- ORDS ENABLE OBJECT                       0
-- 
-- ERRORS                                   0
-- WARNINGS                                 0
