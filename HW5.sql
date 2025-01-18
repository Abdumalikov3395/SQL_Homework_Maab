---- �������� ������� Salesman
--CREATE TABLE Salesman (
--    salesman_id INT PRIMARY KEY,
--    name VARCHAR(50) NOT NULL,
--    city VARCHAR(50) NOT NULL,
--    commission DECIMAL(5, 2) NOT NULL
--);

---- ���������� ������� Salesman
--INSERT INTO Salesman (salesman_id, name, city, commission) VALUES
--(5001, 'James Hoog', 'New York', 0.15),
--(5002, 'Nail Knite', 'Paris', 0.13),
--(5005, 'Pit Alex', 'London', 0.11),
--(5006, 'Mc Lyon', 'Paris', 0.14),
--(5007, 'Paul Adam', 'Rome', 0.13),
--(5003, 'Lauson Hen', 'San Jose', 0.12);

---- �������� ������� Customer
--CREATE TABLE Customer (
--    customer_id INT PRIMARY KEY,
--    cust_name VARCHAR(50) NOT NULL,
--    city VARCHAR(50) NOT NULL,
--    grade INT,
--    salesman_id INT NOT NULL,
--    FOREIGN KEY (salesman_id) REFERENCES Salesman(salesman_id)
--);

---- ���������� ������� Customer
--INSERT INTO Customer (customer_id, cust_name, city, grade, salesman_id) VALUES
--(3002, 'Nick Rimando', 'New York', 100, 5001),
--(3007, 'Brad Davis', 'New York', 200, 5001),
--(3005, 'Graham Zusi', 'California', 200, 5002),
--(3008, 'Julian Green', 'London', 300, 5002),
--(3004, 'Fabian Johnson', 'Paris', 300, 5006),
--(3009, 'Geoff Cameron', 'Berlin', 100, 5003),
--(3003, 'Jozy Altidor', 'Moscow', 200, 5007),
--(3001, 'Brad Guzan', 'London', NULL, 5005);

---- �������� ������� Orders
CREATE TABLE Orders (
    ord_no INT PRIMARY KEY,
    purch_amt DECIMAL(10, 2) NOT NULL,
    ord_date DATE NOT NULL,
    customer_id INT NOT NULL,
    salesman_id INT NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES Customer(customer_id),
    FOREIGN KEY (salesman_id) REFERENCES Salesman(salesman_id)
);

-- ���������� ������� Orders
INSERT INTO Orders (ord_no, purch_amt, ord_date, customer_id, salesman_id) VALUES
(70001, 150.5, '2012-10-05', 3005, 5002),
(70009, 270.65, '2012-09-10', 3001, 5005),
(70002, 65.26, '2012-10-05', 3002, 5001),
(70004, 110.5, '2012-08-17', 3009, 5003),
(70007, 948.5, '2012-09-10', 3005, 5002),
(70005, 2400.6, '2012-07-27', 3007, 5001),
(70008, 5760, '2012-09-10', 3002, 5001),
(70010, 1983.43, '2012-10-10', 3004, 5006),
(70003, 2480.4, '2012-10-10', 3009, 5003),
(70012, 250.45, '2012-06-27', 3008, 5002),
(70011, 75.29, '2012-08-17', 3003, 5007),
(70013, 3045.6, '2012-04-25', 3002, 5001);


--------Task 1
--(select customer_id as ID,cust_name as name, 'customer'
--from Customer
--where city='London')
--union all
--(select salesman_id as ID, name , 'salesman'
--from salesman
--where city='London')


--------Task 2

--(select salesman_id as ID, city
--from salesman)
--union
--(select salesman_id as ID,city
--from Customer)


--------Task 3  ++++
(select salesman_id , customer_id
from orders)
union
(select salesman_id , customer_id
from Customer)
order by customer_id

--------Task 4

select salesman_id, ord_no , ord_date, 'highest on'
from orders
where purch_amt=max(purch_amt)
group by ord_date