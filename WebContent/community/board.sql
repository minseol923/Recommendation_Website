create table board(
     num int not null primary key 
     writer varchar(10) not null,
     subject varchar(50) not null,
     email varchar(50),
    passwd varchar(15) not null,
     reg_date datetime not null,
    readcount int default 0,
     ref int not null,
     re_step int not null,
    re_level int not null,
     content text not null
     boardType varchar(50));