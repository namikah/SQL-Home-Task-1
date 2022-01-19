CREATE DATABASE Company

USE Company

CREATE TABLE Employers(
id int,
Name nvarchar(30),
Surname nvarchar(50),
Age int,
Salary int,
Position nvarchar(50)
)

INSERT INTO Employers
VALUES	(1,'Namik','Heydarov',34,1900,'Senior Specialist'),
		(2,'Elvin','Aliyev',21,1200,'HR Specialist'),
		(3,'Samir','Memmedov',27,1300,'IT Specialist'),
		(4,'Elnur','Teymurov',29,800,'Credit Specialist'),
		(5,'Ahmed','Cafarov',40,2500,'Manager')

SELECT MIN(Salary) 'Minimum Salary' FROM Employers
SELECT MAX(Salary) 'Maximum Salary' FROM Employers
SELECT AVG(Salary) 'Average Salary' FROM Employers
SELECT Name, Surname, Salary FROM Employers WHERE Salary > (SELECT AVG(Salary) FROM Employers)