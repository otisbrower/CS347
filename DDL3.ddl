DROP SEQUENCE 347Dept_seq ; 
create sequence 347Dept_seq 
start with 100 
increment by 1 
nomaxvalue 
;

create or replace trigger 347Dept_PK_trig 
before insert on 347Dept
for each row 
begin 
select 347Dept_seq.nextval into :new.Dept_No from dual; 
end; 
/
alter table 347Dept add created date ; 
alter table 347Dept add created_by VARCHAR2 (255) ; 
alter table 347Dept add row_version_number integer ; 
alter table 347Dept add updated date ; 
alter table 347Dept add updated_by VARCHAR2 (255) ; 
/
create or replace trigger 347Dept_AUD_trig 
before insert or update on 347Dept 
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

DROP SEQUENCE 347Person_seq ; 
create sequence 347Person_seq 
start with 100 
increment by 1 
nomaxvalue 
;

create or replace trigger 347Person_PK_trig 
before insert on 347Person
for each row 
begin 
select 347Person_seq.nextval into :new.Person_ID from dual; 
end; 
/
alter table 347Person add created date ; 
alter table 347Person add created_by VARCHAR2 (255) ; 
alter table 347Person add row_version_number integer ; 
alter table 347Person add updated date ; 
alter table 347Person add updated_by VARCHAR2 (255) ; 
/
create or replace trigger 347Person_AUD_trig 
before insert or update on 347Person 
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

DROP SEQUENCE 347Proj_seq ; 
create sequence 347Proj_seq 
start with 100 
increment by 1 
nomaxvalue 
;

create or replace trigger 347Proj_PK_trig 
before insert on 347Proj
for each row 
begin 
select 347Proj_seq.nextval into :new.Project_No from dual; 
end; 
/
alter table 347Proj add created date ; 
alter table 347Proj add created_by VARCHAR2 (255) ; 
alter table 347Proj add row_version_number integer ; 
alter table 347Proj add updated date ; 
alter table 347Proj add updated_by VARCHAR2 (255) ; 
/
create or replace trigger 347Proj_AUD_trig 
before insert or update on 347Proj 
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
