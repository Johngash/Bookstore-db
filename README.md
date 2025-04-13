# 📚 Bookstore Database Management System

This project simulates a real-world **Bookstore Database** built using **MySQL**. It is designed to manage the core operations of a bookstore including books, authors, customers, addresses, orders, shipping methods, and more. The system follows best practices in relational database design, including the use of normalization, foreign keys, and efficient data modeling.

---

## 🛠️ Technologies Used

- **MySQL** – To create and manage the relational database
- **Draw.io** – To visualize the Entity-Relationship Diagram (ERD)

---

## 🎯 Project Objectives

- Design a normalized MySQL relational database for a bookstore
- Implement tables with proper relationships and data types
- Track books, customers, addresses, and order processes
- Create secure access and query structure for meaningful data retrieval

---

## 🧱 Database Structure (Schema Overview)

### 📘 Book & Author

- **`book`**: Stores all book information
- **`author`**: Stores author details
- **`book_author`**: Manages the many-to-many relationship between books and authors
- **`book_language`**: Stores available book languages
- **`publisher`**: Stores publishers for books

### 👤 Customers & Address

- **`customer`**: Contains customer personal details
- **`address`**: General address table
- **`country`**: List of countries
- **`address_status`**: Status of each address (current, previous, etc.)
- **`customer_address`**: Links a customer to multiple addresses

### 🛒 Orders & Shipping

- **`cust_order`**: Records each customer order
- **`order_line`**: Stores books per order
- **`shipping_method`**: Different shipping options
- **`order_status`**: Status of orders (pending, shipped, etc.)
- **`order_history`**: Tracks status changes over time

---

## 📂 How to Use the Project

### ✅ Step 1: Create and Select Database

```sql
CREATE DATABASE bookstoredb;
USE bookstoredb;
```
### ✅ Step 2: Run SQL schema 

### ✅ Step 3: Create and Select Database


