CREATE DATABASE IF NOT EXISTS alx_book_store

CREATE TABLE Books (
    book_id PRIMARY KEY,
    title VARCHAR(130),
    author_id (Foreign Key referencing Authors table),
    price DOUBLE,
    publication_date DATE
);
CREATE TABLE Authors (
    author_id PRIMARY KEY,
    author_name VARCHAR(215),
    author_id (Foreign Key referencing Authors table),
    price DOUBLE,
    publication_date DATE
);
CREATE TABLE Customers (
    customer_id PRIMARY KEY,
    customer_name VARCHAR(215),
    email VARCHAR(215),
    address TEXT,
    publication_date DATE
);

CREATE TABLE Orders (
    order_id PRIMARY KEY,
    customer_id INT(FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)),
    email VARCHAR(215),
    order_date DATE
);

CREATE TABLE Order_Details (
    orderdetailid PRIMARY KEY,
    order_id (FOREIGN KEY (order_id) REFERENCES Orders(order_id)),
    book_id (FOREIGN KEY (book_id) REFERENCES Books(book_id)),
    quantity DOUBLE
);

