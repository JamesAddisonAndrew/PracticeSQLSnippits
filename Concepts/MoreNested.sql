SELECT * 
FROM EmployeeDemographics
WHERE NOT EXISTS(
SELECT * 
FROM WareHouseEmployeeDemographics
WHERE EmployeeDemographics.EmployeeID = WareHouseEmployeeDemographics.EmployeeID)