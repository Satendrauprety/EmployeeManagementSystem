INSERT INTO Department (Dept_name, Location)
VALUES 
('HR','Jaipur'),('Sales','Mumbai'),('IT','Delhi'),('Finance','Chandigarh');

INSERT INTO EmployeeInfo (Emp_name, Address, City, Age, DOJ, Designation, Salary, Mobile, DeptID)
VALUES
('Rahul Sharma','23 Kali Colony','Jaipur',34,'2020-05-03','Manager',44000,'9876543456',1),
('Neha Verma','45 Park Street','Mumbai',26,'2021-07-23','Sales Executive',28000,'9123456789',2),
('Rohit Kumar','22 MG Road','Delhi',32,'2021-01-12','Accountant',35000,'9876543210',4),
('Sandeep Singh','12 Sector 15','Chandigarh',26,'2020-09-23','Technician',28000,'9090909090',3);

INSERT INTO SalaryHistory (EmpID, OldSalary, NewSalary, ChangeDate)
VALUES (1,40000,44000,'2021-05-01');

INSERT INTO Attendance (EmpID, AttendanceDate, Status)
VALUES (1,'2025-11-01','Present'),(2,'2025-11-01','Absent');

INSERT INTO ProjectAssignments (EmpID, ProjectName, StartDate, EndDate, Role)
VALUES (1,'Project Alpha','2025-01-01','2025-06-30','Team Lead');
