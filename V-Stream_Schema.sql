CREATE DATABASE IF NOT EXISTS vstream_db; 
USE vstream_db;

SET FOREIGN_KEY_CHECKS = 0;
DROP TABLE IF EXISTS Rating, Movie, User, Genre, Director, Plan;
SET FOREIGN_KEY_CHECKS = 1;

CREATE TABLE Plan (
    Plan_ID INT PRIMARY KEY,
    Plan_Name VARCHAR(50) NOT NULL,
    Plan_Price DECIMAL(10, 2) NOT NULL
);

CREATE TABLE Director (
    Dir_ID INT PRIMARY KEY,
    Dir_Name VARCHAR(100) NOT NULL
);

CREATE TABLE Genre (
    Gen_ID INT PRIMARY KEY,
    Gen_Name VARCHAR(50) NOT NULL 
);

CREATE TABLE User (
    User_ID INT PRIMARY KEY,
    User_Name VARCHAR(100) NOT NULL,
    User_Email VARCHAR(100) UNIQUE NOT NULL,
    Plan_ID INT,
    FOREIGN KEY (Plan_ID) REFERENCES Plan(Plan_ID)
);

CREATE TABLE Movie (
    Movie_ID INT PRIMARY KEY,
    Movie_Title VARCHAR(200) NOT NULL,
    Release_Year INT,
    Dir_ID INT,
    Gen_ID INT,
    FOREIGN KEY (Dir_ID) REFERENCES Director(Dir_ID),
    FOREIGN KEY (Gen_ID) REFERENCES Genre(Gen_ID)
);

CREATE TABLE Rating (
    User_ID INT,
    Movie_ID INT,
    Rating_Score INT CHECK (Rating_Score BETWEEN 1 AND 10),
    Rating_Date DATE,
    PRIMARY KEY (User_ID, Movie_ID),
    FOREIGN KEY (User_ID) REFERENCES User(User_ID),
    FOREIGN KEY (Movie_ID) REFERENCES Movie(Movie_ID)
);
