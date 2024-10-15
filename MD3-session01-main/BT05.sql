create table class(
	class_id int primary key auto_increment,
    class_name varchar(100),
    start_date datetime,
    status bit
);
create table students(
	student_id int primary key auto_increment,
    student_name varchar(100),
    address varchar(255),
    phone varchar(11),
    class_id int,
    CONSTRAINT lien_ket_01 FOREIGN KEY(class_id) REFERENCES class(class_id)
);
create table subject(
	subject_id int primary key auto_increment,
    subject_name varchar(100),
    credit int,
    status bit
);
create table mark(
	id int primary key auto_increment,
    subject_id int,
	CONSTRAINT lien_ket_02 FOREIGN KEY(subject_id) REFERENCES subject(subject_id),
    student_id int,
	CONSTRAINT lien_ket_03 FOREIGN KEY(student_id) REFERENCES students(student_id),
    point double,
    exam_time datetime
);