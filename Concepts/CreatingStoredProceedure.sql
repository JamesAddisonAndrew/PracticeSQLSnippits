--Stored Procedures

CREATE PROCEDURE TEST 
AS 
SELECT * 
FROM EmployeeDemographics

EXEC TEST

CREATE PROCEDURE Temp_Employee 
AS 
CREATE TABLE #temp_employee(
JobTitle varchar(100), 
EmployeesPerJob int, 
AvgAge int, 
AvgSalary int)

INSERT INTO #temp_employee
SELECT JobTitle, Count(JobTitle), Avg(Age), Avg(Salary)
FROM SQLTutorial.dbo.EmployeeDemographics AS EDemo
JOIN SQLTutorial.dbo.EmployeeSalary AS ESal
	ON EDemo.EmployeeID = Esal.EmployeeID
GROUP BY JobTitle

SELECT * 
FROM #temp_employee

EXEC Temp_Employee @JobTitle = 'Salesman' 