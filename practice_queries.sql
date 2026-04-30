-- ========================================================
-- PRACTICE QUERIES (Intermediate Level)
-- ========================================================

-- 1. Get Employee Details with their Department Names
-- (Dikhata hai ki aapko Joins aate hain)
SELECT e.FirstName, e.LastName, d.DeptName, e.Role
FROM Employees e
JOIN Departments d ON e.DeptID = d.DeptID;

-- 2. Find all Employees working in 'Noida'
-- (Specific location filter karne ke liye)
SELECT e.FirstName, e.LastName, d.Location
FROM Employees e
JOIN Departments d ON e.DeptID = d.DeptID
WHERE d.Location = 'Noida';

-- 3. Calculate Department-wise Total Salary Budget
-- (Group By aur Sum ka upyog)
SELECT d.DeptName, SUM(s.BaseSalary + s.Bonus) AS TotalBudget
FROM Employees e
JOIN Departments d ON e.DeptID = d.DeptID
JOIN Salaries s ON e.EmpID = s.EmpID
GROUP BY d.DeptName;

-- 4. List Employees who joined in the last 1 year
-- (Date functions ka istemal)
SELECT FirstName, LastName, HireDate
FROM Employees
WHERE HireDate >= DATE_SUB(CURDATE(), INTERVAL 1 YEAR);
