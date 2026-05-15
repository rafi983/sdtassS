-- Q1: Create tables (Student, Library, Fees) with proper relations

CREATE DATABASE IF NOT EXISTS college_db;
USE college_db;

CREATE TABLE student (
    student_id      INT AUTO_INCREMENT PRIMARY KEY,
    roll_no         VARCHAR(20) NOT NULL UNIQUE,
    full_name       VARCHAR(100) NOT NULL,
    email           VARCHAR(100) NOT NULL UNIQUE,
    phone           VARCHAR(15) UNIQUE,
    department      VARCHAR(50) NOT NULL,
    admission_date  DATE NOT NULL DEFAULT (CURRENT_DATE)
);

CREATE TABLE library (
    issue_id        INT AUTO_INCREMENT PRIMARY KEY,
    student_id      INT NOT NULL,
    book_title      VARCHAR(150) NOT NULL,
    issue_date      DATE NOT NULL,
    due_date        DATE NOT NULL,
    return_date     DATE,
    CONSTRAINT fk_library_student
        FOREIGN KEY (student_id)
        REFERENCES student(student_id)
        ON UPDATE CASCADE
        ON DELETE CASCADE,
    CONSTRAINT chk_due_date
        CHECK (due_date >= issue_date),
    CONSTRAINT chk_return_date
        CHECK (return_date IS NULL OR return_date >= issue_date)
);

CREATE TABLE fees (
    fee_id          INT AUTO_INCREMENT PRIMARY KEY,
    student_id      INT NOT NULL,
    semester        INT NOT NULL,
    total_amount    DECIMAL(10,2) NOT NULL,
    paid_amount     DECIMAL(10,2) NOT NULL DEFAULT 0.00,
    payment_date    DATE,
    status          ENUM('PENDING','PARTIAL','PAID') NOT NULL DEFAULT 'PENDING',
    CONSTRAINT fk_fees_student
        FOREIGN KEY (student_id)
        REFERENCES student(student_id)
        ON UPDATE CASCADE
        ON DELETE CASCADE,
    CONSTRAINT chk_semester
        CHECK (semester > 0),
    CONSTRAINT chk_amounts
        CHECK (total_amount >= 0 AND paid_amount >= 0 AND paid_amount <= total_amount)
);
