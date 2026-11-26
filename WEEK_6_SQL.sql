
-- ==========================================
-- SQL JOINS ASSIGNMENT
-- Database: Classic Models
-- File: answer.sql
-- ==========================================

-- Question 1: INNER JOIN – Employees and Offices
-- Retrieve employee information together with office codes.

SELECT
    employees.firstName,
    employees.lastName,
    employees.email,
    employees.officeCode
FROM employees
INNER JOIN offices
    ON employees.officeCode = offices.officeCode;


-- Question 2: LEFT JOIN – Products and Product Lines
-- Retrieve product names, vendors, and their product lines.

SELECT
    products.productName,
    products.productVendor,
    productlines.productLine
FROM products
LEFT JOIN productlines
    ON products.productLine = productlines.productLine;


-- Question 3: RIGHT JOIN – Customers and Orders
-- Retrieve information for the first 10 orders.

SELECT
    orders.orderDate,
    orders.shippedDate,
    orders.status,
    orders.customerNumber
FROM customers
RIGHT JOIN orders
    ON customers.customerNumber = orders.customerNumber
LIMIT 10;


-- ==========================================
-- END OF SQL JOINS ASSIGNMENT
-- ==========================================
