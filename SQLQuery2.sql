

 --1. Get empid, firstname, lastname, country, region, city of all employees from USA. 
SELECT  BusinessEntityID,FirstName,LastName,City,CountryRegionName FROM Employees
WHERE CountryRegionName='United States'

--2. Get the number of employees for each specialty.
SELECT JobTitle, Count(JobTitle) AS CountOfSpeciality FROM Employees
GROUP BY JobTitle

--3. Count the number of people for each name.
SELECT FirstName, Count(FirstName) AS CountOfName FROM Employees
GROUP BY FirstName

--4. Get the most common name
SELECT TOP 1 FirstName, Count(FirstName) AS [COUNT] FROM Employees
GROUP BY FirstName 
ORDER BY Count(FirstName) DESC


--5. Get the least common name.
SELECT TOP 1  FirstName, Count(FirstName) AS [COUNT] FROM Employees
GROUP BY FirstName 
ORDER BY Count(FirstName) ASC

--6. Get the top 5 cities where the most workers are.
SELECT TOP 5 City,Count(City) AS [Count] FROM Employees
GROUP BY City
ORDER BY Count(City) DESC

--7. Get the top 5 cities, which have the most unique specialties.
SELECT TOP(5) City, COUNT(DISTINCT JobTitle) AS JobCount FROM Employees
GROUP BY City
ORDER BY JobCount DESC
--8. Issue mailing addresses for emailing to all employees who started working on 1/01/2012.
SELECT EmailAddress FROM Employees
WHERE StartDate='2012-01-01'


--9. Issue statistics in what year how many employees were employed
SELECT YEAR(StartDate)AS [YEAR],Count(StartDate)AS [COUNT] FROM Employees
GROUP BY YEAR(StartDate)

--10. Issue statistics in which year how many workers in which countries were employed.
SELECT YEAR(StartDate)AS [YEAR],Count(StartDate)AS [COUNT],City FROM Employees
GROUP BY YEAR(StartDate),City


