CREATE TABLE IF nOT EXISTS Author (
	author_id INTEGER PRIMARY KEY AUTOINCREMENT,
	first_name VARCHAR(100) NOT NULL,
	last_name VARCHAR(100) NOT NULL,
	email VARCHAR(255) NOT NULL UNIQUE CHECK(email LIKE "%@%"),
    birth_date DATETIME
);
CREATE TABLE IF NOT EXISTS Book (
	book_id INTEGER PRIMARY KEY AUTOINCREMENT,
    title VARCHAR(100) NOT NULL,
    category VARCHAR(100) NOT NULL,
    genre VARCHAR(100) NOT NULL,
    publication_date DATETIME
);
CREATE TABLE IF NOT EXISTS Editor (
	editor_id INTEGER PRIMARY KEY AUTOINCREMENT,
  	name VARCHAR(100) NOT NULL,
    adress VARCHAR(100) NOT NULL,
  	email VARCHAR(255) NOT NULL UNIQUE CHECK(email LIKE "%@%")
);
CREATE TABLE IF NOT EXISTS Royalty (
	royalty_id INTEGER PRIMARY KEY AUTOINCREMENT,
  	book_id INTEGER NOT NULL,
    author_id INTEGER NOT NULL,
    royalty_rate FLOAT NOT NULL CHECK(royalty_rate >= 0 AND royalty_rate <= 1),
    month VARCHAR(20) NOT NULL,
    amount DECIMAL(10,2) NOT NULL CHECK(amount >= 0),
    payment_date DATETIME,
  
    FOREIGN KEY(book_id) REFERENCES Book(book_id),
    FOREIGN KEY(author_id) REFERENCES Author(author_id)
);
CREATE TABLE IF NOT EXISTS WriteBy (
	author_id INTEGER NOT NULL,
    book_id INTEGER NOT NULL,
  
    FOREIGN KEY(book_id) REFERENCES Book(book_id),
    FOREIGN KEY(author_id) REFERENCES Author(author_id)
);
CREATE TABLE IF NOT EXISTS Sale (
	sale_id INTEGER PRIMARY KEY AUTOINCREMENT,
	book_id INTEGER NOT NULL,
    sale_number INTEGER NOT NULL,
    sale_date TIMESTAMP,
  
    FOREIGN KEY(book_id) REFERENCES Book(book_id)
);
CREATE TABLE IF NOT EXISTS PublishingBy (
	book_id INTEGER NOT NULL,
    editor_id INTEGER NOT NULL,
  
  	FOREIGN KEY(book_id) REFERENCES Book(book_id),
  	FOREIGN KEY(editor_id) REFERENCES Editor(editor_id)
);