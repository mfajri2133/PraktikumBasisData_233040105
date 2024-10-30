SELECT E.Name AS EmployeeName, P.ProjectName
FROM Employee E
CROSS JOIN Projects P;
