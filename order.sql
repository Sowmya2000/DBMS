create table cust(cust_no number(10),
                    cname varchar2(15),
                    city varchar2(15),
                    primary key(cust_no));
create table Or_der(order_no number(10),
                    odate date,
                    cust_no number(10),
                    order_amount number(10),
                    primary key(order_no),
                    foreign key(cust_no)references cust(cust_no));
drop table Or_der;
desc Or_der;
create table item(item_no number(10),
                  price float,
                  primary key(item_no));
create table order_item(order_no number(10),
                        item_no number(10),
                        qty number(10),
                        primary key(order_no,item_no),
                        foreign key(order_no)references Or_der(order_no),
                        foreign key(item_no)references item(item_no));
create table warehouse(warehouse_no number(10),
                        city varchar2(15),
                        primary key(warehouse_no));
                        
 create table shipment(order_no number(10),
                        warehouse_no number(10),
                        sdate date,
                        primary key(order_no,warehouse_no),
                        foreign key(order_no)references Or_der(order_no),
                        foreign key(warehouse_no)references warehouse(warehouse_no));
insert into cust values(&cust_no,'&cname','&city');
select * from cust;
insert into Or_der values(&order_no,&odate,&cust_no,&order_amount );
select * from Or_der;
insert into item values(&item_no,&price);
select * from item;
insert into order_item values(&order_no,&item_no,&qty); 
select * from order_item;
insert into warehouse values(&warehouse_no,'&city');
select * from warehouse;
insert into shipment values(&order_no,&warehouse_no,'&sdate');
select * from shipment;
