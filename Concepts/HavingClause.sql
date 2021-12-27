SELECT JobTitle, COUNT(Jobtitle) 
FROM SQLTutorial.dbo.EmployeeDemographics
JOIN SQLTutorial.dbo.EmployeeSalary
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
GROUP BY JobTitle 
HAVING COUNT(JobTitle)>1 /* Need to have after group by statement b/c needs to be aggrigated before you can look at it.*/
