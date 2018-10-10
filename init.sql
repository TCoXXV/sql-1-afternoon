-- table people

CREATE TABLE Person (
	ID INTEGER PRIMARY KEY AUTOINCREMENT,
  	Name string,
  	Age integer,
  	Height integer,
  	City string,
  	FavoriteColor string
);

INSERT INTO Person
(Name,Age,Height,City,FavoriteColor)
VALUES
('Bob',18,100,'Phoenix','blue'),
('Carl',19,120,'Tempe','green'),
('John',20,110,'Chandler','grey'),
('Jim',21,115,'Mesa','red'),
('George',22,112,'Scottsdale','black');

SELECT * FROM Person
ORDER by Height DESC;

SELECT * FROM Person
ORDER by Height ASC;

SELECT * FROM Person
ORDER by Age DESC;

SELECT * FROM Person
WHERE Age>20;

SELECT * FROM Person
WHERE Age=18;

SELECT * FROM Person
WHERE Age>20 OR Age<20;

SELECT * FROM Person
WHERE Age<>27;

SELECT * FROM Person
WHERE FavoriteColor<>'red';

SELECT * FROM Person
WHERE FavoriteColor<>'red' AND FavoriteColor<>'blue';


SELECT * FROM Person
WHERE FavoriteColor='orange' OR FavoriteColor='green';

SELECT * FROM Person
WHERE FavoriteColor IN ('orange','green','blue');

SELECT * FROM Person
WHERE FavoriteColor IN ('yellow','purple');


------------------------------------------
-- table orders
------------------------------------------

INSERT INTO Artist
(Name)
VALUES
('New1'),
('New2'),
('New3'),
('New4'),
('New5');

SELECT * FROM Artist
ORDER BY Name DESC LIMIT 10;

SELECT * FROM Artist
ORDER BY Name LIMIT 5;

SELECT * FROM Artist
WHERE Name LIKE 'Black%';

SELECT * FROM Artist
WHERE Name LIKE '%Black%';

------------------------------------------
-- table EMPLOYEE
------------------------------------------

SELECT FirstName, LastName FROM Employee
WHERE City = 'Calgary';

SELECT FirstName, LastName, Max(BirthDate) FROM Employee;

SELECT FirstName, LastName, Min(BirthDate) FROM Employee;

SELECT * FROM Employee
WHERE ReportsTo = 2;

SELECT count(*) FROM Employee
WHERE City = 'Lethbridge';


------------------------------------------
-- table INVOICE
------------------------------------------

SELECT COUNT(*) FROM Invoice
WHERE BillingCountry = 'USA';

SELECT max(Total) FROM Invoice;

SELECT min(Total) FROM Invoice;

SELECT * FROM Invoice
WHERE Total > 5;

SELECT count(*) FROM Invoice
WHERE Total < 5;

SELECT count(*) FROM Invoice
WHERE BillingState IN ('CA','TX','AZ');

SELECT avg(Total) FROM Invoice;

SELECT sum(Total) FROM Invoice;

