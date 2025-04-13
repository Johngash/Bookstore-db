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

# 📚 Bookstore Project

A simple bookstore application for browsing and purchasing books.

---

### Installation

1. Clone the repo:
   ```bash
   git clone https://github.com/yourusername/bookstore.git

   
### Navigate into the directory
cd bookstore


### Install the dependencies (e.g., if using npm or pip):
npm install    # OR pip install -r requirements.txt

### Usage
Start the application:

For a local server:

bash
Copy
Edit
npm start    # OR python app.py
Access the app: Open your browser and go to http://localhost:3000 (or whichever port you're using).

### Features
Browse available books by categories.

Search books by title or author.

Add books to your cart and proceed to checkout.

### Contributing
Fork the repo

Create a new branch (git checkout -b feature-name)

Make changes

Push to your branch (git push origin feature-name)

Create a Pull Request

### License
MIT License (or your chosen license).



### ERD Diagram

![Bookstore ERD Diagram](assets/bookstore_erd.png)

## EER Diagram

This diagram illustrates the relationships between key entities in the Bookstore database, including customers, books, authors, publishers, and purchases.


![Bookstore EER Diagram](assets/bookstore eer.png)
