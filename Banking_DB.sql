create database Banking_DB;
use Banking_DB;

create table Customers(C_Id int primary key, C_Name varchar(30), L_Id varchar(15));
insert into Customers values(1001,"Alex","L1001"), (1002,"Helen","L1002"), (1003,"John","L1003");
select * from Customers;

create table Accounts(A_Id varchar(30) primary key, C_Id int, B_Id varchar(60), T_Id varchar(20));
insert into Accounts values("A001",1001,"B1001","T1001"), ("A002",1002, "B1002","T1002"), ("A003",1003,"B1003","T1003");
select * from Accounts;

create table Branches(B_Id varchar(20) primary key, B_Name varchar(10));
insert into Branches values("B1001", "Delhi"), ("B1002","Pune"), ("B1003","Mumbai");
select * from Branches;

create table Transactions(T_Id varchar(40) primary key, A_Id varchar(60), T_Amount int);
insert into Transactions values("T1001","A001",100000), ("T1002","A002",20000), ("T1003","A003",50000);
select * from Transactions;

create table Loans(L_Id varchar(15) primary key, L_Ammount int, Interest_Rate decimal(5,2));
insert into Loans values("L1001",5000000,0.02), ("L1002",8000000,0.05), ("L1003",1000000000,0.05);
select * from Loans;

alter table Accounts add constraint foreign key(C_Id) references Customers(C_Id);
alter table Accounts add constraint foreign key(B_Id) references Branches(B_Id);
alter table Accounts add constraint foreign key(T_Id) references Transactions(T_Id);
alter table Customers add constraint foreign key(L_Id) references Loans(L_Id);