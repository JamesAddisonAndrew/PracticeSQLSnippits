SELECT EmployeeID, FirstName, Age
FROM SQLTutorial.dbo.EmployeeDemographics
 
UNION

SELECT EmployeeID, JobTitle, Salary
FROM SQLTutorial.dbo.EmployeeSalary
ORDER BY EmployeeID



