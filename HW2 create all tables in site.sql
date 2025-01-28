-- Таблица salesman
CREATE TABLE salesman (
    salesman_id INT,
    name VARCHAR(50),
    city VARCHAR(50),
    commission DECIMAL(5, 2)
);

INSERT INTO salesman (salesman_id, name, city, commission) VALUES
(5001, 'James Hoog', 'New York', 0.15),
(5002, 'Nail Knite', 'Paris', 0.13),
(5005, 'Pit Alex', 'London', 0.11),
(5006, 'Mc Lyon', 'Paris', 0.14),
(5007, 'Paul Adam', 'Rome', 0.13),
(5003, 'Lauson Hen', 'San Jose', 0.12);

-- Таблица orders
CREATE TABLE orders (
    ord_no INT,
    purch_amt DECIMAL(10, 2),
    ord_date DATE,
    customer_id INT,
    salesman_id INT
);

INSERT INTO orders (ord_no, purch_amt, ord_date, customer_id, salesman_id) VALUES
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

-- Таблица customer
CREATE TABLE customer (
    customer_id INT,
    cust_name VARCHAR(50),
    city VARCHAR(50),
    grade INT,
    salesman_id INT
);

INSERT INTO customer (customer_id, cust_name, city, grade, salesman_id) VALUES
(3002, 'Nick Rimando', 'New York', 100, 5001),
(3007, 'Brad Davis', 'New York', 200, 5001),
(3005, 'Graham Zusi', 'California', 200, 5002),
(3008, 'Julian Green', 'London', 300, 5002),
(3004, 'Fabian Johnson', 'Paris', 300, 5006),
(3009, 'Geoff Cameron', 'Berlin', 100, 5003),
(3003, 'Jozy Altidor', 'Moscow', 200, 5007),
(3001, 'Brad Guzan', 'London', NULL, 5005);

-- Таблица departments
CREATE TABLE departments (
    department_id INT,
    department_name VARCHAR(50),
    manager_id INT,
    location_id INT
);

INSERT INTO departments (department_id, department_name, manager_id, location_id) VALUES
(10, 'Administration', 200, 1700),
(20, 'Marketing', 201, 1800),
(30, 'Purchasing', 114, 1700),
(40, 'Human Resources', 203, 2400),
(50, 'Shipping', 121, 1500),
(60, 'IT', 103, 1400),
(70, 'Public Relations', 204, 2700),
(80, 'Sales', 145, 2500),
(90, 'Executive', 100, 1700),
(100, 'Finance', 108, 1700),
(110, 'Accounting', 205, 1700),
(120, 'Treasury', 0, 1700),
(130, 'Corporate Tax', 0, 1700),
(140, 'Control And Credit', 0, 1700),
(150, 'Shareholder Services', 0, 1700),
(160, 'Benefits', 0, 1700),
(170, 'Manufacturing', 0, 1700),
(180, 'Construction', 0, 1700),
(190, 'Contracting', 0, 1700),
(200, 'Operations', 0, 1700),
(210, 'IT Support', 0, 1700),
(220, 'NOC', 0, 1700),
(230, 'IT Helpdesk', 0, 1700),
(240, 'Government Sales', 0, 1700),
(250, 'Retail Sales', 0, 1700),
(260, 'Recruiting', 0, 1700),
(270, 'Payroll', 0, 1700);

-- Таблица jobs
CREATE TABLE jobs (
    job_id VARCHAR(20),
    job_title VARCHAR(50),
    min_salary INT,
    max_salary INT
);

INSERT INTO jobs (job_id, job_title, min_salary, max_salary) VALUES
('AD_PRES', 'President', 20080, 40000),
('AD_VP', 'Administration Vice President', 15000, 30000),
('AD_ASST', 'Administration Assistant', 3000, 6000),
('FI_MGR', 'Finance Manager', 8200, 16000),
('FI_ACCOUNT', 'Accountant', 4200, 9000),
('AC_MGR', 'Accounting Manager', 8200, 16000),
('AC_ACCOUNT', 'Public Accountant', 4200, 9000),
('SA_MAN', 'Sales Manager', 10000, 20080),
('SA_REP', 'Sales Representative', 6000, 12008),
('PU_MAN', 'Purchasing Manager', 8000, 15000),
('PU_CLERK', 'Purchasing Clerk', 2500, 5500),
('ST_MAN', 'Stock Manager', 5500, 8500),
('ST_CLERK', 'Stock Clerk', 2008, 5000),
('SH_CLERK', 'Shipping Clerk', 2500, 5500),
('IT_PROG', 'Programmer', 4000, 10000),
('MK_MAN', 'Marketing Manager', 9000, 15000),
('MK_REP', 'Marketing Representative', 4000, 9000),
('HR_REP', 'Human Resources Representative', 4000, 9000),
('PR_REP', 'Public Relations Representative', 4500, 10500);

-- Таблица job_history
CREATE TABLE job_history (
    employee_id INT,
    start_date DATE,
    end_date DATE,
    job_id VARCHAR(20),
    department_id INT
);

INSERT INTO job_history (employee_id, start_date, end_date, job_id, department_id) VALUES
(102, '2001-01-13', '2006-07-24', 'IT_PROG', 60),
(101, '1997-09-21', '2001-10-27', 'AC_ACCOUNT', 110),
(101, '2001-10-28', '2005-03-15', 'AC_MGR', 110),
(201, '2004-02-17', '2007-12-19', 'MK_REP', 20),
(114, '2006-03-24', '2007-12-31', 'ST_CLERK', 50),
(122, '2007-01-01', '2007-12-31', 'ST_CLERK', 50),
(200, '1995-09-17', '2001-06-17', 'AD_ASST', 90),
(176, '2006-03-24', '2006-12-31', 'SA_REP', 80),
(176, '2007-01-01', '2007-12-31', 'SA_MAN', 80),
(200, '2002-07-01', '2006-12-31', 'AC_ACCOUNT', 90);

-- Таблица nobel_win
CREATE TABLE nobel_win (
    year INT,
    subject VARCHAR(50),
    winner VARCHAR(100),
    country VARCHAR(50),
    category VARCHAR(50)
);

INSERT INTO nobel_win (year, subject, winner, country, category) VALUES
(1970, 'Physics', 'Hannes Alfven', 'Sweden', 'Scientist'),
(1970, 'Physics', 'Louis Neel', 'France', 'Scientist'),
(1970, 'Chemistry', 'Luis Federico Leloir', 'France', 'Scientist'),
(1970, 'Physiology', 'Ulf von Euler', 'Sweden', 'Scientist'),
(1970, 'Physiology', 'Bernard Katz', 'Germany', 'Scientist'),
(1970, 'Literature', 'Aleksandr Solzhenitsyn', 'Russia', 'Linguist'),
(1970, 'Economics', 'Paul Samuelson', 'USA', 'Economist'),
(1970, 'Physiology', 'Julius Axelrod', 'USA', 'Scientist'),
(1971, 'Physics', 'Dennis Gabor', 'Hungary', 'Scientist'),
(1971, 'Chemistry', 'Gerhard Herzberg', 'Germany', 'Scientist'),
(1971, 'Peace', 'Willy Brandt', 'Germany', 'Chancellor'),
(1971, 'Literature', 'Pablo Neruda', 'Chile', 'Linguist'),
(1971, 'Economics', 'Simon Kuznets', 'Russia', 'Economist'),
(1978, 'Peace', 'Anwar al-Sadat', 'Egypt', 'President'),
(1978, 'Peace', 'Menachem Begin', 'Israel', 'Prime Minister'),
(1987, 'Chemistry', 'Donald J. Cram', 'USA', 'Scientist'),
(1987, 'Chemistry', 'Jean-Marie Lehn', 'France', 'Scientist'),
(1987, 'Physiology', 'Susumu Tonegawa', 'Japan', 'Scientist'),
(1994, 'Economics', 'Reinhard Selten', 'Germany', 'Economist'),
(1994, 'Peace', 'Yitzhak Rabin', 'Israel', 'Prime Minister'),
(1994, 'Peace', 'Shimon Peres', 'Israel', 'President');


CREATE TABLE employees (
    [employee_id] INT,
    [first_name] NVARCHAR(11),
    [last_name] NVARCHAR(11),
    [email] NVARCHAR(8),
    [phone_number] NVARCHAR(18),
    [hire_date] DATE,
    [job_id] NVARCHAR(10),
    [salary] NUMERIC(7, 2),
    [commission_pct] NUMERIC(3, 2),
    [manager_id] INT,
    [department_id] INT
);
INSERT INTO employees VALUES (100,N'Steven',N'King',N'SKING',N'515.123.4567','2003-06-17 00:00:00',N'AD_PRES',24000.00,0.00,0,90),
	(101,N'Neena',N'Kochhar',N'NKOCHHAR',N'515.123.4568','2005-09-21 00:00:00',N'AD_VP',17000.00,0.00,100,90),
	(102,N'Lex',N'De Haan',N'LDEHAAN',N'515.123.4569','2001-01-13 00:00:00',N'AD_VP',17000.00,0.00,100,90),
	(103,N'Alexander',N'Hunold',N'AHUNOLD',N'590.423.4567','2006-01-03 00:00:00',N'IT_PROG',9000.00,0.00,102,60),
	(104,N'Bruce',N'Ernst',N'BERNST',N'590.423.4568','2007-05-21 00:00:00',N'IT_PROG',6000.00,0.00,103,60),
	(105,N'David',N'Austin',N'DAUSTIN',N'590.423.4569','2005-06-25 00:00:00',N'IT_PROG',4800.00,0.00,103,60),
	(106,N'Valli',N'Pataballa',N'VPATABAL',N'590.423.4560','2006-02-05 00:00:00',N'IT_PROG',4800.00,0.00,103,60),
	(107,N'Diana',N'Lorentz',N'DLORENTZ',N'590.423.5567','2007-02-07 00:00:00',N'IT_PROG',4200.00,0.00,103,60),
	(108,N'Nancy',N'Greenberg',N'NGREENBE',N'515.124.4569','2002-08-17 00:00:00',N'FI_MGR',12000.00,0.00,101,100),
	(109,N'Daniel',N'Faviet',N'DFAVIET',N'515.124.4169','2002-08-16 00:00:00',N'FI_ACCOUNT',9000.00,0.00,108,100),
	(110,N'John',N'Chen',N'JCHEN',N'515.124.4269','2005-09-28 00:00:00',N'FI_ACCOUNT',8200.00,0.00,108,100),
	(111,N'Ismael',N'Sciarra',N'ISCIARRA',N'515.124.4369','2005-09-30 00:00:00',N'FI_ACCOUNT',7700.00,0.00,108,100),
	(112,N'Jose Manuel',N'Urman',N'JMURMAN',N'515.124.4469','2006-03-07 00:00:00',N'FI_ACCOUNT',7800.00,0.00,108,100),
	(113,N'Luis',N'Popp',N'LPOPP',N'515.124.4567','2007-12-07 00:00:00',N'FI_ACCOUNT',6900.00,0.00,108,100),
	(114,N'Den',N'Raphaely',N'DRAPHEAL',N'515.127.4561','2002-12-07 00:00:00',N'PU_MAN',11000.00,0.00,100,30),
	(115,N'Alexander',N'Khoo',N'AKHOO',N'515.127.4562','2003-05-18 00:00:00',N'PU_CLERK',3100.00,0.00,114,30),
	(116,N'Shelli',N'Baida',N'SBAIDA',N'515.127.4563','2005-12-24 00:00:00',N'PU_CLERK',2900.00,0.00,114,30),
	(117,N'Sigal',N'Tobias',N'STOBIAS',N'515.127.4564','2005-07-24 00:00:00',N'PU_CLERK',2800.00,0.00,114,30),
	(118,N'Guy',N'Himuro',N'GHIMURO',N'515.127.4565','2006-11-15 00:00:00',N'PU_CLERK',2600.00,0.00,114,30),
	(119,N'Karen',N'Colmenares',N'KCOLMENA',N'515.127.4566','2007-08-10 00:00:00',N'PU_CLERK',2500.00,0.00,114,30),
	(120,N'Matthew',N'Weiss',N'MWEISS',N'650.123.1234','2004-07-18 00:00:00',N'ST_MAN',8000.00,0.00,100,50),
	(121,N'Adam',N'Fripp',N'AFRIPP',N'650.123.2234','2005-04-10 00:00:00',N'ST_MAN',8200.00,0.00,100,50),
	(122,N'Payam',N'Kaufling',N'PKAUFLIN',N'650.123.3234','2003-05-01 00:00:00',N'ST_MAN',7900.00,0.00,100,50),
	(123,N'Shanta',N'Vollman',N'SVOLLMAN',N'650.123.4234','2005-10-10 00:00:00',N'ST_MAN',6500.00,0.00,100,50),
	(124,N'Kevin',N'Mourgos',N'KMOURGOS',N'650.123.5234','2007-11-16 00:00:00',N'ST_MAN',5800.00,0.00,100,50),
	(125,N'Julia',N'Nayer',N'JNAYER',N'650.124.1214','2005-07-16 00:00:00',N'ST_CLERK',3200.00,0.00,120,50),
	(126,N'Irene',N'Mikkilineni',N'IMIKKILI',N'650.124.1224','2006-09-28 00:00:00',N'ST_CLERK',2700.00,0.00,120,50),
	(127,N'James',N'Landry',N'JLANDRY',N'650.124.1334','2007-01-14 00:00:00',N'ST_CLERK',2400.00,0.00,120,50),
	(128,N'Steven',N'Markle',N'SMARKLE',N'650.124.1434','2008-03-08 00:00:00',N'ST_CLERK',2200.00,0.00,120,50),
	(129,N'Laura',N'Bissot',N'LBISSOT',N'650.124.5234','2005-08-20 00:00:00',N'ST_CLERK',3300.00,0.00,121,50),
	(130,N'Mozhe',N'Atkinson',N'MATKINSO',N'650.124.6234','2005-10-30 00:00:00',N'ST_CLERK',2800.00,0.00,121,50),
	(131,N'James',N'Marlow',N'JAMRLOW',N'650.124.7234','2005-02-16 00:00:00',N'ST_CLERK',2500.00,0.00,121,50),
	(132,N'TJ',N'Olson',N'TJOLSON',N'650.124.8234','2007-04-10 00:00:00',N'ST_CLERK',2100.00,0.00,121,50),
	(133,N'Jason',N'Mallin',N'JMALLIN',N'650.127.1934','2004-06-14 00:00:00',N'ST_CLERK',3300.00,0.00,122,50),
	(134,N'Michael',N'Rogers',N'MROGERS',N'650.127.1834','2006-08-26 00:00:00',N'ST_CLERK',2900.00,0.00,122,50),
	(135,N'Ki',N'Gee',N'KGEE',N'650.127.1734','2007-12-12 00:00:00',N'ST_CLERK',2400.00,0.00,122,50),
	(136,N'Hazel',N'Philtanker',N'HPHILTAN',N'650.127.1634','2008-02-06 00:00:00',N'ST_CLERK',2200.00,0.00,122,50),
	(137,N'Renske',N'Ladwig',N'RLADWIG',N'650.121.1234','2003-07-14 00:00:00',N'ST_CLERK',3600.00,0.00,123,50),
	(138,N'Stephen',N'Stiles',N'SSTILES',N'650.121.2034','2005-10-26 00:00:00',N'ST_CLERK',3200.00,0.00,123,50),
	(139,N'John',N'Seo',N'JSEO',N'650.121.2019','2006-02-12 00:00:00',N'ST_CLERK',2700.00,0.00,123,50),
	(140,N'Joshua',N'Patel',N'JPATEL',N'650.121.1834','2006-04-06 00:00:00',N'ST_CLERK',2500.00,0.00,123,50),
	(141,N'Trenna',N'Rajs',N'TRAJS',N'650.121.8009','2003-10-17 00:00:00',N'ST_CLERK',3500.00,0.00,124,50),
	(142,N'Curtis',N'Davies',N'CDAVIES',N'650.121.2994','2005-01-29 00:00:00',N'ST_CLERK',3100.00,0.00,124,50),
	(143,N'Randall',N'Matos',N'RMATOS',N'650.121.2874','2006-03-15 00:00:00',N'ST_CLERK',2600.00,0.00,124,50),
	(144,N'Peter',N'Vargas',N'PVARGAS',N'650.121.2004','2006-07-09 00:00:00',N'ST_CLERK',2500.00,0.00,124,50),
	(145,N'John',N'Russell',N'JRUSSEL',N'011.44.1344.429268','2004-10-01 00:00:00',N'SA_MAN',14000.00,0.40,100,80),
	(146,N'Karen',N'Partners',N'KPARTNER',N'011.44.1344.467268','2005-01-05 00:00:00',N'SA_MAN',13500.00,0.30,100,80),
	(147,N'Alberto',N'Errazuriz',N'AERRAZUR',N'011.44.1344.429278','2005-03-10 00:00:00',N'SA_MAN',12000.00,0.30,100,80),
	(148,N'Gerald',N'Cambrault',N'GCAMBRAU',N'011.44.1344.619268','2007-10-15 00:00:00',N'SA_MAN',11000.00,0.30,100,80),
	(149,N'Eleni',N'Zlotkey',N'EZLOTKEY',N'011.44.1344.429018','2008-01-29 00:00:00',N'SA_MAN',10500.00,0.20,100,80),
	(150,N'Peter',N'Tucker',N'PTUCKER',N'011.44.1344.129268','2005-01-30 00:00:00',N'SA_REP',10000.00,0.30,145,80),
	(151,N'David',N'Bernstein',N'DBERNSTE',N'011.44.1344.345268','2005-03-24 00:00:00',N'SA_REP',9500.00,0.25,145,80),
	(152,N'Peter',N'Hall',N'PHALL',N'011.44.1344.478968','2005-08-20 00:00:00',N'SA_REP',9000.00,0.25,145,80),
	(153,N'Christopher',N'Olsen',N'COLSEN',N'011.44.1344.498718','2006-03-30 00:00:00',N'SA_REP',8000.00,0.20,145,80),
	(154,N'Nanette',N'Cambrault',N'NCAMBRAU',N'011.44.1344.987668','2006-12-09 00:00:00',N'SA_REP',7500.00,0.20,145,80),
	(155,N'Oliver',N'Tuvault',N'OTUVAULT',N'011.44.1344.486508','2007-11-23 00:00:00',N'SA_REP',7000.00,0.15,145,80),
	(156,N'Janette',N'King',N'JKING',N'011.44.1345.429268','2004-01-30 00:00:00',N'SA_REP',10000.00,0.35,146,80),
	(157,N'Patrick',N'Sully',N'PSULLY',N'011.44.1345.929268','2004-03-04 00:00:00',N'SA_REP',9500.00,0.35,146,80),
	(158,N'Allan',N'McEwen',N'AMCEWEN',N'011.44.1345.829268','2004-08-01 00:00:00',N'SA_REP',9000.00,0.35,146,80),
	(159,N'Lindsey',N'Smith',N'LSMITH',N'011.44.1345.729268','2005-03-10 00:00:00',N'SA_REP',8000.00,0.30,146,80),
	(160,N'Louise',N'Doran',N'LDORAN',N'011.44.1345.629268','2005-12-15 00:00:00',N'SA_REP',7500.00,0.30,146,80),
	(161,N'Sarath',N'Sewall',N'SSEWALL',N'011.44.1345.529268','2006-11-03 00:00:00',N'SA_REP',7000.00,0.25,146,80),
	(162,N'Clara',N'Vishney',N'CVISHNEY',N'011.44.1346.129268','2005-11-11 00:00:00',N'SA_REP',10500.00,0.25,147,80),
	(163,N'Danielle',N'Greene',N'DGREENE',N'011.44.1346.229268','2007-03-19 00:00:00',N'SA_REP',9500.00,0.15,147,80),
	(164,N'Mattea',N'Marvins',N'MMARVINS',N'011.44.1346.329268','2008-01-24 00:00:00',N'SA_REP',7200.00,0.10,147,80),
	(165,N'David',N'Lee',N'DLEE',N'011.44.1346.529268','2008-02-23 00:00:00',N'SA_REP',6800.00,0.10,147,80),
	(166,N'Sundar',N'Ande',N'SANDE',N'011.44.1346.629268','2008-03-24 00:00:00',N'SA_REP',6400.00,0.10,147,80),
	(167,N'Amit',N'Banda',N'ABANDA',N'011.44.1346.729268','2008-04-21 00:00:00',N'SA_REP',6200.00,0.10,147,80),
	(168,N'Lisa',N'Ozer',N'LOZER',N'011.44.1343.929268','2005-03-11 00:00:00',N'SA_REP',11500.00,0.25,148,80),
	(169,N'Harrison',N'Bloom',N'HBLOOM',N'011.44.1343.829268','2006-03-23 00:00:00',N'SA_REP',10000.00,0.20,148,80),
	(170,N'Tayler',N'Fox',N'TFOX',N'011.44.1343.729268','2006-01-24 00:00:00',N'SA_REP',9600.00,0.20,148,80),
	(171,N'William',N'Smith',N'WSMITH',N'011.44.1343.629268','2007-02-23 00:00:00',N'SA_REP',7400.00,0.15,148,80),
	(172,N'Elizabeth',N'Bates',N'EBATES',N'011.44.1343.529268','2007-03-24 00:00:00',N'SA_REP',7300.00,0.15,148,80),
	(173,N'Sundita',N'Kumar',N'SKUMAR',N'011.44.1343.329268','2008-04-21 00:00:00',N'SA_REP',6100.00,0.10,148,80),
	(174,N'Ellen',N'Abel',N'EABEL',N'011.44.1644.429267','2004-05-11 00:00:00',N'SA_REP',11000.00,0.30,149,80),
	(175,N'Alyssa',N'Hutton',N'AHUTTON',N'011.44.1644.429266','2005-03-19 00:00:00',N'SA_REP',8800.00,0.25,149,80),
	(176,N'Jonathon',N'Taylor',N'JTAYLOR',N'011.44.1644.429265','2006-03-24 00:00:00',N'SA_REP',8600.00,0.20,149,80),
	(177,N'Jack',N'Livingston',N'JLIVINGS',N'011.44.1644.429264','2006-04-23 00:00:00',N'SA_REP',8400.00,0.20,149,80),
	(178,N'Kimberely',N'Grant',N'KGRANT',N'011.44.1644.429263','2007-05-24 00:00:00',N'SA_REP',7000.00,0.15,149,0),
	(179,N'Charles',N'Johnson',N'CJOHNSON',N'011.44.1644.429262','2008-01-04 00:00:00',N'SA_REP',6200.00,0.10,149,80),
	(180,N'Winston',N'Taylor',N'WTAYLOR',N'650.507.9876','2006-01-24 00:00:00',N'SH_CLERK',3200.00,0.00,120,50),
	(181,N'Jean',N'Fleaur',N'JFLEAUR',N'650.507.9877','2006-02-23 00:00:00',N'SH_CLERK',3100.00,0.00,120,50),
	(182,N'Martha',N'Sullivan',N'MSULLIVA',N'650.507.9878','2007-06-21 00:00:00',N'SH_CLERK',2500.00,0.00,120,50),
	(183,N'Girard',N'Geoni',N'GGEONI',N'650.507.9879','2008-02-03 00:00:00',N'SH_CLERK',2800.00,0.00,120,50),
	(184,N'Nandita',N'Sarchand',N'NSARCHAN',N'650.509.1876','2004-01-27 00:00:00',N'SH_CLERK',4200.00,0.00,121,50),
	(185,N'Alexis',N'Bull',N'ABULL',N'650.509.2876','2005-02-20 00:00:00',N'SH_CLERK',4100.00,0.00,121,50),
	(186,N'Julia',N'Dellinger',N'JDELLING',N'650.509.3876','2006-06-24 00:00:00',N'SH_CLERK',3400.00,0.00,121,50),
	(187,N'Anthony',N'Cabrio',N'ACABRIO',N'650.509.4876','2007-02-07 00:00:00',N'SH_CLERK',3000.00,0.00,121,50),
	(188,N'Kelly',N'Chung',N'KCHUNG',N'650.505.1876','2005-06-14 00:00:00',N'SH_CLERK',3800.00,0.00,122,50),
	(189,N'Jennifer',N'Dilly',N'JDILLY',N'650.505.2876','2005-08-13 00:00:00',N'SH_CLERK',3600.00,0.00,122,50),
	(190,N'Timothy',N'Gates',N'TGATES',N'650.505.3876','2006-07-11 00:00:00',N'SH_CLERK',2900.00,0.00,122,50),
	(191,N'Randall',N'Perkins',N'RPERKINS',N'650.505.4876','2007-12-19 00:00:00',N'SH_CLERK',2500.00,0.00,122,50),
	(192,N'Sarah',N'Bell',N'SBELL',N'650.501.1876','2004-02-04 00:00:00',N'SH_CLERK',4000.00,0.00,123,50),
	(193,N'Britney',N'Everett',N'BEVERETT',N'650.501.2876','2005-03-03 00:00:00',N'SH_CLERK',3900.00,0.00,123,50),
	(194,N'Samuel',N'McCain',N'SMCCAIN',N'650.501.3876','2006-07-01 00:00:00',N'SH_CLERK',3200.00,0.00,123,50),
	(195,N'Vance',N'Jones',N'VJONES',N'650.501.4876','2007-03-17 00:00:00',N'SH_CLERK',2800.00,0.00,123,50),
	(196,N'Alana',N'Walsh',N'AWALSH',N'650.507.9811','2006-04-24 00:00:00',N'SH_CLERK',3100.00,0.00,124,50),
	(197,N'Kevin',N'Feeney',N'KFEENEY',N'650.507.9822','2006-05-23 00:00:00',N'SH_CLERK',3000.00,0.00,124,50),
	(198,N'Donald',N'OConnell',N'DOCONNEL',N'650.507.9833','2007-06-21 00:00:00',N'SH_CLERK',2600.00,0.00,124,50),
	(199,N'Douglas',N'Grant',N'DGRANT',N'650.507.9844','2008-01-13 00:00:00',N'SH_CLERK',2600.00,0.00,124,50),
	(200,N'Jennifer',N'Whalen',N'JWHALEN',N'515.123.4444','2003-09-17 00:00:00',N'AD_ASST',4400.00,0.00,101,10),
	(201,N'Michael',N'Hartstein',N'MHARTSTE',N'515.123.5555','2004-02-17 00:00:00',N'MK_MAN',13000.00,0.00,100,20),
	(202,N'Pat',N'Fay',N'PFAY',N'603.123.6666','2005-08-17 00:00:00',N'MK_REP',6000.00,0.00,201,20),
	(203,N'Susan',N'Mavris',N'SMAVRIS',N'515.123.7777','2002-06-07 00:00:00',N'HR_REP',6500.00,0.00,101,40),
	(204,N'Hermann',N'Baer',N'HBAER',N'515.123.8888','2002-06-07 00:00:00',N'PR_REP',10000.00,0.00,101,70),
	(205,N'Shelley',N'Higgins',N'SHIGGINS',N'515.123.8080','2002-06-07 00:00:00',N'AC_MGR',12000.00,0.00,101,110),
	(206,N'William',N'Gietz',N'WGIETZ',N'515.123.8181','2002-06-07 00:00:00',N'AC_ACCOUNT',8300.00,0.00,205,110);

