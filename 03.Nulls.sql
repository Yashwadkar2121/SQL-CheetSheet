-- Eg.,
CREATE TABLE workers (
  id INT ,
  name VARCHAR(50) NULL,
  salary DECIMAL(10, 2) NOT NULL
);

-- NULL: Indicates no value or unknown value.
INSERT INTO employees (id, name, salary) VALUES 
(1, 'John Doe', NULL),
(2, 'Jane Smith', 60000.00);
-- Columns can be set to allow NULL values.
SELECT * FROM employees WHERE salary IS NULL;

-- NOT NULL: Ensures that a column must always have a value, 
-- This will cause an error
INSERT INTO employees (id, salary) VALUES (3, 70000.00);
-- rejecting any attempt to insert a NULL.
SELECT * FROM employees WHERE salary IS NOT NULL;
