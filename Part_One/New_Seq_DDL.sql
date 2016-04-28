drop sequence CS_EMPLOYEE_ID_SEQ;
CREATE SEQUENCE CS_EMPLOYEE_ID_SEQ  
MINVALUE 100 
nomaxvalue 
INCREMENT BY 1 
START WITH 100 
CACHE 5 
ORDER  
NOCYCLE  
NOPARTITION
;
DROP TRIGGER CS_Employee_ID_Trig;

create or replace trigger CS_Employee_ID_Trig
before insert on CS_Person
for each row
when (NEW.type = 'Employee' OR NEW.type = 'Manager' OR New.type = 'Interim_Manager' OR NEW.type = 'President' OR NEW.Type = 'Previous_Employee')
begin 
    select CS_EMPLOYEE_ID_SEQ.nextval into :new.Employee_ID from dual; 
end;
/
