-- Question 1
 
USE salesdb;
SELECT e.firstName, e.lastName, e.email, e.officeCode 
FROM employees e
INNER JOIN offices o ON e.officeCode = o.officeCode;


-- Question 2
 
SELECT p.productName, p.productVendor, p.productLine 
FROM products p 
LEFT JOIN productlines pl
ON  p.productline = pl.productline;

-- Question 3
 
SELECT o.orderDate, o.shippedDate, o.status, o.customerNumber 
FROM  customers cs
RIGHT JOIN orders o  ON o.customerNumber = cs.customerNumber
LIMIT 10;