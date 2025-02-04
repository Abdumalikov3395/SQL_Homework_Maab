---Wildcard and Special operators

------Task 1
select * from Salesman
where city='Paris' or city='Rome'

------Task 2
select * from Salesman
where city='Paris' or city='Rome'

------Task 3
select * from Salesman
where  not city='Paris' or not city='Rome'

------Task 4
select * from Customer
where  customer_id in (3007,3008,3009)

------Task 5
select * from Salesman
where  commission between 0.12 and 0.14

------Task 6
select * from orders
where  (purch_amt between 500 and 4000) 
and not purch_amt in (948.50, 1983.43) 

------Task 7
select * from Salesman
where  name like '[B-K]%'

------Task 8
select * from Salesman
where  name not like '[A-M]%'

------Task 9
select * from Customer
where  cust_name  like 'B%'

------Task 10
select * from Customer
where  cust_name  like '%n %'

