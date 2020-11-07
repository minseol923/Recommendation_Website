create table user(
id varchar(20) not null,
passwd varchar(20),
name varchar(20),
email varchar(50),
address varchar(1000),
birth varchar(100),
phone varchar(50),
hobby varchar(50),
reg_date datetime not null,
primary key(id));
