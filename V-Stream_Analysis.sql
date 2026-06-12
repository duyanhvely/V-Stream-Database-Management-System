ALTER TABLE User ADD User_Status VARCHAR(20) DEFAULT 'Active';

SET SQL_SAFE_UPDATES = 0;

UPDATE `User`
SET User_Status = 'Inactive'
WHERE User_Email NOT LIKE '%@vstream.com';

SELECT m.Movie_Title, d.Dir_Name, m.Release_Year 
FROM Movie m 
INNER JOIN Director d ON m.Dir_ID = d.Dir_ID 
ORDER BY m.Release_Year DESC;

SELECT User_Name, User_Email 
FROM User 
WHERE Plan_ID IN (3, 4);

SELECT * FROM Rating 
WHERE MONTH(Rating_Date) = 4 AND YEAR(Rating_Date) = 2026;

CREATE VIEW UserFeedback AS 
SELECT u.User_Name, m.Movie_Title, r.Rating_Score 
FROM User u 
JOIN Rating r ON u.User_ID = r.User_ID 
JOIN Movie m ON r.Movie_ID = m.Movie_ID;

-- VIEW
SELECT * FROM UserFeedback;







