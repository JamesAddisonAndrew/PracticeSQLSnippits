SELECT Demo.EmployeeID, Demo.FirstName, Demo.FirstName, Sal.JobTitle, Ware.Age
FROM [SQLTutorial].[dbo].EmployeeDemographics AS Demo
LEFT JOIN [SQLTutorial].[dbo].EmployeeSalary AS Sal
	ON Demo.EmployeeID = Sal.EmployeeID
LEFT JOIN [SQLTutorial].[dbo].WareHouseEmployeeDemographics AS Ware
	ON Demo.EmployeeID = Ware.EmployeeID

--Demo as an alias makes things easier to look at and understand than just a and stuff