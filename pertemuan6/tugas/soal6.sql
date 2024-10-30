SELECT E1.Name AS EmployeeName, E2.Name AS ManagerName
FROM Employee E1
LEFT JOIN Employee E2 ON E1.ManagerID = E2.EmployeeID;
