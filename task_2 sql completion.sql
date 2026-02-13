CREATE TABLE Authors (
    author_id INTEGER PRIMARY KEY,
    author_name VARCHAR(100) NOT NULL,
    country VARCHAR(50)
);

CREATE TABLE Books (
    book_id INTEGER PRIMARY KEY,
    title VARCHAR(150) NOT NULL,
    author_id INTEGER,
    published_year INTEGER,
    price DECIMAL(8,2) DEFAULT 0,
    FOREIGN KEY (author_id) REFERENCES Authors(author_id)
);

CREATE TABLE Members (
    member_id INTEGER PRIMARY KEY,
    member_name VARCHAR(100) NOT NULL,
    email VARCHAR(100),
    phone VARCHAR(15)
);

CREATE TABLE Borrow (
    borrow_id INTEGER PRIMARY KEY,
    book_id INTEGER,
    member_id INTEGER,
    borrow_date DATE,
    return_date DATE,
    FOREIGN KEY (book_id) REFERENCES Books(book_id),
    FOREIGN KEY (member_id) REFERENCES Members(member_id)
);


-- Insert Authors
INSERT INTO Authors VALUES (1, 'J.K. Rowling', 'UK');
INSERT INTO Authors VALUES (2, 'George Orwell', 'UK');
INSERT INTO Authors VALUES (3, 'Unknown Author', NULL);  -- Handling NULL

-- Insert Books
INSERT INTO Books VALUES (101, 'Harry Potter', 1, 1997, 500);
INSERT INTO Books VALUES (102, '1984', 2, 1949, 300);
INSERT INTO Books VALUES (103, 'Mystery Book', 3, NULL, DEFAULT);  -- NULL + DEFAULT

-- Insert Members
INSERT INTO Members VALUES (1, 'Rahul', 'rahul@email.com', '9876543210');
INSERT INTO Members VALUES (2, 'Amit', NULL, '9123456780');  -- NULL email
INSERT INTO Members VALUES (3, 'Sneha', 'sneha@email.com', NULL); -- NULL phone

-- Insert Borrow Records
INSERT INTO Borrow VALUES (1, 101, 1, '2026-02-10', NULL); -- Book not returned yet
INSERT INTO Borrow VALUES (2, 102, 2, '2026-02-11', '2026-02-15');

-- Update missing email
UPDATE Members
SET email = 'amit@email.com'
WHERE member_id = 2;

-- Update return date
UPDATE Borrow
SET return_date = '2026-02-18'
WHERE borrow_id = 1;

-- Increase book price
UPDATE Books
SET price = price + 50
WHERE book_id = 101;

-- Delete a member who never borrowed books
DELETE FROM Members
WHERE member_id = 3;

DELETE FROM Borrow
WHERE book_id = 102;

DELETE FROM Books
WHERE book_id = 102;

-- Delete a book published before 1950
DELETE FROM Books
WHERE published_year < 1950;

SELECT * FROM Authors;
SELECT * FROM Books;
SELECT * FROM Members;
SELECT * FROM Borrow;
