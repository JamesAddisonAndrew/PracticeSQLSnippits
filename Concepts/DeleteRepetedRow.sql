WITH CTE AS
(
    SELECT *, ROW_NUMBER() OVER(PARTITION BY EmployeeID, FirstName, LastName, Age, Gender ORDER BY (SELECT NULL)) Seq
    FROM EmployeeDemographics
)
DELETE FROM CTE WHERE Seq > 1
GO