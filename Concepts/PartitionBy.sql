SELECT FirstName, LastName, Gender, Salary, 
COUNT(Gender) OVER (PARTITION BY Gender) AS TotalGender
FROM SQLTutorial.dbo.EmployeeDemographics AS DEM
JOIN SQLTutorial.dbo.EmployeeSalary AS SAL
 ON DEM.EmployeeID = SAL.EmployeeID

SELECT  Gender, COUNT(Gender) 
FROM SQLTutorial.dbo.EmployeeDemographics AS DEM
JOIN SQLTutorial.dbo.EmployeeSalary AS SAL
 ON DEM.EmployeeID = SAL.EmployeeID
GROUP BY Gender
