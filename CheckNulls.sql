USE HR_Data;
SELECT Count(*) AS NullMobile FROM HR_DATA WHERE MobileNo is NULL;
ALTER TABLE HR_DATA DROP COLUMN MobileNo;
SELECT Count(*) AS NullLName FROM HR_DATA WHERE LastName is NULL;
SELECT Count(*) AS NULLFname FROM HR_DATA WHERE FirstName is NULL;
SELECT Count(*) AS NULLEmpID FROM HR_DATA WHERE EmpID is NULL;
SELECT Count(*) AS NullPositionID FROM HR_DATA WHERE PositionID is NULL;
SELECT Count(*) AS NULLDepartID FROM HR_DATA WHERE DepartmentID is NULL;
SELECT Count(*) AS NullDoH FROM HR_DATA WHERE DateofHire is NULL;
SELECT Count(*) AS NULLDoB FROM HR_DATA WHERE DOB is NULL;
SELECT Count(*) AS NullRace FROM HR_DATA WHERE RaceDesc is NULL;
SELECT Count(*) AS NullTerm FROM HR_DATA WHERE TermReason is NULL;
SELECT Count(*) AS NullEmpStatus FROM HR_DATA WHERE EmploymentStatus is NULL;
SELECT Count(*) AS NullRecruitScr FROM HR_DATA WHERE RecruitmentSource is NULL;
SELECT Count(*) AS NullPerfScr FROM HR_DATA WHERE PerformanceScore is NULL;
SELECT Count(*) AS NullEngSurvey FROM HR_DATA WHERE EngagementSurvey is NULL;
SELECT Count(*) AS NullEmpSatisf FROM HR_DATA WHERE EmpSatisfaction is NULL;
SELECT Count(*) AS NullLastReview FROM HR_DATA WHERE LastPerformanceReview_Date is NULL;
SELECT Count(*) AS NullAbsc FROM HR_DATA WHERE Absences is NULL;
--Everything is okay!!





