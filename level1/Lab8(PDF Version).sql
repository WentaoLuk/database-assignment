--Lab8 2020.10.23 这是专门的一个pdf上的题目.

--Query 1: List all customer along with their invoice details using an inner join
select * from customer_t;
select * from invoice_t;

SELECT * FROM customer_t INNER JOIN invoice_t
ON customer_t.cust_id = invoice_t.cust_id;

--Query 2: Edit Query 1 to use natural join instead of inner join. 
--Discuss the benefits of using natural join over inner join.

SELECT * FROM customer_t NATURAL JOIN invoice_t;

--Query 3: Edit Query2 to display only customers from Ottawa. 
--Note: If you do not have customers in Ottawa, use any other city.

SELECT * FROM customer_t NATURAL JOIN invoice_t WHERE cust_city = 'Ottawa';

--Query 4: List prod_code, prod_description, prod_price along with invoice_number, 
--line_unit and line_price information. Use either inner join or natural join.
select * from invoice_t;
select * from product_t;
select * from invoice_line_t;

SELECT prod_code, prod_description, prod_price, invoice_number, line_unit, line_price
FROM product_t NATURAL JOIN invoice_line_t;

--Query 5-1: List cust_id, cust_fname, cust_lname and invoice_number for only those 
--customers who have not placed any order i.e. Customers who do not have a record 
--in invoice_t table. Hint: Use Outer Joins with WHERE is null clause.

SELECT cust_id, cust_fname, cust_lname, invoice_number FROM customer_t
NATURAL LEFT JOIN invoice_t WHERE invoice_number IS NULL;

--Query 5-2: List Customer details along with invoice_number and line_price. Hint: This will require 
--joining customer_t, invoice_t and invoice_line_t tables.

SELECT customer_t.*, invoice_number, line_price FROM customer_t 
NATURAL JOIN invoice_t NATURAL JOIN invoice_line_t;

--Query 6: Find and list which customer has ordered which product.

SELECT CONCAT(cust_fname, ' ', cust_lname) AS "Customer Name", prod_description AS "Product Name"
FROM customer_t 
INNER JOIN invoice_t 		ON customer_t.cust_id = invoice_t.cust_id 
INNER JOIN invoice_line_t 	ON invoice_t.invoice_number =  invoice_line_t.invoice_number
INNER JOIN product_t 		ON invoice_line_t.prod_code = product_t.prod_code;

--BETTER SOLUTION: (重点是顺序不能错,否则就会cross join了!!!)
SELECT CONCAT(cust_fname, ' ', cust_lname) AS "Customer Name", prod_description AS "Product Name"
FROM customer_t 
NATURAL JOIN invoice_t                    
NATURAL JOIN invoice_line_t 
NATURAL JOIN Product_t;

--Query 7: Edit Query 6 to include cust_city column and then display customer and product 
--details for only customer in Ottawa. Hint: Use Query 3 as reference.

SELECT CONCAT(cust_fname, ' ', cust_lname) AS "Customer Name",
cust_city,
prod_description AS "Product Name"
FROM customer_t 
NATURAL JOIN invoice_t                    
NATURAL JOIN invoice_line_t 
NATURAL JOIN Product_t
WHERE cust_city = 'Ottawa';

