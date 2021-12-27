CREATE TABLE #temp_Employee 
(EmployeeID int,
JobTitle varchar(100),
Salary int)

SELECT * 
FROM #temp_Employee

INSERT INTO #temp_Employee
VALUES
(1001, 'HR', 45000)

INSERT INTO #temp_Employee
SELECT *
FROM SQLTutorial.dbo.EmployeeSalary  --Easy insert of other data--

DROP TABLE IF EXISTS #Temp_Employee2
CREATE TABLE #Temp_Employee2(
JobTitle varchar(50), 
EmployeePerJob int, 
AvgAge int, 
AvgSalary int)

INSERT INTO #Temp_Employee2
SELECT JobTitle, COUNT(JobTitle), AVG(Age), AVG(salary)
FROM SQLTutorial.dbo.EmployeeDemographics AS EmpDemo
JOIN SQLTutorial.dbo.EmployeeSalary AS EmpSal
	ON EmpDemo.EmployeeID = EmpSal.EmployeeID
GROUP BY JobTitle

SELECT * 
FROM #Temp_Employee2