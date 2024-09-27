-- Use +,-,*,/ to do some basic math.
select 100 - 60 + 30 * 2 / 3;

-- CASTing
-- the Cast() function to help change the of number 
SELECT CAST(1234.4567 AS SIGNED) AS result; -- inMySQL
-- SELECT CAST(1234.4567 AS INTEGER) AS result; -- In PostgreSQL
-- SELECT CAST(1234.4567 AS NUMBER(10,0)) AS result; -- Oracle

-- Eg.,
CREATE TABLE employees (
  id INT,
  name VARCHAR(50),
  salary INT
);

INSERT INTO employees (id, name, salary) VALUES 
(1, 'John Doe', 50000),
(2, 'Jane Smith', 60000),
(3, 'Alice Brown', 70000);

DESCRIBE employees;

-- To change a column's data type to DOUBLE precision in SQL
ALTER TABLE employees
MODIFY COLUMN salary DOUBLE;

-- Get a remainder of a divsion
select mod(13,2);

-- Round a number to three decimal palces
select round(1234.142586,3);

 -- To round the number UP
select ceil(13.4);
select ceil(-13.4);
 
 -- To round the number DOWN
 select floor(13.4);
select floor(-13.4);
  
-- To round towoards 0 irrespective of the sign of a number
SELECT TRUNCATE(13.6,0) AS truncated_value;

-- To Get absolute value of number
select abs(-25);

-- To Get a Square Root of a Number
select sqrt(36);