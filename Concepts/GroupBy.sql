SELECT Gender, Age AS NewAge, COUNT(Gender) AS 'Total Gender'
FROM EmployeeDemographics
WHERE AGE > 31
GROUP BY Gender, Age
/*Count(Gender) is a derived field, meaning it comes from another column and doesn't need to be in the group by*/