--Subqueries 


SELECT * 
FROM EmployeeSalary

-- Subquery SELECT

SELECT EmployeeID, Salary, (SELECT AVG (Salary) FROM EmployeeSalary) AS ALLAverageSal
FROM EmployeeSalary

-- Partition By

SELECT EmployeeID, Salary,  AVG (Salary) OVER () AS ALLAverageSal
FROM EmployeeSalary


-- Group doesn't work

SELECT EmployeeID, Salary,  AVG (Salary) OVER () AS ALLAverageSal
FROM EmployeeSalary
GROUP BY EmployeeID, Salary
ORDER BY 1,2 

-- Subquery FROM
SELECT A.EmployeeID, A.ALLAverageSal
FROM (SELECT EmployeeID, Salary,  AVG (Salary) OVER () AS ALLAverageSal
	  FROM EmployeeSalary) AS A


-- Subwery WHERE

SELECT EmployeeID, JobTitle, Salary
FROM EmployeeSalary
WHERE  EmployeeID IN (
			SELECT EmployeeID
			FROM EmployeeDemographics
			WHERE Age > 30)