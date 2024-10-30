SELECT E.Name AS EmployeeName, S.Salaries AS Salary
FROM Employee E
FULL OUTER JOIN Salaries S ON E.EmployeeID = S.EmployeeID;
