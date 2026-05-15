-- Q2: Constraints used in Question 1 (5 marks)

/*
1) PRIMARY KEY
   - student.student_id
   - library.issue_id
   - fees.fee_id

2) FOREIGN KEY
   - library.student_id references student(student_id)
   - fees.student_id references student(student_id)

3) NOT NULL
   - Mandatory columns like roll_no, full_name, email, department, etc.

4) UNIQUE
   - student.roll_no
   - student.email
   - student.phone

5) CHECK
   - due_date >= issue_date
   - return_date is null OR return_date >= issue_date
   - semester > 0
   - paid_amount <= total_amount and non-negative values

6) DEFAULT
   - student.admission_date default current date
   - fees.paid_amount default 0.00
   - fees.status default 'PENDING'

7) AUTO_INCREMENT
   - IDs are generated automatically for all primary keys.
*/
