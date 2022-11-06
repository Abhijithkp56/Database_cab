create database Cabs;
use Cabs;
create table cab(
    cab_no int not null primary key,
    cab_name varchar(100) not null,
    cab_description varchar(150) not null,
    cab_capacity int not null
);
create table passenger(
    passenger_id int not null primary key,
    passenger_name varchar(50) not null,
    passenger_username varchar(50) not null,
    email varchar(100) not null,
    passwrd varchar(50) not null,
    mobile int not null unique,
    address varchar(150) not null,
    dob date
);
create table booked_ticket(
    ticket_number  int PRIMARY KEY ,
    pickup varchar(50),
    destination varchar(50),
    booking_date date,
    cab_time time,
    passenger_id int,
    cab_number int,
    constraint FK_booking_passengerid foreign key(passenger_id) references passenger(passenger_id),
    constraint FK_booking_cabno foreign key(cab_number) references cab(cab_no)  
);