---CROSS JOIN
---Tagastab kõik omavahel olevad read
SELECT c.FirstName, p.EnglishProductName
FROM DimCustomer c
CROSS JOIN DimProduct p

---INNER JOIN
---Tagastab ainult kahes tabelis olevate ridade tabelid. Mitte kattuvad read on eemaldatud.
SELECT c.FirstName, c.LastName, s.SalesAmount
FROM FactInternetSales s
INNER JOIN DimCustomer c
ON s.CustomerKey = c.CustomerKey

---LEFT JOIN
---Tagastab kattuvad read ja kõik mitte-kattuvad read vasakust tabelist
SELECT c.FirstName, c.LastName, s.SalesAmount
FROM DimCustomer c
LEFT JOIN FactInternetSales s
ON c.CustomerKey = s.CustomerKey

---RIGHT JOIN
---Tagastab kõik kattuvad read ja kõik mitte-kaatuvad read paremast tabelist
SELECT p.EnglishProductName, s.SalesAmount
FROM FactInternetSales s
RIGHT JOIN DimProduct p
ON s.ProductKey = p.ProductKey

---FULL JOIN
---Tagastab vasakust ja paremast tabelist ja kõik mitte kattuvad read
SELECT c.FirstName, c.LastName, s.SalesAmount
FROM DimCustomer c
FULL OUTER JOIN FactInternetSales s
ON c.CustomerKey = s.CustomerKey

---TABLE
CREATE TABLE School
(
Id int primary key,
FirstName nvarchar(50),
LastName nvarchar(50),
Subject nvarchar(50),
Grade int,
PhoneNr nvarchar(50)
)

insert into School(Id, FirstName, LastName, Subject, Grade, PhoneNr)
values (1, 'Pets', 'Kuusk', 'IT', 5, '5869439'),
(2, 'Albert', 'Puu', 'Art', 4, '5657456'),
(3, 'Mari', 'Kask', 'Math', 3, '5889439'),
(4, 'Kati', 'Kaubik', 'IT', 4, '5885444'),
(5, 'Peeter', 'Oja', 'Acting', 5, '5213323'),
(6, 'Toomas', 'Auto', 'PE', 5, '57685211'),
(7, 'Paul', 'Mesi', 'Art', 2, '58444331'),
(8, 'Madis', 'Jõgi', 'Math', 5, '51654433'),
(9, 'Jaagup', 'Ilves', 'IT', 4, '52211214'),
(10, 'Hendrik', 'Mänd', 'PE', 4, '5826343')

SELECT * FROM School