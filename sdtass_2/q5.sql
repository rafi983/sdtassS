-- Based on screenshot table: Employee
-- Columns: EmployeeID, FirstName, LastName, Age, Department

-- 1) Show distinct department names
SELECT DISTINCT Department
FROM Employee;

-- 2) Show LastNames sorted by descending ages
SELECT LastName
FROM Employee
ORDER BY Age DESC;

-- 3) Show employee LastName whose age > 30 and department is Marketing
SELECT LastName
FROM Employee
WHERE Age > 30
  AND Department = 'Marketing';

-- 4) Select all employees
SELECT *
FROM Employee;

-- 5) Get employees whose names include 'son'
SELECT *
FROM Employee
WHERE FirstName LIKE '%son%'
   OR LastName  LIKE '%son%';

-- 6) Get the engineers
SELECT *
FROM Employee
WHERE Department = 'Engineering';
