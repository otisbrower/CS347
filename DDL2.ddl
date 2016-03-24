DROP SEQUENCE Department_seq ; 
create sequence Department_seq 
start with 100 
increment by 1 
nomaxvalue 
;
DROP TRIGGER Department_PK_trig 
; 

create or replace trigger Department_PK_trig 
before insert on Department
for each row 
begin 
select Department_seq.nextval into :new.Dept_No from dual; 
end; 
/

DROP SEQUENCE Person_seq ; 
create sequence Person_seq 
start with 100 
increment by 1 
nomaxvalue 
;
DROP TRIGGER Person_PK_trig 
; 

create or replace trigger Person_PK_trig 
before insert on Person
for each row 
begin 
select Person_seq.nextval into :new.Person_ID from dual; 
end; 
/

DROP SEQUENCE Project_seq ; 
create sequence Project_seq 
start with 100 
increment by 1 
nomaxvalue 
;
DROP TRIGGER Project_PK_trig 
; 

create or replace trigger Project_PK_trig 
before insert on Project
for each row 
begin 
select Project_seq.nextval into :new.Project_No from dual; 
end; 
/

DROP INDEX Person_Person_ID_FK_0 ;
CREATE INDEX Person_Person_ID_FK_0 ON Child_Parent(Person_Person_ID) ;
DROP INDEX Person_Person_ID2_FK_1 ;
CREATE INDEX Person_Person_ID2_FK_1 ON Child_Parent(Person_Person_ID2) ;
DROP INDEX Person_Person_ID_FK_2 ;
CREATE INDEX Person_Person_ID_FK_2 ON Emp_Man(Person_Person_ID) ;
DROP INDEX Person_Person_ID2_FK_3 ;
CREATE INDEX Person_Person_ID2_FK_3 ON Emp_Man(Person_Person_ID2) ;
DROP INDEX Department_Dept_No_FK_4 ;
CREATE INDEX Department_Dept_No_FK_4 ON Man_Dept(Department_Dept_No) ;
DROP INDEX Person_Person_ID_FK_5 ;
CREATE INDEX Person_Person_ID_FK_5 ON Man_Dept(Person_Person_ID) ;
DROP INDEX Person_Person_ID_FK_6 ;
CREATE INDEX Person_Person_ID_FK_6 ON Person(Person_Person_ID) ;
DROP INDEX Department_Dept_No_FK_7 ;
CREATE INDEX Department_Dept_No_FK_7 ON Proj_Dept(Department_Dept_No) ;
DROP INDEX Project_Project_No_FK_8 ;
CREATE INDEX Project_Project_No_FK_8 ON Proj_Dept(Project_Project_No) ;
DROP INDEX Person_Person_ID_FK_9 ;
CREATE INDEX Person_Person_ID_FK_9 ON Proj_Emp_Cur_Proj(Person_Person_ID) ;
DROP INDEX Project_Project_No_FK_10 ;
CREATE INDEX Project_Project_No_FK_10 ON Proj_Emp_Cur_Proj(Project_Project_No) ;
DROP INDEX Person_Person_ID_FK_11 ;
CREATE INDEX Person_Person_ID_FK_11 ON Proj_Man(Person_Person_ID) ;
DROP INDEX Project_Project_No_FK_12 ;
CREATE INDEX Project_Project_No_FK_12 ON Proj_Man(Project_Project_No) ;
DROP INDEX Project_Project_No_FK_13 ;
CREATE INDEX Project_Project_No_FK_13 ON Proj_Subproj(Project_Project_No) ;
DROP INDEX Project_Project_No2_FK_14 ;
CREATE INDEX Project_Project_No2_FK_14 ON Proj_Subproj(Project_Project_No2) ;
