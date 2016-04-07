DROP SEQUENCE CS_Dept_seq ; 
create sequence CS_Dept_seq 
start with 100 
increment by 1 
nomaxvalue 
;
DROP TRIGGER CS_Dept_PK_trig 
; 

create or replace trigger CS_Dept_PK_trig 
before insert on CS_Dept
for each row 
begin 
select CS_Dept_seq.nextval into :new.Dept_No from dual; 
end; 
/

DROP SEQUENCE CS_Person_seq ; 
create sequence CS_Person_seq 
start with 100 
increment by 1 
nomaxvalue 
;
DROP TRIGGER CS_Person_PK_trig 
; 

create or replace trigger CS_Person_PK_trig 
before insert on CS_Person
for each row 
begin 
select CS_Person_seq.nextval into :new.Person_ID from dual; 
end; 
/

DROP SEQUENCE CS_Proj_seq ; 
create sequence CS_Proj_seq 
start with 100 
increment by 1 
nomaxvalue 
;
DROP TRIGGER CS_Proj_PK_trig 
; 

create or replace trigger CS_Proj_PK_trig 
before insert on CS_Proj
for each row 
begin 
select CS_Proj_seq.nextval into :new.Project_No from dual; 
end; 
/

DROP INDEX CS_Person_Person_ID_FK_0 ;
CREATE INDEX CS_Person_Person_ID_FK_0 ON CS_Child_Parent(CS_Person_Person_ID) ;
DROP INDEX CS_Person_Person_ID1_FK_1 ;
CREATE INDEX CS_Person_Person_ID1_FK_1 ON CS_Child_Parent(CS_Person_Person_ID1) ;
DROP INDEX CS_Dept_Dept_No_FK_2 ;
CREATE INDEX CS_Dept_Dept_No_FK_2 ON CS_Person(CS_Dept_Dept_No) ;
DROP INDEX CS_Person_Person_ID_FK_3 ;
CREATE INDEX CS_Person_Person_ID_FK_3 ON CS_Person(CS_Person_Person_ID) ;
DROP INDEX CS_Proj_Project_No_FK_4 ;
CREATE INDEX CS_Proj_Project_No_FK_4 ON CS_Person(CS_Proj_Project_No) ;
DROP INDEX CS_Dept_Dept_No_FK_5 ;
CREATE INDEX CS_Dept_Dept_No_FK_5 ON CS_Proj(CS_Dept_Dept_No) ;
DROP INDEX CS_Proj_Project_No_FK_6 ;
CREATE INDEX CS_Proj_Project_No_FK_6 ON CS_Proj(CS_Proj_Project_No) ;
DROP INDEX CS_Person_Person_ID_FK_7 ;
CREATE INDEX CS_Person_Person_ID_FK_7 ON CS_Proj_Man(CS_Person_Person_ID) ;
DROP INDEX CS_Proj_Project_No_FK_8 ;
CREATE INDEX CS_Proj_Project_No_FK_8 ON CS_Proj_Man(CS_Proj_Project_No) ;
