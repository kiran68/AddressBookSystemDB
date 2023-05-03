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