SELECT *, ROW_NUMBER() 
OVER(PARTITION BY Salary ORDER BY EmployeeID ) AS Row_Num
FROM
	SQLTutorial.dbo.EmployeeSalary
