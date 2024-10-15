create table account (
	id int primary key auto_increment,
    firstName varchar(100),
    lastName varchar(100),
    email varchar(255),
    password varchar(255),
    address varchar(255),
    phone varchar(255),
    dateOfBirth date,
    status bit
);