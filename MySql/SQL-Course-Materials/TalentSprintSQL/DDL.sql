CREATE DATABASE class1 ;
CREATE TABLE Employee( Emp_id int , Emp_name varchar(20), dept varchar(20));
alter table Employee rename column Emp_name to Emp_Name ;
alter table Employee modify column Emp_id varchar(10);
rename table Employee to Employee_Details ;
desc Employee_Details ;

