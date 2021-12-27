SELECT EmployeeSalary.EmployeeID, FirstName, LastName, JobTitle, Salary 
FROM SQLTutorial.dbo.EmployeeDemographics
LEFT OUTER JOIN SQLTutorial.dbo.EmployeeSalary
ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
