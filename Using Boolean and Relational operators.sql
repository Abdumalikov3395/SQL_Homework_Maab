--Using Boolean and Relational operators

---------Task 1
--select * from customer
--where grade>100

---------Task 2
--select * from customer
--where grade>100 and city='New York'

---------Task 3
--select * from customer
--where grade>100 or city='New York'

---------Task 4
--select * from customer
--where  city='New York' or not grade>100

---------Task 5
--select * from customer
--where not city='New York' and not grade>100

-----------Task 6
--select * from orders
--where (ord_date='2012-09-10' and salesman_id>100) 
--or purch_amt>1000

-----------Task 7
--select * from Salesman
--where commission between 0.1 and 0.12

-----------Task 8
--select * from orders
--where ord_date<='2012-02-10' or purch_amt>200

-----------Task 9
--select * from orders
--where ord_date<='2012-08-17' 
--or (purch_amt>1000 and customer_id>3005)

-----------Task 10
--select * from orders
--where purch_amt>3000

-----------Task 11
--select * from emp_details
--where EMP_LNAME='Dosni' or EMP_LNAME='Mardy'

-----------Task 12
--select * from emp_details
--where EMP_DEPT=47 or EMP_DEPT=63


