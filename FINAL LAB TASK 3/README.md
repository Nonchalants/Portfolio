# 🧪 Final Lab Task 3: Table Manipulation
This project demonstrates the creation and manipulation of a basic products table using MySQL.  
It includes defining constraints, altering table structures, inserting records, and reflecting changes in structure.

💽 Database: Product_Info_db
---
```sql
CREATE DATABASE product_db;
USE product_db;
```
---

📦 Table: products
This table holds product information including ID, name, and price.
---
```sql
CREATE TABLE products(
    product_id INT(11) AUTO_INCREMENT PRIMARY KEY,
    product_name VARCHAR(100) NOT NULL,
    price FLOAT(10,2)
```
```sql
🛡️ Add CHECK Constraint 

ALTER TABLE products 
ADD CONSTRAINT CHECK (price > 0);
```
---
![Screenshot](PICS/student%20table.png)
---
🖼️ PRODUCTS Table Structure (Initial)
---
📝 Insert Sample Data 
```sql
INSERT INTO products (product_name, price) VALUES
("laptop", 999.99),
("smartphones", 599.99),
("tablet", 299.99),
("keyboard", 19.99),
("mouse", 14.99),
("desklamp", 24.99),
("speakers", 9.99);
```
---

🔍 Select All Products 
```sql
SELECT * FROM products;
```
---
🖼️ PRODUCTS Data Output
![Screenshot](PICS/student%20table.png)

🔧 Modify Column Length 
```sql
ALTER TABLE products 
MODIFY COLUMN product_name VARCHAR(120);
```
🖼️ Modified PRODUCTS Table Structure
![Screenshot](PICS/student%20table.png)

---
🗺️ ER Diagram / Relational Schema
This ER diagram shows the products entity and its structure.
![Screenshot](PICS/student%20table.png)
