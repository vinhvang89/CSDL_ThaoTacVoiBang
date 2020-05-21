create database list_name;
use list_name;
create table Danh_Sach_Lop (
    ID int auto_increment,
    Name varchar(50) not null ,
    Gender varchar(10) ,
    Province varchar(255) default 'Heaven or hell',
    Age int,
    constraint  primary key (ID)
);
insert into Danh_Sach_Lop (Name, Gender, Province, Age) SELECT 'Vinh','Male','Hanoi',31;
insert into Danh_Sach_Lop (Name, Gender, Province, Age) SELECT 'Trâu','Male','Hải Phòng',12;
insert into Danh_Sach_Lop (Name, Gender, Province, Age) SELECT 'Bò','Male','Barcelona',1;
insert into Danh_Sach_Lop (Name, Gender, Province, Age) SELECT 'Monkey','Male','Amazon',11;
update danh_sach_lop set Gender = 'Female' where Name = 'Trâu';
select  * from Danh_Sach_Lop where Gender like 'Female';
alter table Danh_Sach_Lop add National varchar(255) default 'United Nations';
select  * from Danh_Sach_Lop;
alter table Danh_Sach_Lop add Job varchar(255) after Province;
alter table Danh_Sach_Lop drop Job;