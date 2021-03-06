USE [SQLTutorial]
GO
/****** Object:  StoredProcedure [dbo].[Temp_Employee]    Script Date: 3/16/2021 11:41:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[Temp_Employee] 
@JobTitle nvarchar(100)
AS 
CREATE TABLE #temp_employee(
JobTitle varchar(100), 
EmployeesPerJob int, 
AvgAge int, 
AvgSalary int)

INSERT INTO #temp_employee
SELECT JobTitle, Count(JobTitle), Avg(Age), Avg(Salary)
FROM SQLTutorial.dbo.EmployeeDemographics AS EDemo
JOIN SQLTutorial.dbo.EmployeeSalary AS ESal
	ON EDemo.EmployeeID = Esal.EmployeeID
WHERE JobTitle = @JobTitle -- this can go anywhere in code, you dont have to limit yourself on parameters
GROUP BY JobTitle

SELECT * 
FROM #temp_employee