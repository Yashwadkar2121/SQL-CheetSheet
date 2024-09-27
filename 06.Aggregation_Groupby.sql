-- Aggregation Functions
-- Aggregation functions perform calculations on multiple rows of a table and return a single value. Common aggregation functions include:

-- COUNT(): Counts the number of rows.
-- SUM(): Calculates the total sum of a numeric column.
-- AVG(): Computes the average of a numeric column.
-- MAX(): Finds the maximum value in a column.
-- MIN(): Finds the minimum value in a column.

-- Basic Syntax
-- SELECT column1, aggregation_function(column2)
-- FROM table_name
-- WHERE condition
-- GROUP BY column1;

-- Eg.
CREATE TABLE aggregation_Groupby (
    id INT,
    name VARCHAR(50),
    department VARCHAR(50),
    salary DECIMAL(10, 2)
);

INSERT INTO aggregation_Groupby (id, name, department, salary) VALUES
(1, 'John Doe', 'Sales', 50000.00),
(2, 'Jane Smith', 'Sales', 60000.00),
(3, 'Alice Johnson', 'HR', 70000.00),
(4, 'Bob Brown', 'HR', 80000.00),
(5, 'Charlie Davis', 'IT', 90000.00);

-- Suppose you want to calculate the total salary paid to employees in each department
SELECT department, SUM(salary) AS total_salary
FROM aggregation_Groupby
GROUP BY department;

-- You can also use the COUNT() function to count the number of employees in each department:
SELECT department, COUNT(*) AS employee_count
FROM aggregation_Groupby
GROUP BY department;

-- HAVING Clause
-- The HAVING clause is used to filter groups based on a condition, 
-- similar to the WHERE clause but applies to aggregated results. 
SELECT department, SUM(salary) AS total_salary
FROM aggregation_Groupby
GROUP BY department
HAVING SUM(salary) > 100000;