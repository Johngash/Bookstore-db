-- Create database
CREATE DATABASE IF NOT EXISTS bookstoredb;
USE bookstoredb;

-- Drop tables if they exist (reverse order to avoid FK constraint errors)
DROP TABLE IF EXISTS book_author;
DROP TABLE IF EXISTS book;
DROP TABLE IF EXISTS author;
DROP TABLE IF EXISTS book_language;
DROP TABLE IF EXISTS publisher;

-- Author Table
CREATE TABLE author (
	author_id INT PRIMARY KEY,
	author_name VARCHAR(100),
	author_bio TEXT
);

-- Publisher Table
CREATE TABLE publisher (
	publisher_id INT PRIMARY KEY,
	publisher_name VARCHAR(100)
);

-- Book Language Table
CREATE TABLE book_language (
	language_id INT PRIMARY KEY,
	language_name VARCHAR(100)
);

-- Book Table (Add foreign keys to language and publisher)
CREATE TABLE book (
	book_id INT PRIMARY KEY,
	book_name VARCHAR(100),
	year_published DATE,
	publisher_id INT,
	language_id INT,
	FOREIGN KEY (publisher_id) REFERENCES publisher(publisher_id),
	FOREIGN KEY (language_id) REFERENCES book_language(language_id)
);

-- Many-to-Many Table between Book and Author
CREATE TABLE book_author (
	book_id INT,
	author_id INT,
	PRIMARY KEY (book_id, author_id),
	FOREIGN KEY (book_id) REFERENCES book(book_id),
	FOREIGN KEY (author_id) REFERENCES author(author_id)
);
