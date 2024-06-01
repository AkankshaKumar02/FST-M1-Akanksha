REM   Script: Activity 9 to Activity 11
REM   Activity 6

create table orders( 
    order_no int primary key, purchase_amount float, order_date date, 
    customer_id int, salesman_id int);

INSERT ALL 
    INTO orders VALUES(70001, 150.5, TO_DATE('2012/10/05', 'YYYY/MM/DD'), 3005, 5002)  
    INTO orders VALUES(70009, 270.65, TO_DATE('2012/09/10', 'YYYY/MM/DD'), 3001, 5005) 
    INTO orders VALUES(70002, 65.26, TO_DATE('2012/10/05', 'YYYY/MM/DD'), 3002, 5001) 
    INTO orders VALUES(70004, 110.5, TO_DATE('2012/08/17', 'YYYY/MM/DD'), 3009, 5003) 
    INTO orders VALUES(70007, 948.5, TO_DATE('2012/09/10', 'YYYY/MM/DD'), 3005, 5002) 
    INTO orders VALUES(70005, 2400.6, TO_DATE('2012/07/27', 'YYYY/MM/DD'), 3007, 5001) 
    INTO orders VALUES(70008, 5760, TO_DATE('2012/08/15', 'YYYY/MM/DD'), 3002, 5001) 
    INTO orders VALUES(70010, 1983.43, TO_DATE('2012/10/10', 'YYYY/MM/DD'), 3004, 5006) 
    INTO orders VALUES(70003, 2480.4, TO_DATE('2012/10/10', 'YYYY/MM/DD'), 3009, 5003) 
    INTO orders VALUES(70012, 250.45, TO_DATE('2012/06/27', 'YYYY/MM/DD'), 3008, 5002) 
    INTO orders VALUES(70011, 75.29, TO_DATE('2012/08/17', 'YYYY/MM/DD'), 3003, 5007) 
    INTO orders VALUES(70013, 3045.6, TO_DATE('2012/04/25', 'YYYY/MM/DD'), 3002, 5001) 
SELECT 1 FROM DUAL;

Describe orders


Select * from orders;

Select unique(salesman_id) from orders order by asc;

Select unique(salesman_id) from orders;

Select unique(salesman_id) from orders orderby asc;

create table orders( 
    order_no int primary key, purchase_amount float, order_date date, 
    customer_id int, salesman_id int);

INSERT ALL 
    INTO orders VALUES(70001, 150.5, TO_DATE('2012/10/05', 'YYYY/MM/DD'), 3005, 5002)  
    INTO orders VALUES(70009, 270.65, TO_DATE('2012/09/10', 'YYYY/MM/DD'), 3001, 5005) 
    INTO orders VALUES(70002, 65.26, TO_DATE('2012/10/05', 'YYYY/MM/DD'), 3002, 5001) 
    INTO orders VALUES(70004, 110.5, TO_DATE('2012/08/17', 'YYYY/MM/DD'), 3009, 5003) 
    INTO orders VALUES(70007, 948.5, TO_DATE('2012/09/10', 'YYYY/MM/DD'), 3005, 5002) 
    INTO orders VALUES(70005, 2400.6, TO_DATE('2012/07/27', 'YYYY/MM/DD'), 3007, 5001) 
    INTO orders VALUES(70008, 5760, TO_DATE('2012/08/15', 'YYYY/MM/DD'), 3002, 5001) 
    INTO orders VALUES(70010, 1983.43, TO_DATE('2012/10/10', 'YYYY/MM/DD'), 3004, 5006) 
    INTO orders VALUES(70003, 2480.4, TO_DATE('2012/10/10', 'YYYY/MM/DD'), 3009, 5003) 
    INTO orders VALUES(70012, 250.45, TO_DATE('2012/06/27', 'YYYY/MM/DD'), 3008, 5002) 
    INTO orders VALUES(70011, 75.29, TO_DATE('2012/08/17', 'YYYY/MM/DD'), 3003, 5007) 
    INTO orders VALUES(70013, 3045.6, TO_DATE('2012/04/25', 'YYYY/MM/DD'), 3002, 5001) 
SELECT 1 FROM DUAL;

Describe orders 


Select * from orders 
 
Select unique(salesman_id) from orders order by salesman_id ASC;

Select unique(salesman_id) from orders ORDER BY salesman_id ASC;

Select * from orders;

Select unique(salesman_id) from orders ORDER BY order_date ASC;

Select order_no, order_date from orders ORDER BY order_date ASC;

Select order_no,  purchase_amount from orders ORDER BY  purchase_amount DESC;

Select order_no,  purchase_amount from orders where purchase_amount <500;

Select *from orders where purchase_amount <500;

select * from orders where purchase_amount between 1000 and 2000;

DROP orders;

DROP table orders;

DROP table orders 
-- Create a table named orders 
create table orders( 
    order_no int primary key, purchase_amount float, order_date date, 
    customer_id int, salesman_id int);

INSERT ALL 
    INTO orders VALUES(70001, 150.5, TO_DATE('2012/10/05', 'YYYY/MM/DD'), 3005, 5002)  
    INTO orders VALUES(70009, 270.65, TO_DATE('2012/09/10', 'YYYY/MM/DD'), 3001, 5005) 
    INTO orders VALUES(70002, 65.26, TO_DATE('2012/10/05', 'YYYY/MM/DD'), 3002, 5001) 
    INTO orders VALUES(70004, 110.5, TO_DATE('2012/08/17', 'YYYY/MM/DD'), 3009, 5003) 
    INTO orders VALUES(70007, 948.5, TO_DATE('2012/09/10', 'YYYY/MM/DD'), 3005, 5002) 
    INTO orders VALUES(70005, 2400.6, TO_DATE('2012/07/27', 'YYYY/MM/DD'), 3007, 5001) 
    INTO orders VALUES(70008, 5760, TO_DATE('2012/08/15', 'YYYY/MM/DD'), 3002, 5001) 
    INTO orders VALUES(70010, 1983.43, TO_DATE('2012/10/10', 'YYYY/MM/DD'), 3004, 5006) 
    INTO orders VALUES(70003, 2480.4, TO_DATE('2012/10/10', 'YYYY/MM/DD'), 3009, 5003) 
    INTO orders VALUES(70012, 250.45, TO_DATE('2012/06/27', 'YYYY/MM/DD'), 3008, 5002) 
    INTO orders VALUES(70011, 75.29, TO_DATE('2012/08/17', 'YYYY/MM/DD'), 3003, 5007) 
    INTO orders VALUES(70013, 3045.6, TO_DATE('2012/04/25', 'YYYY/MM/DD'), 3002, 5001) 
SELECT 1 FROM DUAL;

Describe orders 


Select * from orders 
 
-- Get all salesman ids without any repeated values 
Select unique(salesman_id) from orders ORDER BY salesman_id ASC 
 
--Display the order number ordered by date in ascending order 
Select order_no, order_date from orders ORDER BY order_date ASC 
 
-- Display the order number ordered by purchase amount in descending order 
Select order_no,  purchase_amount from orders ORDER BY  purchase_amount DESC 
 
-- Display the full data of orders that have purchase amount less than 500 
Select order_no,  purchase_amount from orders where purchase_amount <500 
Select *from orders where purchase_amount <500 
 
-- Display the full data of orders that have purchase amount between 1000 and 2000. 
select * from orders where purchase_amount between 1000 and 2000;

create table orders( 
    order_no int primary key, purchase_amount float, order_date date, 
    customer_id int, salesman_id int);

INSERT ALL 
    INTO orders VALUES(70001, 150.5, TO_DATE('2012/10/05', 'YYYY/MM/DD'), 3005, 5002)  
    INTO orders VALUES(70009, 270.65, TO_DATE('2012/09/10', 'YYYY/MM/DD'), 3001, 5005) 
    INTO orders VALUES(70002, 65.26, TO_DATE('2012/10/05', 'YYYY/MM/DD'), 3002, 5001) 
    INTO orders VALUES(70004, 110.5, TO_DATE('2012/08/17', 'YYYY/MM/DD'), 3009, 5003) 
    INTO orders VALUES(70007, 948.5, TO_DATE('2012/09/10', 'YYYY/MM/DD'), 3005, 5002) 
    INTO orders VALUES(70005, 2400.6, TO_DATE('2012/07/27', 'YYYY/MM/DD'), 3007, 5001) 
    INTO orders VALUES(70008, 5760, TO_DATE('2012/08/15', 'YYYY/MM/DD'), 3002, 5001) 
    INTO orders VALUES(70010, 1983.43, TO_DATE('2012/10/10', 'YYYY/MM/DD'), 3004, 5006) 
    INTO orders VALUES(70003, 2480.4, TO_DATE('2012/10/10', 'YYYY/MM/DD'), 3009, 5003) 
    INTO orders VALUES(70012, 250.45, TO_DATE('2012/06/27', 'YYYY/MM/DD'), 3008, 5002) 
    INTO orders VALUES(70011, 75.29, TO_DATE('2012/08/17', 'YYYY/MM/DD'), 3003, 5007) 
    INTO orders VALUES(70013, 3045.6, TO_DATE('2012/04/25', 'YYYY/MM/DD'), 3002, 5001) 
SELECT 1 FROM DUAL;

Describe orders 


Select * from orders 
 
-- Get all salesman ids without any repeated values 
Select unique(salesman_id) from orders ORDER BY salesman_id ASC 
 
--Display the order number ordered by date in ascending order 
Select order_no, order_date from orders ORDER BY order_date ASC 
 
-- Display the order number ordered by purchase amount in descending order 
Select order_no,  purchase_amount from orders ORDER BY  purchase_amount DESC 
 
-- Display the full data of orders that have purchase amount less than 500 
Select order_no,  purchase_amount from orders where purchase_amount <500 
Select *from orders where purchase_amount <500 
 
-- Display the full data of orders that have purchase amount between 1000 and 2000. 
select * from orders where purchase_amount between 1000 and 2000;

DROP table orders 
   
-- Create a table named orders 
create table orders( 
    order_no int primary key, purchase_amount float, order_date date, 
    customer_id int, salesman_id int);

INSERT ALL 
    INTO orders VALUES(70001, 150.5, TO_DATE('2012/10/05', 'YYYY/MM/DD'), 3005, 5002)  
    INTO orders VALUES(70009, 270.65, TO_DATE('2012/09/10', 'YYYY/MM/DD'), 3001, 5005) 
    INTO orders VALUES(70002, 65.26, TO_DATE('2012/10/05', 'YYYY/MM/DD'), 3002, 5001) 
    INTO orders VALUES(70004, 110.5, TO_DATE('2012/08/17', 'YYYY/MM/DD'), 3009, 5003) 
    INTO orders VALUES(70007, 948.5, TO_DATE('2012/09/10', 'YYYY/MM/DD'), 3005, 5002) 
    INTO orders VALUES(70005, 2400.6, TO_DATE('2012/07/27', 'YYYY/MM/DD'), 3007, 5001) 
    INTO orders VALUES(70008, 5760, TO_DATE('2012/08/15', 'YYYY/MM/DD'), 3002, 5001) 
    INTO orders VALUES(70010, 1983.43, TO_DATE('2012/10/10', 'YYYY/MM/DD'), 3004, 5006) 
    INTO orders VALUES(70003, 2480.4, TO_DATE('2012/10/10', 'YYYY/MM/DD'), 3009, 5003) 
    INTO orders VALUES(70012, 250.45, TO_DATE('2012/06/27', 'YYYY/MM/DD'), 3008, 5002) 
    INTO orders VALUES(70011, 75.29, TO_DATE('2012/08/17', 'YYYY/MM/DD'), 3003, 5007) 
    INTO orders VALUES(70013, 3045.6, TO_DATE('2012/04/25', 'YYYY/MM/DD'), 3002, 5001) 
SELECT 1 FROM DUAL;

Describe orders 


Select * from orders 
 
-- Get all salesman ids without any repeated values 
Select unique(salesman_id) from orders ORDER BY salesman_id ASC 
 
--Display the order number ordered by date in ascending order 
Select order_no, order_date from orders ORDER BY order_date ASC 
 
-- Display the order number ordered by purchase amount in descending order 
Select order_no,  purchase_amount from orders ORDER BY  purchase_amount DESC 
 
-- Display the full data of orders that have purchase amount less than 500 
Select order_no,  purchase_amount from orders where purchase_amount <500 
Select *from orders where purchase_amount <500 
 
-- Display the full data of orders that have purchase amount between 1000 and 2000. 
select * from orders where purchase_amount between 1000 and 2000;

DROP table orders;

create table orders( 
    order_no int primary key, purchase_amount float, order_date date, 
    customer_id int, salesman_id int);

INSERT ALL 
    INTO orders VALUES(70001, 150.5, TO_DATE('2012/10/05', 'YYYY/MM/DD'), 3005, 5002)  
    INTO orders VALUES(70009, 270.65, TO_DATE('2012/09/10', 'YYYY/MM/DD'), 3001, 5005) 
    INTO orders VALUES(70002, 65.26, TO_DATE('2012/10/05', 'YYYY/MM/DD'), 3002, 5001) 
    INTO orders VALUES(70004, 110.5, TO_DATE('2012/08/17', 'YYYY/MM/DD'), 3009, 5003) 
    INTO orders VALUES(70007, 948.5, TO_DATE('2012/09/10', 'YYYY/MM/DD'), 3005, 5002) 
    INTO orders VALUES(70005, 2400.6, TO_DATE('2012/07/27', 'YYYY/MM/DD'), 3007, 5001) 
    INTO orders VALUES(70008, 5760, TO_DATE('2012/08/15', 'YYYY/MM/DD'), 3002, 5001) 
    INTO orders VALUES(70010, 1983.43, TO_DATE('2012/10/10', 'YYYY/MM/DD'), 3004, 5006) 
    INTO orders VALUES(70003, 2480.4, TO_DATE('2012/10/10', 'YYYY/MM/DD'), 3009, 5003) 
    INTO orders VALUES(70012, 250.45, TO_DATE('2012/06/27', 'YYYY/MM/DD'), 3008, 5002) 
    INTO orders VALUES(70011, 75.29, TO_DATE('2012/08/17', 'YYYY/MM/DD'), 3003, 5007) 
    INTO orders VALUES(70013, 3045.6, TO_DATE('2012/04/25', 'YYYY/MM/DD'), 3002, 5001) 
SELECT 1 FROM DUAL;

Select order_no,  purchase_amount from orders where purchase_amount <500 
Select *from orders where purchase_amount <500 
 
-- Display the full data of orders that have purchase amount between 1000 and 2000. 
select * from orders where purchase_amount between 1000 and 2000;

Select * from orders 
 
-- Get all salesman ids without any repeated values 
Select unique(salesman_id) from orders ORDER BY salesman_id ASC 
 
--Display the order number ordered by date in ascending order 
Select order_no, order_date from orders ORDER BY order_date ASC 
 
-- Display the order number ordered by purchase amount in descending order 
Select order_no,  purchase_amount from orders ORDER BY  purchase_amount DESC 
 
-- Display the full data of orders that have purchase amount less than 500 
Select order_no,  purchase_amount from orders where purchase_amount <500 
Select *from orders where purchase_amount <500 
 
-- Display the full data of orders that have purchase amount between 1000 and 2000. 
select * from orders where purchase_amount between 1000 and 2000;

Select unique(salesman_id) from orders ORDER BY salesman_id ASC 
 
--Display the order number ordered by date in ascending order 
Select order_no, order_date from orders ORDER BY order_date ASC 
 
-- Display the order number ordered by purchase amount in descending order 
Select order_no,  purchase_amount from orders ORDER BY  purchase_amount DESC 
 
-- Display the full data of orders that have purchase amount less than 500 
Select order_no,  purchase_amount from orders where purchase_amount <500 
Select *from orders where purchase_amount <500;

Select order_no,  purchase_amount from orders ORDER BY  purchase_amount DESC;

Select unique(salesman_id) from orders ORDER BY salesman_id ASC;

Select order_no, order_date from orders ORDER BY order_date ASC;

Select order_no,  purchase_amount from orders ORDER BY  purchase_amount DESC 
 
-- Display the full data of orders that have purchase amount less than 500 
Select order_no,  purchase_amount from orders where purchase_amount <500 
Select *from orders where purchase_amount <500;

Select order_no,  purchase_amount from orders ORDER BY purchase_amount DESC;

Select unique(salesman_id) from orders ORDER BY salesman_id ASC 
 
--Display the order number ordered by date in ascending order 
Select order_no, order_date from orders ORDER BY order_date ASC 
 
-- Display the order number ordered by purchase amount in descending order 
Select order_no,  purchase_amount from orders ORDER BY purchase_amount DESC 
 
-- Display the full data of orders that have purchase amount less than 500 
Select order_no,  purchase_amount from orders where purchase_amount <500 
Select *from orders where purchase_amount <500 
 
-- Display the full data of orders that have purchase amount between 1000 and 2000. 
select * from orders where purchase_amount between 1000 and 2000;

Select order_no,  purchase_amount from orders where purchase_amount <500 
Select *from orders where purchase_amount <500;

Select order_no,  purchase_amount from orders where purchase_amount <500 
Select * from orders where purchase_amount <500;

Select order_no,  purchase_amount from orders where purchase_amount < 500;

Select * from orders where purchase_amount < 500;

select * from orders where purchase_amount between 1000 and 2000;

Select unique(salesman_id) from orders ORDER BY salesman_id ASC 
 
--Display the order number ordered by date in ascending order 
Select order_no, order_date from orders ORDER BY order_date ASC 
 
-- Display the order number ordered by purchase amount in descending order 
Select order_no,  purchase_amount from orders ORDER BY purchase_amount DESC 
 
-- Display the full data of orders that have purchase amount less than 500 
Select order_no,  purchase_amount from orders where purchase_amount < 500 
Select * from orders where purchase_amount < 500 
 
-- Display the full data of orders that have purchase amount between 1000 and 2000. 
select * from orders where purchase_amount between 1000 and 2000;

Select order_no,  purchase_amount from orders where purchase_amount < 500 
Select * from orders where purchase_amount < 500 
 
-- Display the full data of orders that have purchase amount between 1000 and 2000 
select * from orders where purchase_amount between 1000 and 2000;

Select unique(salesman_id) from orders ORDER BY salesman_id ASC 
 
--Display the order number ordered by date in ascending order 
Select order_no, order_date from orders ORDER BY order_date ASC 
 
-- Display the order number ordered by purchase amount in descending order 
Select order_no,  purchase_amount from orders ORDER BY purchase_amount DESC;

Select unique(salesman_id) from orders ORDER BY salesman_id ASC;

DROP table orders;

create table orders( 
    order_no int primary key, purchase_amount float, order_date date, 
    customer_id int, salesman_id int);

INSERT ALL 
    INTO orders VALUES(70001, 150.5, TO_DATE('2012/10/05', 'YYYY/MM/DD'), 3005, 5002)  
    INTO orders VALUES(70009, 270.65, TO_DATE('2012/09/10', 'YYYY/MM/DD'), 3001, 5005) 
    INTO orders VALUES(70002, 65.26, TO_DATE('2012/10/05', 'YYYY/MM/DD'), 3002, 5001) 
    INTO orders VALUES(70004, 110.5, TO_DATE('2012/08/17', 'YYYY/MM/DD'), 3009, 5003) 
    INTO orders VALUES(70007, 948.5, TO_DATE('2012/09/10', 'YYYY/MM/DD'), 3005, 5002) 
    INTO orders VALUES(70005, 2400.6, TO_DATE('2012/07/27', 'YYYY/MM/DD'), 3007, 5001) 
    INTO orders VALUES(70008, 5760, TO_DATE('2012/08/15', 'YYYY/MM/DD'), 3002, 5001) 
    INTO orders VALUES(70010, 1983.43, TO_DATE('2012/10/10', 'YYYY/MM/DD'), 3004, 5006) 
    INTO orders VALUES(70003, 2480.4, TO_DATE('2012/10/10', 'YYYY/MM/DD'), 3009, 5003) 
    INTO orders VALUES(70012, 250.45, TO_DATE('2012/06/27', 'YYYY/MM/DD'), 3008, 5002) 
    INTO orders VALUES(70011, 75.29, TO_DATE('2012/08/17', 'YYYY/MM/DD'), 3003, 5007) 
    INTO orders VALUES(70013, 3045.6, TO_DATE('2012/04/25', 'YYYY/MM/DD'), 3002, 5001) 
SELECT 1 FROM DUAL;

Select SUM(purchase_amount) from odrders;

Select SUM(purchase_amount) AS "Purchase Amount SUM" from odrders;

Select SUM(purchase_amount) from orders;

Select SUM(purchase_amount) AS "Purchase Amount SUM" from orders;

select AVG(purchase_amount) AS "Purchase Amount Average" from orders;

select MAX(purchase_amount) AS "Purchase Amount Maximum" from orders;

select MIN(purchase_amount) AS "Purchase Amount Minumum" from orders;

select COUNT(distinct salesman_id) AS "Total Salesmans count" from orders;

select MAX(purchase_amount),customer_id from order order by customer_id ;

select MAX(purchase_amount),customer_id from order order by customer_id ;

select MAX(purchase_amount),customer_id from orders order by customer_id ;

select customer_id,MAX(purchase_amount) from orders order by customer_id ;

select customer_id,MAX(purchase_amount) from orders group by customer_id ;

SELECT salesman_id, order_date, MAX(purchase_amount) AS "Max Amount" FROM orders WHERE order_date=To_DATE('2012/08/17', 'YYYY/MM/DD') GROUP BY salesman_id;

SELECT salesman_id, order_date, MAX(purchase_amount) AS "Max Amount" FROM orders WHERE order_date = To_DATE('2012/08/17', 'YYYY/MM/DD') GROUP BY salesman_id,order_date;

SELECT customer_id, order_date, MAX(purchase_amount) AS "Max Amount" FROM orders 
GROUP BY customer_id, order_date 
HAVING MAX(purchase_amount) IN(2030, 3450, 5760, 6000);

create table customers ( 
    customer_id int primary key, customer_name varchar(32), 
    city varchar(20), grade int, salesman_id int);

INSERT ALL 
    INTO customers VALUES (3002, 'Nick Rimando', 'New York', 100, 5001) 
    INTO customers VALUES (3007, 'Brad Davis', 'New York', 200, 5001) 
    INTO customers VALUES (3005, 'Graham Zusi', 'California', 200, 5002) 
    INTO customers VALUES (3008, 'Julian Green', 'London', 300, 5002) 
    INTO customers VALUES (3004, 'Fabian Johnson', 'Paris', 300, 5006) 
    INTO customers VALUES (3009, 'Geoff Cameron', 'Berlin', 100, 5003) 
    INTO customers VALUES (3003, 'Jozy Altidor', 'Moscow', 200, 5007) 
    INTO customers VALUES (3001, 'Brad Guzan', 'London', 300, 5005) 
SELECT 1 FROM DUAL;

Select * from customers;

create table orders( 
    order_no int primary key, purchase_amount float, order_date date, 
    customer_id int, salesman_id int);

INSERT ALL 
    INTO orders VALUES(70001, 150.5, TO_DATE('2012/10/05', 'YYYY/MM/DD'), 3005, 5002)  
    INTO orders VALUES(70009, 270.65, TO_DATE('2012/09/10', 'YYYY/MM/DD'), 3001, 5005) 
    INTO orders VALUES(70002, 65.26, TO_DATE('2012/10/05', 'YYYY/MM/DD'), 3002, 5001) 
    INTO orders VALUES(70004, 110.5, TO_DATE('2012/08/17', 'YYYY/MM/DD'), 3009, 5003) 
    INTO orders VALUES(70007, 948.5, TO_DATE('2012/09/10', 'YYYY/MM/DD'), 3005, 5002) 
    INTO orders VALUES(70005, 2400.6, TO_DATE('2012/07/27', 'YYYY/MM/DD'), 3007, 5001) 
    INTO orders VALUES(70008, 5760, TO_DATE('2012/08/15', 'YYYY/MM/DD'), 3002, 5001) 
    INTO orders VALUES(70010, 1983.43, TO_DATE('2012/10/10', 'YYYY/MM/DD'), 3004, 5006) 
    INTO orders VALUES(70003, 2480.4, TO_DATE('2012/10/10', 'YYYY/MM/DD'), 3009, 5003) 
    INTO orders VALUES(70012, 250.45, TO_DATE('2012/06/27', 'YYYY/MM/DD'), 3008, 5002) 
    INTO orders VALUES(70011, 75.29, TO_DATE('2012/08/17', 'YYYY/MM/DD'), 3003, 5007) 
    INTO orders VALUES(70013, 3045.6, TO_DATE('2012/04/25', 'YYYY/MM/DD'), 3002, 5001) 
SELECT 1 FROM DUAL;

Select * from orders;

Select * from salesman;

CREATE TABLE salesman(salesman_id int,salesman_name varchar2(20),salesman_city varchar2(20),commission int);

INSERT INTO salesman VALUES(5002, 'Nail Knite', 'Paris', 13);

INSERT ALL 
    INTO salesman VALUES(5005, 'Pit Alex', 'London', 11) 
    INTO salesman VALUES(5006, 'McLyon', 'Paris', 14) 
    INTO salesman VALUES(5007, 'Paul Adam', 'Rome', 13) 
    INTO salesman VALUES(5003, 'Lauson Hen', 'San Jose', 12) 
SELECT 1 FROM DUAL;

select * from salesman 
select * from orders 
select * from customers;

select * from salesman;

select * from orders;

select * from customers;

select * from salesman;

select * from salesma;

select * from salesman;

select * from orders;

select * from customers;

select A.salesman_id,A.customer_name from salesman From customer A INNER JOIN salesman b ON a.salesman_id=b.salesman_id;

create table customers ( 
    customer_id int primary key, customer_name varchar(32), 
    city varchar(20), grade int, salesman_id int);

INSERT ALL 
    INTO customers VALUES (3002, 'Nick Rimando', 'New York', 100, 5001) 
    INTO customers VALUES (3007, 'Brad Davis', 'New York', 200, 5001) 
    INTO customers VALUES (3005, 'Graham Zusi', 'California', 200, 5002) 
    INTO customers VALUES (3008, 'Julian Green', 'London', 300, 5002) 
    INTO customers VALUES (3004, 'Fabian Johnson', 'Paris', 300, 5006) 
    INTO customers VALUES (3009, 'Geoff Cameron', 'Berlin', 100, 5003) 
    INTO customers VALUES (3003, 'Jozy Altidor', 'Moscow', 200, 5007) 
    INTO customers VALUES (3001, 'Brad Guzan', 'London', 300, 5005) 
SELECT 1 FROM DUAL;

create table orders( 
    order_no int primary key, purchase_amount float, order_date date, 
    customer_id int, salesman_id int);

INSERT ALL 
    INTO orders VALUES(70001, 150.5, TO_DATE('2012/10/05', 'YYYY/MM/DD'), 3005, 5002)  
    INTO orders VALUES(70009, 270.65, TO_DATE('2012/09/10', 'YYYY/MM/DD'), 3001, 5005) 
    INTO orders VALUES(70002, 65.26, TO_DATE('2012/10/05', 'YYYY/MM/DD'), 3002, 5001) 
    INTO orders VALUES(70004, 110.5, TO_DATE('2012/08/17', 'YYYY/MM/DD'), 3009, 5003) 
    INTO orders VALUES(70007, 948.5, TO_DATE('2012/09/10', 'YYYY/MM/DD'), 3005, 5002) 
    INTO orders VALUES(70005, 2400.6, TO_DATE('2012/07/27', 'YYYY/MM/DD'), 3007, 5001) 
    INTO orders VALUES(70008, 5760, TO_DATE('2012/08/15', 'YYYY/MM/DD'), 3002, 5001) 
    INTO orders VALUES(70010, 1983.43, TO_DATE('2012/10/10', 'YYYY/MM/DD'), 3004, 5006) 
    INTO orders VALUES(70003, 2480.4, TO_DATE('2012/10/10', 'YYYY/MM/DD'), 3009, 5003) 
    INTO orders VALUES(70012, 250.45, TO_DATE('2012/06/27', 'YYYY/MM/DD'), 3008, 5002) 
    INTO orders VALUES(70011, 75.29, TO_DATE('2012/08/17', 'YYYY/MM/DD'), 3003, 5007) 
    INTO orders VALUES(70013, 3045.6, TO_DATE('2012/04/25', 'YYYY/MM/DD'), 3002, 5001) 
SELECT 1 FROM DUAL;

CREATE TABLE salesman(salesman_id int,salesman_name varchar2(20),salesman_city varchar2(20),commission int) 
INSERT INTO salesman VALUES(5002, 'Nail Knite', 'Paris', 13);

INSERT ALL 
    INTO salesman VALUES(5005, 'Pit Alex', 'London', 11) 
    INTO salesman VALUES(5006, 'McLyon', 'Paris', 14) 
    INTO salesman VALUES(5007, 'Paul Adam', 'Rome', 13) 
    INTO salesman VALUES(5003, 'Lauson Hen', 'San Jose', 12) 
SELECT 1 FROM DUAL;

select * from salesman 
select * from orders 
select * from customers 
 
select A.salesman_id,A.customer_name  From customer A INNER JOIN salesman b ON a.salesman_id=b.salesman_id;

select A.salesman_id,A.customer_name  From customer A INNER JOIN salesman b ON a.salesman_id=b.salesman_id;

select A.salesman_id,A.customer_name  From customers A INNER JOIN salesman b ON a.salesman_id=b.salesman_id;

select a.salesman_id,b.name AS SALESMAN_NAME ,a.customer_name,  From customers A INNER JOIN salesman b ON a.salesman_id=b.salesman_id;

select a.salesman_id,b.name AS "SALESMAN_NAME" ,a.customer_name,  From customers A INNER JOIN salesman b ON a.salesman_id=b.salesman_id;

select a.customer_name,a.salesman_id,b.name AS "SALESMAN_NAME" From customers A INNER JOIN salesman b ON a.salesman_id=b.salesman_id;

select a.customer_name,a.salesman_id,b.salesman_name  From customers A INNER JOIN salesman b ON a.salesman_id=b.salesman_id;

SELECT a.customer_name, a.grade, b.salesman_name  FROM customers a  
LEFT OUTER JOIN salesman b ON a.salesman_id=b.salesman_id WHERE a.grade<300  
ORDER BY a.customer_id;

SELECT a.customer_name AS "Customer Name", a.city, b.name AS "Salesman", b.commission FROM customers a  
INNER JOIN salesman b ON a.salesman_id=b.salesman_id  
WHERE b.commission>12;

SELECT a.customer_name b.salesman_name , b.commission FROM customers a  
INNER JOIN salesman b ON a.salesman_id=b.salesman_id  
WHERE b.commission>12;

SELECT a.customer_name, b.salesman_name , b.commission FROM customers a  
INNER JOIN salesman b ON a.salesman_id=b.salesman_id  
WHERE b.commission>12;

SELECT a.order_no, a.order_date, a.purchase_amount, b.customer_name , b.grade, c.salesman_name , c.commission FROM orders a  
INNER JOIN customers b ON a.customer_id=b.customer_id  
INNER JOIN salesman c ON a.salesman_id=c.salesman_id;

SELECT * FROM orders WHERE salesman_id=(SELECT DISTINCT salesman_id FROM orders WHERE customer_id=3007);

SELECT order_no, purchase_amount, order_date, salesman_id FROM orders 
WHERE salesman_id IN( SELECT salesman_id FROM salesman 
WHERE commission=( SELECT MAX(commission) FROM salesman));

SELECT * FROM orders WHERE salesman_id=(SELECT DISTINCT salesman_id FROM orders WHERE customer_id=3007);

SELECT * FROM orders WHERE salesman_id IN (SELECT salesman_id FROM salesman WHERE city='New York');

SELECT grade, COUNT(*) FROM customers GROUP BY grade HAVING grade>(SELECT AVG(grade) FROM customers WHERE city='New York');

SELECT order_no, purchase_amount, order_date, salesman_id FROM orders WHERE salesman_id IN( SELECT salesman_id FROM salesman 
WHERE commission=( SELECT MAX(commission) FROM salesman));

SELECT grade, COUNT(*) FROM customers GROUP BY grade HAVING grade>(SELECT AVG(grade) FROM customers WHERE city='New York');

SELECT * FROM orders WHERE salesman_id IN (SELECT salesman_id FROM salesman WHERE city='New York');

SELECT order_no, purchase_amount, order_date, salesman_id FROM orders WHERE salesman_id IN( SELECT salesman_id FROM salesman 
WHERE commission=( SELECT MAX(commission) FROM salesman));

SELECT customer_id, customer_name FROM customers a 
WHERE 1<(SELECT COUNT(*) FROM orders b WHERE a.customer_id = b.customer_id) 
UNION 
SELECT salesman_id, name FROM salesman a 
WHERE 1<(SELECT COUNT(*) FROM orders b WHERE a.salesman_id = b.salesman_id) 
ORDER BY customer_name;

SELECT customer_id, customer_name FROM customers a  
WHERE 1<(SELECT COUNT(*) FROM orders b WHERE a.customer_id = b.customer_id)  
UNION  
SELECT salesman_id, name FROM salesman a  
WHERE 1<(SELECT COUNT(*) FROM orders b WHERE a.salesman_id = b.salesman_id)  
ORDER BY customer_name;

SELECT customer_id, customer_name FROM customers a  
WHERE 1<(SELECT COUNT(*) FROM orders b WHERE a.customer_id = b.customer_id)  
UNION  
SELECT salesman_id, salesman_name FROM salesman a  
WHERE 1<(SELECT COUNT(*) FROM orders b WHERE a.salesman_id = b.salesman_id)  
ORDER BY customer_name;

SELECT a.salesman_id, a.salesman_name, order_no, 'highest on', order_date FROM salesman a, orders b 
WHERE a.salesman_id=b.salesman_id 
AND b.purchase_amount=(SELECT MAX(purchase_amount) FROM orders c WHERE c.order_date = b.order_date) 
UNION 
SELECT a.salesman_id, a.salesman_name, order_no, 'lowest on', order_date FROM salesman a, orders b 
WHERE a.salesman_id=b.salesman_id 
AND b.purchase_amount=(SELECT MIN(purchase_amount) FROM orders c WHERE c.order_date = b.order_date);

