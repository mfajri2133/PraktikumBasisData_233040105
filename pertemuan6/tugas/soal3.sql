SELECT P.ProjectName, D.DepartmentName
FROM Projects P
LEFT JOIN Departments D ON P.DepartmentsID = D.DepartmentID;
