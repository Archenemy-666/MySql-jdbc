create table salesman_record (salesman_id int unique not null , salesman_name varchar(20) , city varchar(20)  ,commission float) ;
desc salesman_record ;
insert into salesman_record values (5001 , 'James Hoog' , 'New York' , 0.15 ) ;
insert into salesman_record values (5002 , 'Nail Knite' , 'Paris' , 0.13 ) ;
insert into salesman_record values (5005 , 'Pit Alex' , 'London' , 0.11 ) ;
insert into salesman_record values (5006 , 'Mc Lyon' , 'Paris' , 0.14 ) ;
insert into salesman_record values (5007 , 'Paul Adam' , 'Rome' , 0.13 ) ;
insert into salesman_record values (5003 , 'lauson Hen' , 'San Jose' , 0.12 ) ;

select * from salesman_record ;