WITH CTE_Employee AS 
(SELECT FirstName, LastName, Gender, Salary, COUNT(gender) 
OVER (PARTITION BY Gender) AS TotalGender,
AVG(Salary) OVER (PARTITION BY Gender) AS AvgSalary
FROM SQLTutorial.dbo.EmployeeDemographics AS EmpDemo
JOIN SQLTutorial.dbo.EmployeeSalary AS EmpSal
	ON EmpDemo.EmployeeID = EmpSal.EmployeeID
WHERE Salary > '45000')

/* Temporary place made for extracting data */ 

Select FirstName, AvgSalary
FROM CTE_Employee --Select Statement will only work directly after CTE--