rename table employee_details to employee ;
alter table employee modify column phoneNumber numeric; 

desc employee;
-- inserting into employee
insert into employee values ('emp10005','sid5' , 'Admin' , 8734324621 ) ;
insert into Employee(dept,phoneNumber) values ('testing' , 123123123);
update Employee set dept = 'Tester' where dept = 'Admin3' ; 
update Employee set emp_id = 'emp10005' , Emp_Name = 'sid5' where phoneNumber = 123123123 ;
delete from employee where phoneNumber = 8734324622 ;
select * from employee ;
select  emp_id , dept  from employee where dept = 'Admin';
select * from employee where dept like 'a%' ;