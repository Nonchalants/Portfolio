# 📘 Course Database Schema
This project contains a basic relational database design for managing course-related information, including details about course categories, enrollment limits, and the number of students currently enrolled. The database is structured to help track enrollment progress and course popularity.
---
## 🧱 Database: course_db

### 📚 courses
This table stores details about each course, including the course name, category, enrollment limits, and current number of students enrolled.
''' sql
CREATE TABLE courses (
    id INT AUTO_INCREMENT PRIMARY KEY,
    course_name VARCHAR(255) NOT NULL,
    category VARCHAR(100) NOT NULL,
    enrollment_limit INT NOT NULL,
    students_enrolled INT NOT NULL
);
