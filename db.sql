
CREATE TABLE order_status (
    id INT PRIMARY KEY,
    status_name VARCHAR(100)
);

CREATE TABLE order_history (
    order_id INT,
    status_change_date DATE,
    order_status_id INT,
    FOREIGN KEY (order_id) REFERENCES cust_order(id),
    FOREIGN KEY (order_status_id) REFERENCES order_status(id)
);

CREATE TABLE order_line (
    order_id INT,
    book_id INT,
    quantity INT,
    PRIMARY KEY (order_id, book_id),
    FOREIGN KEY (order_id) REFERENCES cust_order(id),
    FOREIGN KEY (book_id) REFERENCES book(id)
);

CREATE TABLE cust_order (
    id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    shipping_method_id INT,
    order_status_id INT,
    FOREIGN KEY (customer_id) REFERENCES customer(id),
    FOREIGN KEY (shipping_method_id) REFERENCES shipping_method(id),
    FOREIGN KEY (order_status_id) REFERENCES order_status(id)
);

CREATE TABLE shipping_method (
    id INT PRIMARY KEY,
    method_name VARCHAR(100),
    cost FLOAT

CREATE DATABASE bookstoredb;

DROP TABLE author;
DROP TABLE book;

USE bookstoredb;


CREATE TABLE book(
	book_id INT PRIMARY KEY,
    book_name VARCHAR(100),
    year_published DATE
);

CREATE TABLE author(
	author_id INT PRIMARY KEY,
    author_name VARCHAR(100),
    author_bio TEXT
);

CREATE TABLE book_author(
	author_id INT NOT NULL,
    book_id INT NOT NULL,
    FOREIGN KEY(author_id) REFERENCES author(author_id),
    FOREIGN KEY(book_id) REFERENCES book(book_id)
);

CREATE TABLE book_language(
	language_id INT,
    language_name VARCHAR(100)
    
);

CREATE TABLE publisher(
	publisher_id INT PRIMARY KEY,
    publisher_name VARCHAR(100)
    
);