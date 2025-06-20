use QuanLyBanHang;
insert into Customer
values(1, 'Minh Quan', 10);
insert into Customer
values(2, 'Ngoc Oanh', 20);
insert into Customer
values(3, 'Hong Ha', 30);
insert into order1 (OrderID, CustomerID, OrderDate)
values(1, 1, '2006-12-1' );
insert into order1 (OrderID, CustomerID, OrderDate)
values(2, 2, '2006-3-23');
insert into order1 (OrderID, CustomerID, OrderDate)
values(3, 1, '2006-3-16');
insert into Product
values(1, 'May Giat', 3);
insert into Product
values(2, 'Tu Lanh', 5);
insert into Product
values(3, 'Dieu Hoa', 7);
insert into Product
values(4, 'Quạt', 1);
insert into Product
values(5, 'Bếp Điện',2);
insert into OrderDetail
values(1, 1, 3);
insert into OrderDetail
values(1, 3, 7);
insert into OrderDetail
values(1, 4, 2);
insert into OrderDetail
values(2, 1, 1);
insert into OrderDetail
values(3, 1, 8);
insert into OrderDetail
values(2, 5, 4);
insert into OrderDetail
values(2, 3, 3);
