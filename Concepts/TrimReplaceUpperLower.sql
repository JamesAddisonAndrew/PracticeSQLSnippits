CREATE TABLE EmployeeErrors(
EmployeeID varchar(50),
FirstName varchar(50), 
LastName varchar(50)
)

INSERT INTO EmployeeErrors VALUES
('1001', 'Jimbo', 'Halbert'),
('   1002', 'Pamela', 'Beastely'),
('1005', 'TOby', 'Flenderson - Fired')

SELECT * 
FROM EmployeeErrors

UPDATE EmployeeErrors
SET EmployeeID =  '1001   '
WHERE EmployeeID = '1001'

--Trim, LTRIM, RTRIM

SELECT EmployeeID, TRIM(EmployeeID) AS IDTRIM
FROM EmployeeErrors

SELECT EmployeeID, RTRIM(EmployeeID) AS IDTRIM
FROM EmployeeErrors

SELECT EmployeeID, LTRIM(EmployeeID) AS IDTRIM
FROM EmployeeErrors

--Replace

SELECT LastName, REPLACE(LastName, '- Fired','') AS LastNameFixed
FROM EmployeeErrors

--Substring
SELECT SUBSTRING(FirstName, 1, 3)
FROM EmployeeErrors
--Jim

SELECT SUBSTRING(FirstName, 3, 3)
FROM EmployeeErrors
--mbo

SELECT SUBSTRING(FirstName, 1, 4)
FROM EmployeeErrors
--Fuzzymatching Alex, Alexander

SELECT SUBSTRING(ERR.FirstName, 1,3) AS MiniFirst , SUBSTRING (DEMO.FirstName, 1,3) AS MiniLast
FROM EmployeeErrors AS ERR
JOIN SQLTutorial.dbo.EmployeeDemographics AS DEMO
	ON SUBSTRING(ERR.FirstName, 1,3) = SUBSTRING (DEMO.FirstName, 1,3) 
--More Fuzzymatch

SELECT FirstName, LOWER(FirstName)
FROM EmployeeErrors

SELECT FirstName, UPPER(FirstName)
FROM EmployeeErrors

-- Upper and Lower
