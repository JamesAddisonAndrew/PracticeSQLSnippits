SELECT JobTitle, AVG(Salary) AS AvgSal
FROM SQLTutorial.dbo.EmployeeDemographics
JOIN SQLTutorial.dbo.EmployeeSalary
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
GROUP BY JobTitle 
HAVING AVG(Salary) > 45000
ORDER BY AVG(Salary) 
