create table Catalog(
	id int primary key auto_increment,
    name varchar(100),
    status bit
);
create table Exam(
	id int primary key auto_increment,
    name varchar(100),
    duration int,
    catalog_id int,
    CONSTRAINT FK_CatalogExam FOREIGN KEY (catalog_id) REFERENCES Catalog(id)
);
create table Question(
	id int primary key auto_increment,
    exam_id int,
    content varchar(255),
    CONSTRAINT FK_QuestionExam FOREIGN KEY (exam_id) REFERENCES Exam(id)
);
create table Answer(
	id int primary key auto_increment,
    question_id int,
    content varchar(255),
    answerTrue bit,
    CONSTRAINT FK_AnswerQuestion FOREIGN KEY (question_id) REFERENCES Question(id)
);