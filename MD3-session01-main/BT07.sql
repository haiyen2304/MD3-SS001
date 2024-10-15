create table warehouse(
	id int primary key auto_increment,
    name varchar(100),
    address varchar(100),
    status bit
);
create table product(
	id int primary key auto_increment,
    name varchar(100),
    price double,
    stock int,
    status bit
);
create table bill(
	id int primary key auto_increment,
    type bit,
    totalPrice double,
    created date,
    warehouse_id int,
    status bit,
    CONSTRAINT FK_BillWareHouse FOREIGN KEY (warehouse_id) REFERENCES warehouse(id)
);
create table bill_detail(
	id int primary key auto_increment,
	bill_id int,
	product_id int,
	quantity int,
	price double,
    CONSTRAINT FK_billdetailBill FOREIGN KEY (bill_id) REFERENCES bill(id),
	CONSTRAINT FK_billdetailProduct FOREIGN KEY (product_id) REFERENCES product(id)
);