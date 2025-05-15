# 🧪 Final Lab Task: SQL Table Relationships, Views, Procedures, and Functions
This project demonstrates relational database operations using MySQL Workbench.
It includes database creation, table setup with constraints, data insertion, creation of views, a stored procedure, and a function with a cursor.

## 💽 Database: inventory

## 🏗️ Database & Tables Creation
CREATE DATABASE inventory;
USE inventory;

## 📦 Table: Products
CREATE TABLE Products (
    P_CODE VARCHAR(10) PRIMARY KEY,
    P_DESCRIPT VARCHAR(35) NOT NULL,
    P_INDATE DATE NOT NULL,
    P_ONHAND INT NOT NULL,
    P_MIN INT NOT NULL,
    P_PRICE DECIMAL(8,2) NOT NULL,
    P_DISCOUNT DECIMAL(5,2) NOT NULL,
    V_CODE INT
);
