-- FileName: lu000168-Inventory-DML
-- Date: 14 October 2020
-- Author: Wentao Lu
-- Comment: Lab 5

--1. 
SELECT cust_fname, cust_lname, cust_balance 
FROM customer_t WHERE cust_balance <> 0 
ORDER BY cust_balance DESC;

--2.
SELECT invoice_number, prod_code, line_price, line_unit, line_price*line_unit AS line_cost 
FROM invoice_line_t WHERE line_price*line_unit > 500 
ORDER BY line_price*line_unit DESC, invoice_number DESC;

--3.
SELECT prod_code, prod_description, prod_qoh, prod_price, prod_price*prod_qoh AS inventry_cost
FROM product_t WHERE prod_qoh > 50 
ORDER by prod_description;

--4.
SELECT cust_lname, cust_fname, cust_balance FROM customer_t 
WHERE cust_balance = 0 AND cust_city = 'Ottawa'
ORDER BY cust_lname;

--5.
SELECT invoice_number, prod_code, line_unit, line_price FROM invoice_line_t
WHERE line_price > 600 OR line_price < 100
ORDER BY line_price DESC;

--6.
SELECT CONCAT(cust_fname, cust_lname) AS customer_name, cust_address FROM customer_t
WHERE SUBSTRING(cust_lname, 1, 1) = 'L' AND cust_balance BETWEEN 0 AND 100;

--7.
SELECT prod_description, prod_qoh, prod_price FROM product_t
WHERE prod_qoh IN (60, 70, 80, 90)
ORDER BY prod_qoh;

--8.
SELECT prod_description, prod_qoh, prod_price, prod_discount FROM product_t
WHERE prod_discount IS NULL;

--9.
SELECT cust_city FROM customer_t 
GROUP BY cust_city ORDER BY cust_city;

--10.
SELECT CONCAT(cust_fname, ' ', cust_lname) FROM customer_t WHERE lower(Cust_City) = 'ottawa';



