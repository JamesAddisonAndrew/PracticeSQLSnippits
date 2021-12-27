SELECT Gender, Age AS NewAge, COUNT(Gender) AS 'Total Gender'
FROM EmployeeDemographics
GROUP BY Gender, Age
ORDER BY 2 DESC, 3 ASC