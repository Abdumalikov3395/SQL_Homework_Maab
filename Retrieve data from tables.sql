-------Retrieve data from tables

-------Task 1
--select * from Salesman

-------Task 2
--print 'This is SQL Exercise, Practice and Solution'

-------Task 3
--select 5, 10 , 15

-------Task 4
--select 10+15

-------Task 5
--select 4*5

-------Task 6
--select name, commissions from salesman

-------Task 7
--select ord_date, salesman_id, ord_no, purch_amt from Orders

-------Task 8
--select distinct salesman_id from Orders

-------Task 9
--select name, city from salesman
--where city='Paris'

-------Task 10
--select customer_id, cust_name , city, grade , salesman_id from Customer
--where grade=200

-------Task 11
--select ord_no, ord_date ,purch_amt from orders
--where salesman_id=5001

---------Task 12
--select year ,Subject, winner from Nobel_Prizes
--where year=1970

---------Task 13
--select year ,Subject, winner from Nobel_Prizes
--where Subject='Literature'

---------Task 14
--select year ,Subject from Nobel_Prizes
--where Winner='Dennis Gabor'

---------Task 15
--select winner from Nobel_Prizes
--where Subject='Physics' and Year>1949

---------Task 16
--select * from Nobel_Prizes
--where Subject='Chemistry' and Year>1965 and Year<1975

-----------Task 17
--select * from Nobel_Prizes
--where (Winner='Menachem Begin' or Winner='Yitzhak Rabin') and year>1972

-------------Task 18
--select * from Nobel_Prizes
--where Winner like 'Louis%'

-------------Task 19
--select * from Nobel_Prizes
--where (Subject='Physiology' and year=1970) or
--(Subject='Economics' and year=1971)

-------------Task 20
--select * from Nobel_Prizes
--where (Subject='Physiology' or Subject='Economics')  and year=1970

-------------Task 21
--select * from Nobel_Prizes
--where ((Subject='Physiology' and year>1971) and Subject='Peace')
--or year>1974)

-------------Task 22
--select * from Nobel_Prizes
--where winner='Johannes Georg Bednorz

-------------Task 23
--select * from Nobel_Prizes
--where Subject like 'P%'
--order by year asc , winner desc

---------------Task 24
--select * from Nobel_Prizes
--where year=1970
--order by iif(subject='Chemistry' or subject='Economics',1,0), Subject

---------------Task 25
--select * from item_mast
--where PRO_PRICE between 200 and 600

-------------Task 26
--select avg(pro_price) from item_mast
--where PRO_COM=16

---------------Task 27
--SELECT pro_name as "Item Name", 
--pro_price AS "Price in Rs." from item_mast

---------------Task 28
--select * from item_mast
--where PRO_PRICE>=250

---------------Task 29
--select avg(pro_price),PRO_COM from item_mast
--group by PRO_COM

---------------Task 30
--select * from item_mast
--where PRO_PRICE= (select min(pro_price) from  item_mast)

-------------Task 31
--select  distinct EMP_LNAME from emp_details

-------------Task 32
--select  * from emp_details
--where EMP_LNAME='Snares'

-------------Task 33
--select  * from emp_details
--where EMP_DEPT=57





