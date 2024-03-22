use library
-------------------------------------
INSERT INTO `users` (`UserID`, `Name`, `Email`, `Telephone`)
VALUES 
     (11, 'Ali Khan', 'ali@example.com', '123-456-7890'),
     (12, 'Sana Ahmed', 'sana@example.com', '987-654-3210'),
     (13, 'Ahmed Hassan', 'ahmed@example.com', '555-123-4567'),
     (14, 'Fatima Khan', 'fatima@example.com', '111-222-3333'),
     (15, 'Muhammad Akram', 'muhammad@example.com', '444-555-6666'),
     (16, 'Ayesha Malik', 'ayesha@example.com', '777-888-9999'),
     (17, 'Kamran Ali', 'kamran@example.com', '999-888-7777'),
     (18, 'Sara Khan', 'sara@example.com', '666-555-4444'),
     (19, 'Amir Abbas', 'amir@example.com', '333-222-1111'),
     (20, 'Nadia Ahmed', 'nadia@example.com', '222-333-4444');


-----------------------------------------
-- Insert books
INSERT INTO `books` (`ISBN`, `Title`, `Author`, `Publisher`, `DateOfPublication`)
VALUES 
    ('9789698784747', 'Aangan', 'Khadija Mastoor', 'Sang-e-Meel Publications', '1962-01-01'),
    ('9789690020286', 'Moth Smoke', 'Mohsin Hamid', 'Viking Press', '2000-01-01'),
    ('9789698772676', 'Raat', 'Abdul Aleem', 'Bazm-e-Seemab', '1950-01-01'),
    ('9789698714010', 'Khuda Ki Basti', 'Shaukat Siddiqui', 'Kitab Ghar', '1957-01-01'),
    ('9789698770108', 'Umrao Jaan Ada', 'Mirza Hadi Ruswa', 'Sang-e-Meel Publications', '1899-01-01'),
    ('9789690024291', 'The Reluctant Fundamentalist', 'Mohsin Hamid', 'Penguin Books', '2007-01-01'),
    ('9789693521763', 'Train to Pakistan', 'Khushwant Singh', 'Grove Press', '1956-01-01'),
    ('9789690020743', 'The White Tiger', 'Aravind Adiga', 'Atlantic Books', '2008-01-01'),
    ('9789698979124', 'Godaan', 'Munshi Premchand', 'Lokbharti Prakashan', '1936-01-01'),
    ('9789699739030', 'In the Line of Fire: A Memoir', 'Pervez Musharraf', 'Free Press', '2006-01-01'),
    ('9789690020590', 'Kartography', 'Kamila Shamsie', 'Bloomsbury Publishing', '2002-01-01'),
    ('9789693519203', 'Pakistaniat', 'Dr. Raza Pirbhai', 'Oxford University Press', '2008-01-01'),
    ('9789690019556', 'The Glass Palace', 'Amitav Ghosh', 'Random House', '2000-01-01'),
    ('9789695018402', 'The Kite Runner', 'Khaled Hosseini', 'Riverhead Books', '2003-01-01'),
    ('9789698863302', 'My Feudal Lord', 'Tehmina Durrani', 'Viking Press', '1991-01-01');
    
    
    
    -------------------------------------------
    -- Insert book copies for "Aangan" with ISBN 9789698784747
INSERT INTO book_copies (BarCode, ISBN, LoanAvailability)
VALUES 
    ('BC978969878474701', '9789698784747', 'Y'),
    ('BC978969878474702', '9789698784747', 'Y');
-- Repeat for each of the remaining 14 book titles with unique BarCodes

-- Example for another book, "Moth Smoke" with ISBN 9789690020286
INSERT INTO book_copies (BarCode, ISBN, LoanAvailability)
VALUES 
    ('BC978969002028601', '9789690020286', 'Y'),
    ('BC978969002028602', '9789690020286', 'Y');
-- And so on for the other books
-- For 'Moth Smoke' by Mohsin Hamid
INSERT INTO book_copies (BarCode, ISBN, LoanAvailability) VALUES
('9789690020286-01', '9789690020286', 'Y'),
('9789690020286-02', '9789690020286', 'Y'),
('9789690020286-03', '9789690020286', 'Y');

-- For 'Raat' by Abdul Aleem
INSERT INTO book_copies (BarCode, ISBN, LoanAvailability) VALUES
('9789698772676-01', '9789698772676', 'Y'),
('9789698772676-02', '9789698772676', 'Y');

-- Repeat for the rest of the books...

-- For 'Umrao Jaan Ada' by Mirza Hadi Ruswa
INSERT INTO book_copies (BarCode, ISBN, LoanAvailability) VALUES
('9789698770108-01', '9789698770108', 'Y'),
('9789698770108-02', '9789698770108', 'Y');

-- For 'The Reluctant Fundamentalist' by Mohsin Hamid
INSERT INTO book_copies(BarCode, ISBN, LoanAvailability) VALUES
('9789690024291-01', '9789690024291', 'Y'),
('9789690024291-02', '9789690024291', 'Y'),
('9789690024291-03', '9789690024291', 'Y');

-- Add similar INSERT statements for each of the books listed, adjusting the number of copies (2 or 3) and the barcodes accordingly.



-- For 'Khuda Ki Basti' by Shaukat Siddiqui
INSERT INTO book_copies (BarCode, ISBN, LoanAvailability) VALUES
('9789698714010-01', '9789698714010', 'Y'),
('9789698714010-02', '9789698714010', 'Y');



-- For 'The Reluctant Fundamentalist' by Mohsin Hamid


-- For 'Train to Pakistan' by Khushwant Singh
INSERT INTO book_copies (BarCode, ISBN, LoanAvailability) VALUES
('9789693521763-01', '9789693521763', 'Y'),
('9789693521763-02', '9789693521763', 'Y');

-- For 'The White Tiger' by Aravind Adiga
INSERT INTO book_copies (BarCode, ISBN, LoanAvailability) VALUES
('9789690020743-01', '9789690020743', 'Y'),
('9789690020743-02', '9789690020743', 'Y');

-- For 'Godaan' by Munshi Premchand
INSERT INTO book_copies (BarCode, ISBN, LoanAvailability) VALUES
('9789698979124-01', '9789698979124', 'Y'),
('9789698979124-02', '9789698979124', 'Y');

-- For 'In the Line of Fire: A Memoir' by Pervez Musharraf
INSERT INTO book_copies (BarCode, ISBN, LoanAvailability) VALUES
('9789699739030-01', '9789699739030', 'Y'),
('9789699739030-02', '9789699739030', 'Y');




INSERT INTO `reservation` (`UserID`, `BarCode`, `ReservationDate`)
VALUES 
     ('11', 'BC978969878474701', '2024-03-16'),
     ('12', 'BC978969878474702', '2024-03-17'),
     ('13', 'BC978969002028601', '2024-03-18');




INSERT INTO `loans` (`UserID`, `BarCode`, `IssueDate`, `OverdueDate`)
VALUES 
    ('11', 'BC978969878474701', '2024-03-16', '2024-04-16'),
    ('12', 'BC978969878474702', '2024-03-17', '2024-04-17'),
    ('13', 'BC978969002028601', '2024-03-18', '2024-04-18');



--------------------------------------
--Task 4
-----part a   not work

SELECT * FROM Books
WHERE Title LIKE '%keyword1%' AND Title LIKE '%keyword2%';

SELECT * FROM Books
WHERE Title LIKE '%Pakistan%' AND Title LIKE '%Train%';

SELECT * FROM Books
WHERE Title LIKE '%Train%';

SELECT * FROM Books
WHERE Title LIKE '%Reluctant%' AND Title LIKE '%Fundamentalist%';





---------------
--b
SELECT * FROM Books
WHERE Author LIKE 'Shaukat Siddiqui';


SELECT * FROM Books
WHERE Author LIKE 'Khushwant Singh';



SELECT * FROM Books
WHERE Author LIKE 'Pervez Musharraf';




-------------------
--c   


SELECT 
    ISBN, 
    BarCode, 
    CASE 
        WHEN LoanAvailability = 'Y' THEN 'Available for Loan' 
        ELSE 'Not Available for Loan' 
    END AS AvailabilityStatus
FROM 
    book_copies
WHERE 
    ISBN = '9789698784747';




------------------
---d
INSERT INTO `reservation` (`UserID`, `BarCode`, `ReservationDate`)
VALUES 
     ('11', 'BC978969878474701', '2024-03-16'),
     ('12', 'BC978969878474702', '2024-03-17'),
     ('13', 'BC978969002028601', '2024-03-18');




------------------
--e
SELECT 
    u.UserID, 
    u.Name AS UserName, 
    b.Title AS BookTitle, 
    bc.BarCode
FROM 
    users u
JOIN 
    loans l ON u.UserID = l.UserID
JOIN 
    book_copies bc ON l.BarCode = bc.BarCode
JOIN 
    books b ON bc.ISBN = b.ISBN
ORDER BY 
    u.UserID;
