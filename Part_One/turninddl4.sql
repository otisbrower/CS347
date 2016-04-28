drop view CS_Employee_view;
drop view CS_Project_Employee_view;
drop view CS_Manager_view;
drop view CS_Interim_Manager_view;
drop view CS_President_view;
drop view CS_Previous_Employee_view;
drop view CS_Previous_Project_view;
drop view CS_Current_Project_view; 

delete from CS_Person;
/
delete from CS_Proj;
/
delete from CS_Dept;
/



create view CS_Employee_view as select Person_ID, First_Name, Last_Name, Home_Address, Zip_Code, Home_Phone, US_Citizen, Employee_ID, Salary, Salary_Exception, Type, CS_Dept_Dept_No, CS_Proj_Project_No
from CS_Person where type = 'Employee';

create or replace trigger CS_Employee_trigger
  instead of insert on CS_Employee_view
  for each row  
 begin
  insert into CS_Person( Person_ID, First_Name, Last_Name, Home_Address, Zip_Code, Home_Phone, US_Citizen, Employee_ID, Salary, Salary_Exception,Type, CS_Dept_Dept_No, CS_Proj_Project_No)
  values(:NEW.Person_ID, :NEW.First_Name, :NEW.Last_Name, :NEW.Home_Address, :NEW.Zip_Code, :NEW.Home_Phone, :NEW.US_Citizen, :NEW.Employee_ID, :NEW.Salary, :NEW.Salary_Exception, 'Employee', :NEW.CS_DEPT_DEPT_NO, :NEW.CS_PROJ_PROJECT_NO);
 end;
 /

create view CS_Project_Employee_view as select Person_ID, First_Name, Last_Name, Home_Address, Zip_Code, Home_Phone, US_Citizen, Employee_ID, Salary, Salary_Exception, Type, CS_DEPT_DEPT_NO, CS_PROJ_PROJECT_NO
from CS_Person where type = 'Project_Employee';

create or replace trigger CS_Project_Employee_trigger
  instead of insert on CS_Project_Employee_view
  for each row
 begin
  insert into CS_Person(Person_ID, First_Name, Last_Name, Home_Address, Zip_Code, Home_Phone, US_Citizen, Employee_ID, Salary, Salary_Exception,  Type, CS_DEPT_DEPT_NO, CS_PROJ_PROJECT_NO)
  values(:NEW.Person_ID, :NEW.First_Name, :NEW.Last_Name, :NEW.Home_Address, :NEW.Zip_Code, :NEW.Home_Phone, :NEW.US_Citizen, :NEW.Employee_ID, :NEW.Salary, :NEW.Salary_Exception, 'Project_Employee', :NEW.CS_DEPT_DEPT_NO, :NEW.CS_PROJ_PROJECT_NO);
 end;
 /

create view CS_Manager_view as select Person_ID, First_Name, Last_Name, Home_Address, Zip_Code, Home_Phone, US_Citizen, Employee_ID, Salary, Salary_Exception, Bonus, Type, CS_Dept_Dept_No, CS_Proj_Project_No
from CS_Person where type = 'Manager';

create or replace trigger CS_Manager_trigger
  instead of insert on CS_Manager_view
  for each row
 begin
  insert into CS_Person( Person_ID, First_Name, Last_Name, Home_Address, Zip_Code, Home_Phone, US_Citizen, Employee_ID, Salary, Salary_Exception, Bonus, Type, CS_DEPT_DEPT_NO, CS_PROJ_PROJECT_NO)
  values(:NEW.Person_ID, :NEW.First_Name, :NEW.Last_Name, :NEW.Home_Address, :NEW.Zip_Code, :NEW.Home_Phone, :NEW.US_Citizen, :NEW.Employee_ID, :NEW.Salary, :NEW.Salary_Exception, :NEW.Bonus, 'Manager', :NEW.CS_DEPT_DEPT_NO, :NEW.CS_PROJ_PROJECT_NO);
 end;
 /

create view CS_Interim_Manager_view as select Person_ID, First_Name, Last_Name, Home_Address, Zip_Code, Home_Phone, US_Citizen, Employee_ID, Salary, Salary_Exception, Bonus, Type, CS_DEPT_DEPT_NO, CS_PROJ_PROJECT_NO 
from CS_Person where type = 'Interim_Manager';

create or replace trigger CS_Interim_Manager_trigger
  instead of insert on CS_Interim_Manager_view
  for each row
 begin
  insert into CS_Person(  Person_ID, First_Name, Last_Name, Home_Address, Zip_Code, Home_Phone, US_Citizen, Employee_ID, Salary, Salary_Exception, Bonus, Type, CS_DEPT_DEPT_NO, CS_PROJ_PROJECT_NO)
  values(:NEW.Person_ID, :NEW.First_Name, :NEW.Last_Name, :NEW.Home_Address, :NEW.Zip_Code, :NEW.Home_Phone, :NEW.US_Citizen, :NEW.Employee_ID, :NEW.Salary, :NEW.Salary_Exception, :NEW.Bonus, 'Interim_Manager', :NEW.CS_DEPT_DEPT_NO, :NEW.CS_PROJ_PROJECT_NO);
 end;
 /

create view CS_President_view as select Person_ID, First_Name, Last_Name, Home_Address, Zip_Code, Home_Phone, US_Citizen, Employee_ID, Salary, Salary_Exception, Bonus, Type 
from CS_Person where type = 'President';

create or replace trigger CS_President_trigger
  instead of insert on CS_President_view
  for each row
 begin
  insert into CS_Person( Person_ID, First_Name, Last_Name, Home_Address, Zip_Code, Home_Phone, US_Citizen, Employee_ID, Salary, Salary_Exception, Bonus, Type)
  values(:NEW.Person_ID, :NEW.First_Name, :NEW.Last_Name, :NEW.Home_Address, :NEW.Zip_Code, :NEW.Home_Phone, :NEW.US_Citizen, :NEW.Employee_ID, :NEW.Salary, :NEW.Salary_Exception, :NEW.Bonus, 'President');
 end;
 /

create view CS_Previous_Employee_view as select  Person_ID, First_Name, Last_Name, Home_Address, Zip_Code, Home_Phone, US_Citizen, Is_Fired, Salary, Type 
from CS_Person where type = 'Previous_Employee';

create or replace trigger CS_Previous_Employee_trigger
  instead of insert on CS_Previous_Employee_view
  for each row
 begin
  insert into CS_Person(  Person_ID, First_Name, Last_Name, Home_Address, Zip_Code, Home_Phone, US_Citizen, Is_Fired, Salary, Type)
  values(:NEW.Person_Id, :NEW.First_Name, :NEW.Last_Name, :NEW.Home_Address, :NEW.Zip_Code, :NEW.Home_Phone, :NEW.US_Citizen, :NEW.Is_Fired, :NEW.Salary, 'Previous_Employee');
 end;
 /

create view CS_Previous_Project_view as 
SELECT
	Project_No,
	Project_Title,
	Type,
	End_Date_Month,
	End_Date_Year,
	End_Date_Day,
	Est_Person_Hours
From CS_Proj where type = 'Previous_Project' ;

create or replace TRIGGER CS_Previous_Project_Trigger
	INSTEAD OF insert ON CS_Previous_Project_View
	FOR EACH ROW
BEGIN
	insert into CS_Proj(
	Project_No,
	Project_Title,
	Type,
	End_Date_Month,
	End_Date_Year,
	End_Date_Day,
	Est_Person_Hours)
	VALUES (
	:NEW.Project_No,
	:NEW.Project_Title,
	'Previous_Project',
	:NEW.End_Date_Month,
	:NEW.End_Date_Year,
	:NEW.End_Date_Day,
	:NEW.Est_Person_Hours) ;
END;
/

create view CS_Current_Project_view as 
SELECT
	Project_No,
	Project_Title,
	Type,
	Project_Active,
    CS_Dept_Dept_No,
    CS_Person_Person_ID,
    CS_Person_Person_ID1 
From CS_Proj where type = 'Current_Project' ;

create or replace TRIGGER CS_Current_Project_Trigger
	INSTEAD OF insert ON CS_Current_Project_View
	FOR EACH ROW 
BEGIN 
	insert into CS_Proj(
	Project_No,
	Project_Title,
	Type,
	Project_Active,
  CS_DEPT_DEPT_NO,
  CS_Person_Person_ID,
  CS_Person_Person_ID1)
	VALUES (
	:NEW.Project_No,
	:NEW.Project_Title,
	'Current_Project',
    :NEW.Project_Active,
    :NEW.CS_DEPT_DEPT_NO,
    :NEW.CS_Person_Person_ID,
    :NEW.CS_Person_Person_ID1) ;
  END;
/