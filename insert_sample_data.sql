-- 1. Departments Table mein data daalein
INSERT INTO Departments (DeptID, DeptName, Location) VALUES
(101, 'Python Development', 'Noida'),
(102, 'Data Analytics', 'Gurgaon'),
(103, 'Human Resources', 'Noida'),
(104, 'IT Support', 'Gurgaon');

-- 2. Employees Table mein data daalein
-- Yahan humne Satendra (Manager) aur baki employees ka data dala hai
INSERT INTO Employees (EmpID, FirstName, LastName, DeptID, Role, HireDate) VALUES
(1, 'Satendra', 'Uprety', 101, 'Senior Developer', '2023-01-15'),
(2, 'Amit', 'Sharma', 101, 'Python Intern', '2024-02-10'),
(3, 'Priya', 'Singh', 102, 'Data Analyst', '2023-05-20'),
(4, 'Vikram', 'Yadav', 102, 'SQL Expert', '2023-11-01'),
(5, 'Neha', 'Verma', 103, 'HR Manager', '2022-08-15');

-- 3. Salaries Table mein data daalein (Taaki Advanced Queries kaam karein)
INSERT INTO Salaries (EmpID, BaseSalary, Bonus, PaymentDate) VALUES
(1, 85000.00, 5000.00, '2024-03-31'),
(2, 25000.00, 0.00, '2024-03-31'),
(3, 60000.00, 3000.00, '2024-03-31'),
(4, 70000.00, 4500.00, '2024-03-31'),
(5, 55000.00, 2000.00, '2024-03-31');
