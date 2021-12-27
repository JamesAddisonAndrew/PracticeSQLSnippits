SELECT Gender, Age AS NewAge, COUNT(Gender) AS 'Total Gender'
FROM EmployeeDemographics

GROUP BY Gender, Age
ORDER BY NewAge DESC, Gender DESC