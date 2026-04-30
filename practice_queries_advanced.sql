-- ========================================================
-- ADVANCED QUERIES (MySQL 8.0+)
-- ========================================================

-- 1. Find the 2nd Highest Salary in the Company
-- (Common interview question to test offset logic)
SELECT DISTINCT BaseSalary 
FROM Salaries 
ORDER BY BaseSalary DESC 
LIMIT 1 OFFSET 1;

-- 2. Rank Employees within each Department by Salary (Window Function)
-- (Dikhata hai ki aapko RANK/DENSE_RANK ki knowledge hai)
SELECT e.FirstName, d.DeptName, s.BaseSalary,
       DENSE_RANK() OVER(PARTITION BY d.DeptName ORDER BY s.BaseSalary DESC) AS SalaryRank
FROM Employees e
JOIN Departments d ON e.DeptID = d.DeptID
JOIN Salaries s ON e.EmpID = s.EmpID;

-- 3. Find Employees earning more than the Company Average (Using CTE)
-- (Complex analysis ko simplify karne ke liye)
WITH AvgSalary AS (
    SELECT AVG(BaseSalary) AS global_avg FROM Salaries
)
SELECT e.FirstName, s.BaseSalary
FROM Employees e
JOIN Salaries s ON e.EmpID = s.EmpID
CROSS JOIN AvgSalary
WHERE s.BaseSalary > AvgSalary.global_avg;

-- 4. Employee Category based on Salary Range (CASE Statement)
-- (Business logic implementation)
SELECT e.FirstName, s.BaseSalary,
       CASE 
            WHEN s.BaseSalary > 70000 THEN 'High Earner'
            WHEN s.BaseSalary BETWEEN 40000 AND 70000 THEN 'Mid Level'
            ELSE 'Entry Level'
       END AS SalaryBracket
FROM Employees e
JOIN Salaries s ON e.EmpID = s.EmpID;
