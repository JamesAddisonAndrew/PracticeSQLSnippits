SELECT FirstName, LastName, JobTitle, Salary,
CASE 
	WHEN JobTitle = 'Salesman'
	THEN Salary + (Salary * .10)
	WHEN JobTitle = 'Accountant'
	THEN Salary + (Salary * .05)
	WHEN Jobtitle = 'HR' 
	THEN Salary + (Salary * .00001)
	ELSE Salary + (Salary * .03)
END
AS UpdatedSalary


FROM SQLTutorial.dbo.EmployeeDemographics
JOIN SQLTutorial.dbo.EmployeeSalary
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID