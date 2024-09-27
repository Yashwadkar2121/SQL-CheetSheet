-- Text Functions
-- Concatenation
-- Use the || Operator to concatenate two String
select 'hi'|| 'there' ; -- Not Working in MySQL

-- Use for Number
select ''  || 4 || 2 ; -- Not Working in MySQl 

-- Concatenate two strings
SELECT CONCAT('hi', ' there') AS greeting;

-- Concatenate strings and numbers (MySQL implicitly converts numbers to strings)
SELECT CONCAT('', 4, 2) AS result;

-- Like Opertor - Pattern Matching
-- Eg.,
CREATE DATABASE sql_cheetsheet;
USE sql_cheetsheet;
CREATE TABLE name (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);
INSERT INTO name (name) VALUES
('Catherine'),
('Katherine'),
('Latherine'),
('Matthew'),
('Jatherine'),
('Aaron');

select * from sql_cheetsheet.name;

-- Use the _ character to replace any single character.
select name from name
where name Like '_atherine';

-- Use the % character to replace any number single characters.(including 0)
INSERT INTO name (name) VALUES
('Anna'),
('Maria'),
('Jessica'),
('Michael'),
('Matthew');
-- Fetch all names END with a 
select name from name
where name Like '%a';

-- Use full Functions
-- Get the count of charaters in String
select length('anystring');

-- Convert into Lowercase
select lower('asbcfuqiasdbu');

-- Convert into Uppercase
select upper('asbcfuqiasdbu');

-- Just part of string
select  substring('leranSQL.com',5);

-- SUBSTRING(string, start_position, length)
-- MySQL: It starts indexing from 1, not 0. 
-- SQL Server: Also uses 1-based indexing for SUBSTRING().
select  substring('leranSQL.com', 1, 6);

-- Replace part of String
-- 'leranSQL.com': The string you are modifying.
-- 'SQL': The part of the string to be replaced.
-- 'JAVA': The replacement substring.
select replace("leranSQL.com","SQL","JAVA");

-- Convert all letters to Lowercase and 1st Letter in Uppercase
-- Note (Not Implimented in MySQl and SQL server)
select initcap('edgar frank ted coDD'); -- NOt working
-- In MySQL
SELECT CONCAT(UCASE(LEFT(name, 1)), LCASE(SUBSTRING(name, 2))) AS capitalized_name
FROM name;