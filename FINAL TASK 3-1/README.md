# 📘 Course Database Schema
This project contains a basic relational database design for managing course-related information, including details about course categories, enrollment limits, and the number of students currently enrolled. The database is structured to help track enrollment progress and course popularity.
---
## 🧱 Database: course_db

## 📚 courses
This table stores details about each course, including the course name, category, enrollment limits, and current number of students enrolled.

```sql
CREATE TABLE courses (
    id INT AUTO_INCREMENT PRIMARY KEY,
    course_name VARCHAR(255) NOT NULL,
    category VARCHAR(100) NOT NULL,
    enrollment_limit INT NOT NULL,
    students_enrolled INT NOT NULL
);
```
---
## 🔄 Insert Data
Here’s how the data is inserted into the courses table:  
---

---
<img src="IMAGE1/output1.png" width="400px">
<img src="IMAGE1/output%202.png" width="400px">
<img src="IMAGE1/output%203.png" width="400px">
<img src="IMAGE1/output%204.png" width="400px">
<img src="IMAGE1/output%205.png" width="400px">
<img src="IMAGE1/output6.png" width="400px">
---

## 🧾 Queries 
Here are some queries you can run to interact with the database:
List courses with enrollment less than the limit:
---
## TASK 1
List courses with enrollment less than the limit:
```sql
SELECT * FROM courses WHERE students_enrolled < enrollment_limit;
```
<img src="IMAGE1/task%201%20output.png" width="400px">

## TASK 2
Group courses by category and count total students enrolled:
```sql
SELECT category, SUM(students_enrolled) AS total_students_enrolled FROM courses GROUP BY category;
```
<img src="IMAGE1/TASK%202%20output.png" width="400px">


## TASK 3
List courses that have reached the enrollment limit:
```sql
SELECT * FROM courses WHERE students_enrolled = enrollment_limit;
```
<img src="IMAGE1/task%203%20output.png" width="400px">


## TASK 4
Get the total number of students across all courses:
```sql
SELECT SUM(students_enrolled) AS total_students FROM courses;
```
<img src="IMAGE1/task%204%20output.png" width="400px">


## TASK 5
List courses in alphabetical order by course name:
```sql
SELECT * FROM courses ORDER BY course_name ASC;
```
<img src="IMAGE1/task%205%20output.png" width="400px">


