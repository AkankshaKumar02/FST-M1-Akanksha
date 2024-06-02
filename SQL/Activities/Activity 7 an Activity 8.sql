REM   Script: Activity 7 and Activity 8
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
