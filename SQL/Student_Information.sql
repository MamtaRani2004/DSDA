create database Student_Information;
use Student_Information;
create table Student_Details(S_Id int primary key, S_Name varchar(10), S_Contact varchar(15), S_Address varchar(40), C_Id varchar(10));
insert into Student_Details values(1001,"Alex",1234567890,"1A, Aliganj","C001"), (1002,"Booby",2345678910,"2A, Aliganj","C002"), (1003,"Charan",3456789120,"3A, Aliganj","C003"), (1004,"Danny",4567891230,"4A, Aliganj","C004"), (1005,"Emaily",567891240,"5A, Aliganj","C005"), (1006,"Felix",67891234560,"6A, Aliganj","C006"), (1007,"George",78912345670,"7A, Aliganj","C007"), (1008,"Helen",89123456780,"8A, Aliganj","C008"), (1009,"Iris",91234567890,"9A, Aliganj","C009"), (1010,"John",1023456789,"10A, Aliganj","C010");
select * from Student_Details;

create table Class_Details(C_Id varchar(10) primary key, C_Name varchar(10), C_Course varchar(20), Duration varchar(40));
insert into Class_Details values("C001","Grade A","Hindi","1 Year"), ("C002","Grade B","English","1 Year"), ("C003","Grade C","Math","1 Year"), ("C004","Grade D","Science","1 Year"), ("C005","Grade E","Social Science","1 Year"), ("C006","Grade F","Art","1 Year"), ("C007","Grade G","Commerce","1 year"), ("C008","Grade H","Home Science","1 year"), ("C009","Grade I","Sanskrit","1 Year"), ("C010","Grade J","Music","1 year");
alter table Class_Details add column C_Timing time;
select * from Class_Details;

alter table Student_Details add constraint foreign key(C_Id) references Class_Details(C_Id);
