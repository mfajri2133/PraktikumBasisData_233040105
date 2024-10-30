SELECT E.Name AS EmployeeName, D.DepartmentName
FROM Employee E
INNER JOIN Departments D ON E.DepartmentsID = D.DepartmentID;
