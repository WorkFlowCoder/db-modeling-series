INSERT INTO Author (first_name, last_name, email, birth_date) VALUES
('Alice','GreenField','alice.greenfield@mail.com',1998-03-01),
('Thomas','Blackwood','thomas.blackwood@mail.com',1996-03-01),
('Emma','Blackwood','emma.blackwood@mail.com',1998-04-01),
('Daniel','Rivers','daniel.rivers@mail.com',1998-03-10),
('Sophia','Lancaster','sophia.lancaster@mail.com',1980-03-01);

INSERT INTO Book (title, category, genre, publication_date) VALUES
('Shadows of Eternity','Novel','Fantasy',2010-05-12),
('The Quantum Paradox','Science','Non-Fiction',2018-09-03),
('Whispers in the Wind','Novel','Romance',2015-02-17),
('Chronicles of the Forgotten','Novel','Adventure',2020-11-22),
('Beyond the Horizon','Science','Sci-Fi',2017-07-10),
('Melody of Time','Poetry','Historical',2012-04-05),
('The Hidden Cipher','Novel','Mystery',NULL);

INSERT INTO Editor (name,adress,email) VALUES
('Silver Leaf Pres','123 Maple Street,Springfield','contact@silverleafpress.com'),
('Blue Horizon Books','456 Ocean Drive, Rivertown','info@bluehorizonbooks.com'),
('Golden Quill Publishing','789 Elm Avenue, Lakeside','support@goldenquillpub.com');

INSERT INTO Royalty (book_id,author_id,royalty_rate,month,amount,payment_date) VALUES
(1,1,0.5,'JANUARY',125.00,2026-03-01),
(2,2,0.1,'SEPTEMBER',80.00,2026-03-01),
(3,3,0.15,'JANUARY',150.00,2026-03-01),
(4,4,0.8,'DECEMBER',64.00,2026-03-01);

INSERT INTO WriteBy (author_id, book_id) VALUES
(1,1),
(1,2),
(2,3),
(3,4),
(4,5);

INSERT INTO Sale (sale_id, book_id, sale_number, sale_date) VALUES
(1, 1, 120, '2026-01-15'),
(3, 3, 200, '2026-01-20'),
(2, 2, 85, '2026-09-18'),
(4, 4, 150, '2026-12-22');

INSERT INTO PublishingBy (book_id, editor_id) VALUES
(1,1),
(2,2),
(3,1),
(4,3),
(5,3);
