SELECT *
FROM SQLTutorial.dbo.EmployeeDemographics

UPDATE SQLTutorial.dbo.EmployeeDemographics

SET EmployeeID = 1012, Age = 31, Gender = 'Female'
WHERE FirstName = 'Holly' AND LastName = 'Flax'