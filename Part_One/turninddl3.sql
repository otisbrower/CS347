DROP SEQUENCE CS_Dept_seq ; 
create sequence CS_Dept_seq 
start with 100 
increment by 1 
nomaxvalue 
;

create or replace trigger CS_Dept_PK_trig 
before insert on CS_Dept
for each row 
begin 
select CS_Dept_seq.nextval into :new.Dept_No from dual; 
end; 
/
alter table CS_Dept add created date ; 
alter table CS_Dept add created_by VARCHAR2 (255) ; 
alter table CS_Dept add row_version_number integer ; 
alter table CS_Dept add updated date ; 
alter table CS_Dept add updated_by VARCHAR2 (255) ; 
/
create or replace trigger CS_Dept_AUD_trig 
before insert or update on CS_Dept 
for each row 
begin 
  if inserting then 
    :new.created := localtimestamp; 
    :new.created_by := nvl(wwv_flow.g_user,user); 
    :new.updated := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
    :new.row_version_number := 1; 
  elsif updating then 
    :new.row_version_number := nvl(:old.row_version_number,1) + 1; 
  end if; 
  if inserting or updating then 
    :new.updated := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
  end if; 
end; 
/

DROP SEQUENCE CS_Person_seq ; 
create sequence CS_Person_seq 
start with 100 
increment by 1 
nomaxvalue 
;

create or replace trigger CS_Person_PK_trig 
before insert on CS_Person
for each row 
begin 
select CS_Person_seq.nextval into :new.Person_ID from dual; 
end; 
/
alter table CS_Person add created date ; 
alter table CS_Person add created_by VARCHAR2 (255) ; 
alter table CS_Person add row_version_number integer ; 
alter table CS_Person add updated date ; 
alter table CS_Person add updated_by VARCHAR2 (255) ; 
/
create or replace trigger CS_Person_AUD_trig 
before insert or update on CS_Person 
for each row 
begin 
  if inserting then 
    :new.created := localtimestamp; 
    :new.created_by := nvl(wwv_flow.g_user,user); 
    :new.updated := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
    :new.row_version_number := 1; 
  elsif updating then 
    :new.row_version_number := nvl(:old.row_version_number,1) + 1; 
  end if; 
  if inserting or updating then 
    :new.updated := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
  end if; 
end; 
/

DROP SEQUENCE CS_Proj_seq ; 
create sequence CS_Proj_seq 
start with 100 
increment by 1 
nomaxvalue 
;

create or replace trigger CS_Proj_PK_trig 
before insert on CS_Proj
for each row 
begin 
select CS_Proj_seq.nextval into :new.Project_No from dual; 
end; 
/
alter table CS_Proj add created date ; 
alter table CS_Proj add created_by VARCHAR2 (255) ; 
alter table CS_Proj add row_version_number integer ; 
alter table CS_Proj add updated date ; 
alter table CS_Proj add updated_by VARCHAR2 (255) ; 
/
create or replace trigger CS_Proj_AUD_trig 
before insert or update on CS_Proj 
for each row 
begin 
  if inserting then 
    :new.created := localtimestamp; 
    :new.created_by := nvl(wwv_flow.g_user,user); 
    :new.updated := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
    :new.row_version_number := 1; 
  elsif updating then 
    :new.row_version_number := nvl(:old.row_version_number,1) + 1; 
  end if; 
  if inserting or updating then 
    :new.updated := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
  end if; 
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
DROP INDEX CS_Person_Person_ID_FK_6 ;
CREATE INDEX CS_Person_Person_ID_FK_6 ON CS_Proj(CS_Person_Person_ID) ;
DROP INDEX CS_Person_Person_ID1_FK_7 ;
CREATE INDEX CS_Person_Person_ID1_FK_7 ON CS_Proj(CS_Person_Person_ID1) ;
DROP INDEX CS_Proj_Project_No_FK_8 ;
CREATE INDEX CS_Proj_Project_No_FK_8 ON CS_Proj(CS_Proj_Project_No) ;
DROP INDEX CS_Person_Person_ID_FK_9 ;
CREATE INDEX CS_Person_Person_ID_FK_9 ON CS_Proj_Man(CS_Person_Person_ID) ;
DROP INDEX CS_Proj_Project_No_FK_10 ;
CREATE INDEX CS_Proj_Project_No_FK_10 ON CS_Proj_Man(CS_Proj_Project_No) ;