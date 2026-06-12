-- Plan
INSERT INTO Plan VALUES (1, 'Basic', 9.99), (2, 'Standard', 14.99), (3, 'Premium', 19.99), (4, 'Family', 24.99), (5, 'Student', 4.99);

-- Director
INSERT INTO Director VALUES (1, 'Christopher Nolan'), (2, 'Steven Spielberg'), (3, 'Greta Gerwig'), (4, 'James Cameron'), (5, 'Bong Joon-ho');

-- Genre
INSERT INTO Genre VALUES (1, 'Sci-Fi'), (2, 'Action'), (3, 'Drama'), (4, 'Comedy'), (5, 'Horror');

-- User
INSERT INTO User VALUES (101, 'Anh Nguyen', 'anh@vstream.com', 3), (102, 'Binh Pham', 'binh@gmail.com', 1), (103, 'Chi Tran', 'chi@vstream.com', 2), (104, 'Dung Le', 'dung@outlook.com', 3), (105, 'Elena Vu', 'elena@vstream.com', 5);

-- Movie
INSERT INTO Movie VALUES (501, 'Inception', 2010, 1, 1), (502, 'Oppenheimer', 2023, 1, 3), (503, 'Avatar', 2009, 4, 1), (504, 'Barbie', 2023, 3, 4), (505, 'Parasite', 2019, 5, 3);

-- Rating
INSERT INTO Rating VALUES (101, 501, 10, '2026-04-01'), (102, 503, 8, '2026-04-05'), (103, 502, 9, '2026-04-10'), (104, 504, 7, '2026-04-15'), (105, 505, 10, '2026-04-20');
