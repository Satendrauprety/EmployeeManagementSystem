-- Employee Queries
SELECT * FROM EmployeeInfo;
SELECT Emp_name, Salary FROM EmployeeInfo WHERE Salary > 30000;
UPDATE EmployeeInfo SET Salary = Salary + 5000 WHERE Designation='Sales Executive';
DELETE FROM EmployeeInfo WHERE Emp_name='Sandeep Singh';

-- Department Queries
SELECT Dept_name, COUNT(*) AS TotalEmployees 
FROM EmployeeInfo e
JOIN Department d ON e.DeptID=d.DeptID
GROUP BY d.Dept_name;

-- Salary Reports
SELECT * FROM SalaryHistory WHERE EmpID=1;
SELECT Emp_name, Salary FROM EmployeeInfo WHERE Salary = (SELECT MAX(Salary) FROM EmployeeInfo);

-- Attendance Reports
SELECT EmpID, COUNT(*) AS PresentDays FROM Attendance WHERE Status='Present' GROUP BY EmpID;

-- Project Reports
SELECT e.Emp_name, p.ProjectName, p.Role
FROM EmployeeInfo e
JOIN ProjectAssignments p ON e.EmpID=p.EmpID;
