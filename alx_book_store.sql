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
["order_id INT", "customer_id INT", "FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)"]
CREATE TABLE Order_Details (
    orderdetailid PRIMARY KEY,
    order_id (Foreign Key referencing Orders table),
    book_id (Foreign Key referencing Books table),
    quantity DOUBLE
);
