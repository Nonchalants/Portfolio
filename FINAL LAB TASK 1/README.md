# 📘 Company Database Schema
This project contains a basic relational database design for managing employee-related information in a company.
It includes employees, departments, managers, and their relationships with projects and departments.
---

## 🧱 Database: `company_db`

### 🧑‍💼 `employees`

This table stores employee records and their managers.

```sql
CREATE TABLE employees (
    employee_id INT AUTO_INCREMENT PRIMARY KEY,
    employee_name VARCHAR(255) NOT NULL,
    manager_id INT,
    FOREIGN KEY (manager_id) REFERENCES employees(employee_id)
);
```
### 🖼️ EMPLOYEES Table Structure

![Employees Table Structure](IMAGESS/Screenshot%202025-04-11%20200017.png)

---

### 🏢 Departments Table

This table contains information about each department within the company.

```sql
CREATE TABLE departments (
    department_id INT AUTO_INCREMENT PRIMARY KEY,
    department_name VARCHAR(255) NOT NULL
);
```

### 🖼️ DEPARTMENTS Table Structure
![Employees Table Structure](IMAGESS/Screenshot%202025-04-11%20200102.png)

---

### 🧾Employee_Departments Table

This table links employees to their departments, establishing many-to-many relationships.

```sql
CREATE TABLE employee_departments (
    employee_id INT,
    department_id INT,
    FOREIGN KEY (employee_id) REFERENCES employees(employee_id),
    FOREIGN KEY (department_id) REFERENCES departments(department_id)
);
```

### 🖼️ EMPLOYEES_DEPARTMENTS Table Structure
![Employees Table Structure](IMAGESS/Screenshot%202025-04-11%20200145.png)

---

### 🛠️ Task 4: Employee_Projects Table
This table keeps track of projects assigned to each employee.

```sql
CREATE TABLE employee_projects (
    employee_id INT,
    project_name VARCHAR(255) NOT NULL,
    FOREIGN KEY (employee_id) REFERENCES employees(employee_id)
);
```

### 🖼️ EMPLOYEES_PROJECTS Table Structure
![Employees Table Structure](IMAGESS/Screenshot%202025-04-11%20200213.png)

---

### 👔 Task 5: Managers Table
This table stores manager information, linking them back to employee records.

```sql
CREATE TABLE managers (
    manager_id INT AUTO_INCREMENT PRIMARY KEY,
    employee_id INT,
    FOREIGN KEY (employee_id) REFERENCES employees(employee_id)
);
```

### 🖼️ MANAGERS Table Structure
![Employees Table Structure](IMAGESS/Screenshot%202025-04-11%20200244.png)

## EER DIAGRAM
![Screenshot](IMAGESS/eer%20company.png)

## 💾 SQL File Download  
📥 [Click here to open](FINAL%20LAB%20TASK%202/PICS/student_DB.sql)









