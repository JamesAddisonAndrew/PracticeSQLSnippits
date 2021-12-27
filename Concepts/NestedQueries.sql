SELECT EmployeeID, FirstName, LastName
FROM SQLTutorial.dbo.EmployeeDemographics 

WHERE EmployeeID
IN (SELECT EmployeeID
FROM SQLTutorial.dbo.EmployeeSalary
WHERE JobTitle = 'DBA')

AND EmployeeID --OR can be used
IN (SELECT EmployeeID
FROM SQLTutorial.dbo.WareHouseEmployeeDemographics
WHERE Age = 29)
