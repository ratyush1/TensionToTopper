
CREATE TABLE user (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    phno VARCHAR(15) NOT NULL,
    password VARCHAR(100) NOT NULL,
    address TEXT,
    landmark VARCHAR(100),
    city VARCHAR(100),
    state VARCHAR(100),
    pincode VARCHAR(20)
);


CREATE TABLE cart (
    cid INT PRIMARY KEY AUTO_INCREMENT,
    bid INT NOT NULL,
    uid INT NOT NULL,
    bookName VARCHAR(255) NOT NULL,
    author VARCHAR(255) NOT NULL,
    price DOUBLE NOT NULL,
    total_price DOUBLE NOT NULL
);

CREATE TABLE book_order (
    id INT PRIMARY KEY AUTO_INCREMENT,
    order_id VARCHAR(100) NOT NULL,
    user_name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    address VARCHAR(500) NOT NULL,
    phno VARCHAR(20) NOT NULL,
    book_name VARCHAR(255) NOT NULL,
    author VARCHAR(255) NOT NULL,
    price VARCHAR(100) NOT NULL,
    payment VARCHAR(100) NOT NULL
);

CREATE TABLE book_dtls (
    bookId INT PRIMARY KEY AUTO_INCREMENT,
    bookname VARCHAR(255) NOT NULL,
    author VARCHAR(255) NOT NULL,
    price VARCHAR(100) NOT NULL,
    bookCategory VARCHAR(100) NOT NULL,
    status VARCHAR(50) NOT NULL,
    photo VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL
);
CREATE TABLE Author (
    AuthorID INT PRIMARY KEY AUTO_INCREMENT,
    AuthorName VARCHAR(100) NOT NULL,
    AuthorEmail VARCHAR(100) UNIQUE
);


