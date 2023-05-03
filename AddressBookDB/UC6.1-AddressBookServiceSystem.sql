----------------  UC1 ------------
show databases;
create  database address_book_service_system;
use address_book_service_system;

---------------------- UC2 ---------------------

create table address_book (
    id int primary key auto_increment,
    first_name varchar(50) not null,
    last_name varchar(50) not null,
    email varchar(100) not null,
    phone long ,
    address varchar(200),
    city varchar(50),
    state varchar(50),
    zip int );
    
    describe address_book;
    
    
    ------------------ UC3 ---------------------------
    insert into address_book(first_name, last_name, email, phone, address, city, state, zip)values ('kiran', 'urshil', 'kiran@urshil', '91680681', 'bajajnagar', 'Aurangabad', 'Maharastra', '12345');
    insert into address_book(first_name, last_name, email, phone, address, city, state, zip)values ('Afrin', 'shaikh', 'khan123@gmail.com', '159753125', 'Dilawarpur', 'Munger', 'Kashmir', '456123');
    insert into address_book(first_name, last_name, email, phone, address, city, state, zip)values ('Altaf', 'Khan', 'altaf@khan', '12345678', 'Panvel', 'Mumbai', 'Maharastra', '147852');
    insert into address_book(first_name, last_name, email, phone, address, city, state, zip)values ('Mahesh', 'Dixit', 'mahesh@dixit', '91254555', 'Chakan', 'Pune', 'Maharastra', '145786');
    insert into address_book(first_name, last_name, email, phone, address, city, state, zip)values ('Satya', 'Yadav', 'satya123@yadav', '72456655', 'Udaypur', '', 'Westbangal', '456122');
    insert into address_book(first_name, last_name, email, phone, address, city, state, zip)values ('Milind', 'Gupta', 'milind0@gmail.com', '8600091', 'Kalayugnagar', 'Siwan', 'Bihar', '123457');
    select * from address_book;

----------------------- UC4 ------------------------------
update  address_book set email = 'RoseMir34@gmail.com', phone = '77756898644', address = 'Mirzapur', city = 'Bhopal', state = 'MP', zip = '886004' where first_name = 'Afrin' and last_name = 'Shaikh';

select * from address_book;

------------------- UC5 ------------------------
delete from address_book where first_name = 'Milind';
select * from address_book ;
-------------- UC6 ------------------------------
select * from address_book where city = 'Kolkata';
select * from address_book where state = 'Westbangal';
------------------------- UC7 -----------------------
Select state, COUNT(*) as total_contacts from address_book group by state;

----------------- UC8 ---------------
Select * from address_book where city = 'Pune' order by last_name;

----------------- UC9 ---------------------
alter table address_book add name varchar(50);
alter table address_book add type varchar(50);
select * from address_book ;

 update address_book set name = 'Kiran', type = 'Family' where id = 1;
 update address_book set name = 'Afrin', type = 'Profession' where id = 2;
 update address_book set name = 'Altaf', type = 'Friend' where id = 3;
 update address_book set name = 'Mayu', type = 'MyFamily' where id = 4;
 update address_book set name = 'Satyprkash', type = 'Friend' where id = 5;
 update address_book set name = 'Dadya', type = 'MyFamily' where id = 6;
 select * from address_book;
 
 ---------------- UC10 -----------------------
 select type, count(*) as count from address_book group by type;
 
 --------------- UC11 ------------------
 insert into  Address_Book (first_name, last_name, email, phone, address, city, state, zip, name, type)
values ('Shlok', 'Dayal', 'shlokdayal@123.com', '92456585', 'Bakawalnagar', 'Amla', 'Madhya_Pradesh', '123445', 'Babu', 'Friends'),
       ('Renuka', 'Wedpathak', 'pathakrenuka@gmail.com', '72769393', 'Shantinagar', 'Amritsar', 'Panjab', '124578', 'Renu', 'MyFamily');
       
       select * from address_book;
       
------------------ UC13 -----------------------

select * from address_book where city = 'Kolkata';



    