-- Q4: Why UPDATE/DELETE was not executing in MySQL and how to enable it

/*
Reason:
In MySQL Workbench, SQL Safe Update mode may be ON (SQL_SAFE_UPDATES = 1).
In this mode, UPDATE/DELETE without a key-based WHERE clause is blocked.
*/

-- Check current setting
SELECT @@SQL_SAFE_UPDATES;

-- Disable safe update mode for current session
SET SQL_SAFE_UPDATES = 0;

-- Now UPDATE and DELETE will run
UPDATE student
SET department = 'CSE'
WHERE student_id = 1;

DELETE FROM library
WHERE issue_id = 10;

-- Optional: enable safe mode again
SET SQL_SAFE_UPDATES = 1;
