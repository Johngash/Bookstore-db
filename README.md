# 📚 Bookstore Database Management System

This project simulates a real-world Bookstore Database built using MySQL. It is designed to manage a bookstore's core operations, including books, authors, customers, addresses, orders, shipping methods, and more. The system follows best practices in relational database design, including normalization, foreign keys, and efficient data modeling.

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
### Database Features:
- Manages book and author relationships
- Tracks customer orders and shipping
- Organizes addresses and countries
- Supports queries for business insights

 ### Files in this Repo
- `bookstoredb_create_tables.sql` – Created the full schema
- `sample_queries.sql` – Sample queries for testing
- `bookstore_erd.png` – ERD of the database


## 📂 How to Use the Project


### ✅ Step 1: Create and Select Database

```sql
CREATE DATABASE bookstoredb;
USE bookstoredb;
```
### ✅ Step 2: Run SQL schema

###sUMMARY-simplified
1. Clone the repo
2. Run `bookstoredb_create_tables.sql` in your MySQL client
3. Use `sample_queries.sql` to test queries



### ERD Diagram

![Bookstore ERD Diagram](assets/bookstore_erd.png)
