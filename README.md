# V-Stream-Database-Management-System (Mini Project)
## 1. Business context
   
**V-Stream** is a data-driven streaming service provider specializing in delivering movies and television shows to a global audience. The system operates on a monthly subscription-based model where users gain unlimited access to a digital content library. This project focuses on designing and implementing a robust database to manage memberships, content metadata, and user feedback.

## 2. Business rules

The database design is governed by the following business rules:
- **Plans & Users:** A user must be subscribed to exactly one plan (e.g., Basic, Premium) at any given time, while a plan can be associated with multiple users (1:M relationship).
- **Content Metadata:** Each movie is directed by one director and belongs to one specific genre (1:M relationship).
- **User Interaction:** A user can rate multiple movies, and a movie can be rated by many users. This Many-to-Many (M:N) relationship is resolved through an associative entity called Rating.

## 3. Database schema

The database has been normalized to the Third Normal Form (3NF) to ensure data integrity and minimize redundancy. The core entities include:
- **Plan:** Stores subscription tiers and pricing.
- **User:** Manages customer profiles and account status.
- **Director & Genre:** Categorizes content metadata.
- **Movie:** Contains details of films including release years.
- **Rating:** Tracks user feedback scores and review dates.

## 4. Repository structure

The project is organized into three distinct SQL scripts to demonstrate a professional implementation workflow:
- **V-Stream_Schema.sql:** Contains the Data Definition Language (DDL) commands used to create the database structure, primary keys, and foreign key constraints.
- **V-Stream_Data.sql:** Includes Data Manipulation Language (DML) commands to populate each table with at least five sample records for testing.
- **V-Stream_Analysis.sql:** Contains advanced implementation tasks, such as:
<br> +) Adding a User_Status column using ALTER TABLE.
<br> +) Performing conditional data updates (e.g., setting account status to 'Inactive' for external email domains).
<br> +) Analytical queries involving INNER JOIN, DATE functions, and the creation of a VIEW.

## 5. Setup and execution

To deploy this database on a local MySQL instance:
- Connect to your server via **MySQL Workbench**.
- Execute **V-Stream_Schema.sql** first to build the architecture.
- Execute **V-Stream_Data.sql** to load the initial dataset.
- Run **V-Stream_Analysis.sql** to see the system in action with advanced queries and updates.
