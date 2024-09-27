-- The CASE statement in SQL is a conditional expression that allows you to perform.
-- IF-THEN-ELSE logic directly within your SQL queries
-- Eg.,
CREATE TABLE casetable (
    id INT,
    name VARCHAR(50),
    department_id INT,
    salary INT
);
INSERT INTO casetable (id, name, department_id, salary) VALUES 
(1, 'John Doe', 1, 35000),      -- Low salary
(2, 'Jane Smith', 2, 45000),    -- Medium salary
(3, 'Alice Johnson', 1, 75000), -- Medium salary
(4, 'Bob Brown', 3, 90000),      -- High salary
(5, 'Charlie Davis', 2, 25000),  -- Low salary
(6, 'Eve White', 3, 120000);     -- High salary

SELECT 
    id,
    name,
    salary,
    CASE
        WHEN salary < 40000 THEN 'Low'
        WHEN salary BETWEEN 40000 AND 80000 THEN 'Medium'
        ELSE 'High'
    END AS salary_category
FROM casetable;
