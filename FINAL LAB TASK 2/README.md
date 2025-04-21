# Finals Lab Task 2. Transforming ER Model to Relational Tables

## Student Assignment Submissions Database Schema
This project represents a relational schema for managing student assignment submissions.
It includes students, assignments, and their submission records.

![Screenshot](PICS/ERD%20lab.png)


## 🧱 Database: student_task_db
---
## 👨‍🎓 student_tbl
This table stores student records with a unique username.

```sql
CREATE TABLE student_tbl (
    username VARCHAR(50) PRIMARY KEY
);
```
### 🖼️ STUDENT_TBL Table Structure
![Screenshot](PICS/student%20table.png)


---
## 📚 assignment_tbl Table
This table stores assignment details, such as the short name, due date, and an optional file URL.
```sql
CREATE TABLE assignment_tbl (
    shortname VARCHAR(50) PRIMARY KEY,
    due_date DATE NOT NULL,
    url VARCHAR(255)
);
```
### 🖼️ ASSIGNMENT_TBL Table Structure
![Screenshot](PICS/assignment%20table.png)

---
## 📤 submission_tbl Table
This table tracks submissions made by students for assignments.
It has foreign keys linking to both the student and assignment tables.

```sql
CREATE TABLE submission_tbl (
    version INT(11) PRIMARY KEY,
    submit_date DATE NOT NULL,
    raw_data TEXT,
    username VARCHAR(50),
    shortname VARCHAR(50),
    CONSTRAINT fk_username FOREIGN KEY(username) REFERENCES student_tbl(username),
    CONSTRAINT fk_shortname FOREIGN KEY(shortname) REFERENCES assignment_tbl(shortname)
);
```
### 🖼️ SUBMISSION_TBL Table Structure
![Screenshot](PICS/submmision%20table.png)



##🗂️ EER Diagram
Visual representation of the table relationships.
![Screenshot](PICS/eer%20student%20db.png)

---
## 💾 SQL File Download  
📥 [Click here to download `student_task_db.sql`]()

