create table customer_records (customer_id int unique not null , customer_name varchar(20) , city varchar(20) , grade int , salesman_id int  not null) ;

desc customer_records ;
-- alter table customer_records modify column salesman_id int not null salesman_id int  ;
-- 
-- we are trying to remove constraints as not null unique means it is primary key hence : 
-- drop unique 
alter table customer_records drop index customer_id ;
-- from not null to null
alter table customer_records modify customer_id int null;
-- adding foreign key
alter table customer_records add foreign key (salesman_id) references salesman_record(salesman_id); 

insert into customer_records values (3002 , 'Nick Rimando' , ' New York ' , 100 , 5001 ); 
insert into customer_records values (3007, 'Brad davis' , ' New York ' , 200 , 5001 ); 
insert into customer_records values (3005 , 'Graham Zusi' , ' California ' , 200 , 5002 ); 
insert into customer_records values (3008 , 'Julian Green' , ' Lonndon ' , 300 , 5002 ); 
insert into customer_records values (3004 , 'Fabian Johnson' , ' Paris ' , 300 , 5006 ); 
insert into customer_records values (3009 , 'Geoff Cameron' , ' Berlin ' , 100 , 5003 ); 
insert into customer_records values (3003 , 'Jozy Altodor' , ' Moscow ' , 100 , 5007 ); 
select * from customer_records ; 

select * from customer_records where customer_name like '%s';
select * from customer_records where customer_name like '_o%';

select * from customer_records order by customer_name asc ;
select * from customer_records order by customer_name desc ;

select * from customer_records order by city asc ;

select * from customer_records order by city desc ;

-- remove foreign key 
alter table customer_records
drop constraint customer_records_ibfk_1 ;

-- add foreign key 
alter table customer_records add  Foreign key (salesman_id) references salesman_records(salesman_id) ; 
 







