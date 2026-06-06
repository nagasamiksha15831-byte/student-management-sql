# 🎓 Student Management System (SQL Project)

## 📌 Project Overview
This is a simple Student Management System built using MySQL.  
It manages students and departments using relational database concepts like primary key, foreign key, joins, and subqueries.

---

## 🛠️ Technologies Used
- MySQL
- SQL (DDL, DML, Joins, Subqueries)

---

## 📂 Database Structure

### Department Table
| Column     | Type        | Description            |
|------------|------------|------------------------|
| dept_id    | INT (PK)   | Department ID         |
| dept_name  | VARCHAR    | Department Name       |

### Student Table
| Column     | Type        | Description                     |
|------------|------------|---------------------------------|
| stu_id     | INT (PK)   | Student ID                      |
| sname      | VARCHAR    | Student Name                    |
| age        | INT        | Student Age                     |
| dept_id    | INT (FK)   | Department Reference            |
| marks      | INT        | Student Marks                   |

---

## 🔗 Relationship
- One department can have multiple students
- Foreign Key: `student.dept_id → department.dept_id`

---

## 🚀 Features
- Insert student and department data
- Retrieve student details
- Join tables (student + department)
- Apply filtering conditions
- Use aggregate functions (COUNT, AVG, MAX)
- Subqueries for advanced queries

---

## 📊 Sample Queries
- Show all students
- Department-wise student count
- Students with marks > 80
- Highest marks student
- Students in specific department

---

## 📁 Files in this Project
- student_management.sql → Main database script
- README.md → Project documentation

---

