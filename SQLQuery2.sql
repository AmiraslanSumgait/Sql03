--1. Print departments table but arrange its fields in the reverse order.


SELECT * FROM Departments
ORDER BY Financing DESC,Name DESC


--2. Print group names and their ratings using “Group Name”
--and “Group Rating”, respectively, as names of the fields.SELECT Name AS GroupName FROM Groups SELECT Rating AS GroupRating FROM Groups --3. Print for the teachers their surname, percentage of wage rate
--to premium ratio and percentage of wage rate to the salary ratio
--(the amount of wage rate and premium)
Select Surname,Premium/WageRate*100 FROM Teachers


--4. Print the faculty table as a single field in the following format:
--"The dean of faculty [faculty] is [dean]".


 SELECT 'The dean of faculty '+ Name + ' Is '+Dean FROM Faculties


-- 5. Identify names of the teachers who are professors and whose
--wage rate exceeds 1050.


SELECT *FROM Teachers
WHERE Professor=1 AND WageRate>1050


--6. Print names of the departments whose funding is less than
--11,000 or more than 25,000


SELECT * FROM Departments
WHERE Financing BETWEEN 11000 AND 25000


--7. Print names of faculties other than Computer Science.


SELECT * FROM Faculties
WHERE Name <> 'Computer Science'

--8. Print names and positions of teachers who are not professors.


SELECT Name,Position FROM Teachers
WHERE Professor<>1


--9. Print surnames, positions, wage rates, and premia of assistants
--whose premium is in the range from 160 to 550.


SELECT Surname,Position,WageRate,Premium FROM Teachers
WHERE Premium  BETWEEN 160 AND 550


--10.Print surnames and wage rates of assistants.


SELECT Surname,WageRate FROM Teachers
WHERE Assistant=1


--11.Print surnames and positions of the teachers who were hired
--before 01.01.2000


SELECT Surname,Position FROM Teachers
WHERE EmploymentDate<'2000'


--12.Print names of the departments in alphabetical order up
--to  the  Software Development Department. The output field
--should be named "Name of Department"


SELECT  NAME AS [Name Of Department]  FROM Departments
ORDER BY Name ASC


--13.Print names of the assistants whose salary (amount of wage
--rate and premium) is not more than 1200.SELECT Name FROM Teachers
WHERE Assistant=1 AND Premium<1200 AND WageRate<1200


--14.Print names of groups of the 5th year whose rating is in the range
--from 2 to 4.


SELECT Name FROM Groups
WHERE [Year]=4 AND Rating BETWEEN 2 AND 4


--15.Print names of assistants whose wage rate is less than 550 or
--premium is less than 200.SELECT Name FROM Teachers
WHERE Assistant=1 AND Premium<200 AND WageRate<550