SELECT FirstName, LastName, Age,

CASE 
	WHEN Age > 30
	THEN 'Old'
	WHEN Age BETWEEN 27 AND 30
	THEN 'Young'
	ELSE 'Baby'
END
AS Aging

FROM SQLTutorial.dbo.EmployeeDemographics
WHERE Age IS NOT NULL
ORDER BY Age