DROP SEQUENCE 347Dept_seq ; 
create sequence 347Dept_seq 
start with 100 
increment by 1 
nomaxvalue 
;
DROP TRIGGER 347Dept_PK_trig 
; 

create or replace trigger 347Dept_PK_trig 
before insert on 347Dept
for each row 
begin 
select 347Dept_seq.nextval into :new.Dept_No from dual; 
end; 
/

DROP SEQUENCE 347Person_seq ; 
create sequence 347Person_seq 
start with 100 
increment by 1 
nomaxvalue 
;
DROP TRIGGER 347Person_PK_trig 
; 

create or replace trigger 347Person_PK_trig 
before insert on 347Person
for each row 
begin 
select 347Person_seq.nextval into :new.Person_ID from dual; 
end; 
/

DROP SEQUENCE 347Proj_seq ; 
create sequence 347Proj_seq 
start with 100 
increment by 1 
nomaxvalue 
;
DROP TRIGGER 347Proj_PK_trig 
; 

create or replace trigger 347Proj_PK_trig 
before insert on 347Proj
for each row 
begin 
select 347Proj_seq.nextval into :new.Project_No from dual; 
end; 
/

DROP INDEX 347Person_Person_ID_FK_0 ;
CREATE INDEX 347Person_Person_ID_FK_0 ON 347Child_Parent(347Person_Person_ID) ;
DROP INDEX 347Person_Person_ID1_FK_1 ;
CREATE INDEX 347Person_Person_ID1_FK_1 ON 347Child_Parent(347Person_Person_ID1) ;
DROP INDEX 347Dept_Dept_No_FK_2 ;
CREATE INDEX 347Dept_Dept_No_FK_2 ON 347Person(347Dept_Dept_No) ;
DROP INDEX 347Person_Person_ID_FK_3 ;
CREATE INDEX 347Person_Person_ID_FK_3 ON 347Person(347Person_Person_ID) ;
DROP INDEX 347Proj_Project_No_FK_4 ;
CREATE INDEX 347Proj_Project_No_FK_4 ON 347Person(347Proj_Project_No) ;
DROP INDEX 347Dept_Dept_No_FK_5 ;
CREATE INDEX 347Dept_Dept_No_FK_5 ON 347Proj(347Dept_Dept_No) ;
DROP INDEX 347Proj_Project_No_FK_6 ;
CREATE INDEX 347Proj_Project_No_FK_6 ON 347Proj(347Proj_Project_No) ;
DROP INDEX 347Person_Person_ID_FK_7 ;
CREATE INDEX 347Person_Person_ID_FK_7 ON 347Proj_Man(347Person_Person_ID) ;
DROP INDEX 347Proj_Project_No_FK_8 ;
CREATE INDEX 347Proj_Project_No_FK_8 ON 347Proj_Man(347Proj_Project_No) ;
