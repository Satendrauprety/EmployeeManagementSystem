-- Join Queries
SELECT e.Emp_name, e.Designation, d.Dept_name
FROM EmployeeInfo e
JOIN Department d ON e.DeptID = d.DeptID;

SELECT e.Emp_name, p.ProjectName, p.Role
FROM EmployeeInfo e
JOIN ProjectAssignments p ON e.EmpID = p.EmpID;

SELECT e.Emp_name, s.OldSalary, s.NewSalary, s.ChangeDate
FROM EmployeeInfo e
JOIN SalaryHistory s ON e.EmpID = s.EmpID;

-- Aggregate Functions
SELECT d.Dept_name, COUNT(e.EmpID) AS TotalEmployees
FROM EmployeeInfo e
JOIN Department d ON e.DeptID = d.DeptID
GROUP BY d.Dept_name;

SELECT d.Dept_name, AVG(e.Salary) AS AvgSalary
FROM EmployeeInfo e
JOIN Department d ON e.DeptID = d.DeptID
GROUP BY d.Dept_name;

SELECT MAX(Salary) AS MaxSalary FROM EmployeeInfo;

SELECT d.Dept_name, MIN(e.Salary) AS MinSalary
FROM EmployeeInfo e
JOIN Department d ON e.DeptID = d.DeptID
GROUP BY d.Dept_name;

-- Subqueries
SELECT Emp_name, Salary
FROM EmployeeInfo
WHERE Salary > (SELECT AVG(Salary) FROM EmployeeInfo);

SELECT Emp_name, DeptID
FROM EmployeeInfo
WHERE DeptID = (SELECT DeptID 
                FROM EmployeeInfo 
                GROUP BY DeptID 
                ORDER BY COUNT(EmpID) DESC LIMIT 1);

-- CASE Queries
SELECT Emp_name, Age,
       CASE 
           WHEN Age < 25 THEN 'Young'
           WHEN Age BETWEEN 25 AND 35 THEN 'Adult'
           ELSE 'Senior'
       END AS AgeGroup
FROM EmployeeInfo;

SELECT Emp_name, Salary,
       CASE
           WHEN Salary >= 40000 THEN 'High'
           WHEN Salary BETWEEN 30000 AND 39999 THEN 'Medium'
           ELSE 'Low'
       END AS SalaryStatus
FROM EmployeeInfo;

-- Advanced Reports
SELECT e.Emp_name, SUM(s.NewSalary - s.OldSalary) AS TotalIncrease
FROM EmployeeInfo e
JOIN SalaryHistory s ON e.EmpID = s.EmpID
GROUP BY e.Emp_name;

SELECT e.Emp_name, COUNT(a.AttendanceID) AS PresentDays
FROM EmployeeInfo e
JOIN Attendance a ON e.EmpID = a.EmpID
WHERE a.Status='Present'
GROUP BY e.Emp_name
HAVING COUNT(a.AttendanceID) > 20;

SELECT Emp_name
FROM EmployeeInfo
WHERE EmpID NOT IN (SELECT EmpID FROM ProjectAssignments);

SELECT e.Emp_name, COUNT(p.ProjectID) AS ProjectsCount
FROM EmployeeInfo e
JOIN ProjectAssignments p ON e.EmpID = p.EmpID
GROUP BY e.Emp_name
HAVING COUNT(p.ProjectID) > 1;
