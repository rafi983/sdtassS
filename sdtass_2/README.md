# MySQL Assignment Solutions

This repository contains answers to a MySQL assignment split by question in separate files.

## File Structure

- `q1.sql` - Create tables with proper relationships (`student`, `library`, `fees`)
- `q2.sql` - Explanation of constraints used in Question 1
- `q3.txt` - Difference between data and information
- `q4.sql` - Why `UPDATE`/`DELETE` may not execute in MySQL and how to enable them

- `q5.sql` - SQL queries based on the Employee table

## Question-Wise Details

## Q1 - Create Tables (15 Marks)

File: `q1.sql`

This file creates:

1. `student`
2. `library`
3. `fees`

### Tables and Relations

- `library.student_id` references `student.student_id`
- `fees.student_id` references `student.student_id`

### Important points included

- Primary keys and auto-increment IDs
- Proper foreign key relationships
- `ON UPDATE CASCADE` and `ON DELETE CASCADE`
- Date and amount validation using `CHECK`

## Q2 - Constraints (5 Marks)

File: `q2.sql`

This file documents the constraints used in Q1:

- `PRIMARY KEY`
- `FOREIGN KEY`
- `NOT NULL`
- `UNIQUE`
- `CHECK`
- `DEFAULT`
- `AUTO_INCREMENT`

It explains where each is applied and why it is used.

## Q3 - Data vs Information (10 Marks)

File: `q3.txt`

This answer explains:

- What data is (raw facts)
- What information is (processed meaningful output)
- Simple examples for exam writing
- Clear key difference summary

## Q4 - UPDATE/DELETE not executing in MySQL (10 Marks)

File: `q4.sql`

This file explains the common reason:

- `SQL_SAFE_UPDATES = 1` (safe update mode enabled)

It also provides SQL commands to:

1. Check current setting
2. Disable safe updates temporarily
3. Run sample `UPDATE` and `DELETE`
4. Re-enable safe mode

## Q5 - Employee Queries (10 Marks each)

File: `q5.sql`

Based on screenshot table `Employee` with columns:

- `EmployeeID`
- `FirstName`
- `LastName`
- `Age`
- `Department`

Included queries:

1. Show distinct department names
2. Show `LastName` sorted by descending `Age`
3. Show `LastName` where `Age > 30` and `Department = 'Marketing'`
4. Select all employees
5. Get employees whose names include `'son'`
6. Get engineers (`Department = 'Engineering'`)

## How to Run (MySQL Workbench)

1. Open MySQL Workbench and connect to your server.
2. Open and execute `q1.sql` first (creates database/tables).
3. Open `q2.sql` and `q3.txt` for written theory answers.
4. Open and execute `q4.sql` for safe update mode demonstration.
5. Open and execute `q5.sql` for employee query answers.

## Suggested Execution Order

1. `q1.sql`
2. `q2.sql`
3. `q3.txt`
4. `q4.sql`
5. `q5.sql`

## Notes

- `q5.sql` assumes a table named `Employee` 
- If your actual table name or column names differ, update query identifiers accordingly.
- Keep string values in single quotes (e.g., `'Marketing'`, `'Engineering'`).

## Quick Submission Checklist

- [ ] `q1.sql` contains table creation + relations
- [ ] `q2.sql` contains constraints explanation
- [ ] `q3.txt` contains data vs information answer
- [ ] `q4.sql` contains safe update mode explanation + code
- [ ] `q5.sql` contains all screenshot-based queries

---
Prepared as a clean, question-wise MySQL assignment solution set.
