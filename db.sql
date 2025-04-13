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
);