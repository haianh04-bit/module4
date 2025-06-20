create database QuanLyBanHang;
use QuanLyBanHang;
create table Customer(
	CustomerID int not null auto_increment primary key,
    CustomerName varchar(20),
    CustomerAge int
    );
    
create table `Order` (
	OrderID int not null auto_increment primary key,
	CustomerID int,
    OrderDate DateTime,
    OrderTotalPrice int 
    );

create table Product (
	ProductID int not null auto_increment primary key,
    ProductName varchar(20),
    ProductPrice int
    );
    
create table OrderDetail (
	OrderID int,
    ProductID int,
    OrderDetailQTY int
    );

    
    