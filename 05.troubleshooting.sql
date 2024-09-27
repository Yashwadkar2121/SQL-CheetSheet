-- Troubleshooting SQL queries or database issues can
--  involve a systematic approach to identifying and resolving problems.
-- 1) Syntax Errors
-- eg.,
SELECT name FROM casetable WHERE salary > 40000; -- Correct
SELECT name FROM casetable WHERE salary > 40000 -- Missing semicolon (syntax error)

-- 2) Data Type Mismatch
-- eg.,
INSERT INTO casetable (id, name, department_id, salary) VALUES (1, 'John Doe', 1, '35000'); -- Error, salary is INT
INSERT INTO casetable (id, name, department_id, salary) VALUES (1, 'John Doe', 1, CAST('35000' AS INT)); -- Correct

-- 3) Query Returns No Results
-- eg.,
SELECT * FROM casetable WHERE salary > 100000; -- No results if no salary exceeds this value
SELECT * FROM casetable; -- Check all data

-- 4) Performance Issues
-- Check Indexes: Ensure that appropriate indexes are created on columns used in WHERE, JOIN, and ORDER BY clauses.
-- Analyze Query Plan: Use EXPLAIN before your query to understand how the database executes it and identify bottlenecks.
-- Optimize Joins: Ensure joins are made on indexed columns to speed up queries.
-- eg.,
EXPLAIN SELECT * FROM casetable WHERE salary > 50000; -- Analyze performance

-- 5) Transaction Issues
-- Issue: Issues with data not being saved, especially in multi-step processes.
-- Check Transactions: Make sure you are committing the transaction if your database requires it.
-- Error Handling: Use proper error handling in your application code to rollback transactions if necessary.
-- eg.,
START TRANSACTION;
INSERT INTO casetable (id, name, department_id, salary) VALUES (7, 'David', 2, 60000);
COMMIT; -- Ensure to commit if needed

-- 6) Connection Issues
-- Issue: Unable to connect to the database.

-- Troubleshooting Steps:
-- Check Credentials: Ensure that the username, password, and database name are correct.
-- Check Network: Verify network connections, firewall settings, and server availability.
-- Database Server Status: Make sure the database server is running.