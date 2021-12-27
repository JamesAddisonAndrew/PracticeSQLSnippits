SELECT JobTitle, AVG(Salary) AS Average
FROM SQLTutorial.dbo.EmployeeDemographics
INNER JOIN SQLTutorial.dbo.EmployeeSalary
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
WHERE Jobtitle = 'Salesman'
GROUP BY JobTitle