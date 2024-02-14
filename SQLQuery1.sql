USE AdventureWorks2019
GO

/* Question1 */
SELECT ProductID, Name, Color, ListPrice
FROM Production.Product

/* Question2 */
SELECT ProductID, Name, Color, ListPrice
FROM Production.Product
WHERE ListPrice = 0

/* Question3 */
SELECT ProductID, Name, Color, ListPrice
FROM Production.Product
WHERE Color IS NULL

/* Question4 */
SELECT ProductID, Name, Color, ListPrice
FROM Production.Product
WHERE Color IS NOT NULL

/* Question5 */
SELECT ProductID, Name, Color, ListPrice
FROM Production.Product
WHERE Color IS NOT NULL AND ListPrice > 0

/* Question6 */
SELECT Name + ' ' + Color AS 'color and name'
FROM Production.Product
WHERE Color IS NOT NULL

/* Question7 */
SELECT 'NAME: ' + Name + ' -- ' + 'COLOR:' +  Color AS 'color and name'
FROM Production.Product
WHERE Color IS NOT NULL

/* Question8 */
SELECT ProductID, Name
FROM Production.Product
WHERE ProductID > 400 and ProductID < 500

/* Question9 */
SELECT ProductID, Name, Color
FROM Production.Product
WHERE Color in ('black', 'blue')

/* Question10 */
SELECT *
FROM Production.Product
WHERE Name LIKE 'S%'

/* Question11 */
SELECT Name, ListPrice
FROM Production.Product
ORDER BY Name

/* Question12 */
SELECT Name, ListPrice
FROM Production.Product
WHERE Name LIKE 'S%' OR Name LIKE 'A%'
ORDER BY Name

/* Question13 */
SELECT Name, ListPrice
FROM Production.Product
WHERE Name LIKE 'SPO[^K]%'
ORDER BY Name

/* Question14 */
SELECT DISTINCT Color
FROM Production.Product
ORDER BY Color DESC;

/* Question15 */
SELECT DISTINCT ProductSubcategoryID, Color
FROM Production.Product
WHERE ProductSubcategoryID IS NOT NULL AND Color IS NOT NULL
ORDER BY ProductSubcategoryID ASC, Color ASC;