CREATE DATABASE bookstoredb;

DROP TABLE author;
DROP TABLE book;

USE bookstoredb;

-- still to add relationships

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