# 📘 Company Database Schema
This project contains a basic relational database design for managing employee-related information in a company.
It includes employees, departments, managers, and their relationships with projects and departments.
---

## 🧱 Database: `company_db`

### 1. 🧑‍💼 `employees`

This table stores employee records and their managers.

```sql
CREATE TABLE employees (
    employee_id INT AUTO_INCREMENT PRIMARY KEY,
    employee_name VARCHAR(255) NOT NULL,
    manager_id INT,
    FOREIGN KEY (manager_id) REFERENCES employees(employee_id)
);
```
### 🖼️ Employees Table Structure

![Employees Table Structure](IMAGESS/Screenshot%202025-04-11%20200017.png)


### 🏢 Task 2: Departments Table

```sql
CREATE TABLE departments (
    department_id INT AUTO_INCREMENT PRIMARY KEY,
    department_name VARCHAR(255) NOT NULL
);
```
![Employees Table Structure](IMAGESS/Screenshot%202025-04-11%20200017.png)
