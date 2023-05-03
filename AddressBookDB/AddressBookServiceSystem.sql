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

    