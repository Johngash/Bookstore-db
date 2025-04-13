-- Create the database
create DATABASE /*IF NOT EXISTS*/ bookstoredb;
USE bookstoredb;



CREATE TABLE country (
    country_id INT PRIMARY KEY,
    country_name VARCHAR(100)
);

CREATE TABLE address_status (
    status_id INT PRIMARY KEY,
    status_name VARCHAR(100)
);

CREATE TABLE address (
    address_id INT PRIMARY KEY,
    street VARCHAR(100),
    city VARCHAR(100),
    postal_code VARCHAR(20),
    country_id INT,
    FOREIGN KEY (country_id) REFERENCES country(country_id)
);

CREATE TABLE customer (
    customer_id INT PRIMARY KEY,
    first_name VARCHAR(100),
    last_name VARCHAR(100),
    email VARCHAR(100)
);

CREATE TABLE customer_address (
    customer_id INT,
    address_id INT,
    status_id INT,
    PRIMARY KEY (customer_id, address_id),
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
    FOREIGN KEY (address_id) REFERENCES address(address_id),
    FOREIGN KEY (status_id) REFERENCES address_status(status_id)
);

--  book-related tables

CREATE TABLE publisher (
    publisher_id INT PRIMARY KEY,
    publisher_name VARCHAR(100)
);

CREATE TABLE book_language (
    language_id INT PRIMARY KEY,
    language_name VARCHAR(100)
);

CREATE TABLE book (
    book_id INT PRIMARY KEY,
    book_name VARCHAR(100),
    year_published DATE,
    publisher_id INT,
    language_id INT,
    FOREIGN KEY (publisher_id) REFERENCES publisher(publisher_id),
    FOREIGN KEY (language_id) REFERENCES book_language(language_id)
);

CREATE TABLE book_customer (
    customer_id INT,
    book_id INT,
    purchase_date DATE,
    PRIMARY KEY (customer_id, book_id),
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
    FOREIGN KEY (book_id) REFERENCES book(book_id)
);

CREATE TABLE author (
    author_id INT PRIMARY KEY,
    author_name VARCHAR(100),
    author_bio TEXT
);

CREATE TABLE book_author (
    author_id INT,
    book_id INT,
    PRIMARY KEY (author_id, book_id),
    FOREIGN KEY (author_id) REFERENCES author(author_id),
    FOREIGN KEY (book_id) REFERENCES book(book_id)
);

-- Order-related tables
CREATE TABLE shipping_method (
    id INT PRIMARY KEY,
    method_name VARCHAR(100),
    cost FLOAT
);

CREATE TABLE order_status (
    id INT PRIMARY KEY,
    status_name VARCHAR(100)
);

CREATE TABLE cust_order (
    id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    shipping_method_id INT,
    order_status_id INT,
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
    FOREIGN KEY (shipping_method_id) REFERENCES shipping_method(id),
    FOREIGN KEY (order_status_id) REFERENCES order_status(id)
);

CREATE TABLE order_line (
    order_id INT,
    book_id INT,
    quantity INT,
    PRIMARY KEY (order_id, book_id),
    FOREIGN KEY (order_id) REFERENCES cust_order(id),
    FOREIGN KEY (book_id) REFERENCES book(book_id)
);

CREATE TABLE order_history (
    order_history_id INT PRIMARY KEY AUTO_INCREMENT,
    order_id INT,
    status_change_date DATE,
    order_status_id INT,
    FOREIGN KEY (order_id) REFERENCES cust_order(id),
    FOREIGN KEY (order_status_id) REFERENCES order_status(id)
);