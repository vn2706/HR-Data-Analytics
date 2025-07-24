USE HR_DATA;
--HR_DATA is the database and it also contains a table of the same name
SELECT * FROM HR_Data;
SELECT * FROM Department;
SELECT * FROM Position;
--Check for duplicate employee entries
SELECT COUNT(EmpID) AS #Rows FROM HR_Data;
SELECT COUNT(DISTINCT EmpID) AS UniqueRows FROM HR_Data;

--Create new useful columns and populate them

ALTER TABLE HR_DATA ADD FullName VARCHAR(255);
UPDATE HR_Data SET FullName = CONCAT(FirstName, ' ', MiddleInitial, ' ', LastName);

--Make sure names are capitalized
UPDATE HR_DATA 
SET FirstName = UPPER(LEFT(FirstName, 1)) + LOWER(SUBSTRING(FirstName, 2, LEN(FirstName)));
UPDATE HR_DATA
SET MiddleInitial = UPPER(LEFT(MiddleInitial, 1));
UPDATE HR_DATA
SET LastName = UPPER(LEFT(LastName, 1)) + LOWER(SUBSTRING(LastName, 2, LEN(LastName)));
SELECT FirstName, MiddleInitial, LastName, FullName FROM HR_Data;
UPDATE HR_Data SET FullName = CONCAT(FirstName, ' ', MiddleInitial, ' ', LastName);
SELECT FirstName, MiddleInitial, LastName, FullName FROM HR_Data;

ALTER TABLE HR_DATA ADD DepartmentName VARCHAR(255);
ALTER TABLE HR_DATA ADD PositionName VARCHAR(255);
UPDATE HR_Data SET HR_DATA.DepartmentName = Department.Department_Name
FROM HR_DATA LEFT JOIN Department ON HR_Data.DepartmentID = Department.DepartmentID;
UPDATE HR_DATA SET HR_DATA.PositionName = Position.Position_Name
FROM HR_DATA LEFT JOIN Position ON HR_DATA.PositionID = Position.Position_ID;