--Q1
SELECT * FROM Customer_T;
SELECT * FROM Invoice_T;
SELECT * FROM Product_T;
SELECT * FROM Invoice_Line_T;

--Q2
SELECT cust_fname, cust_lname from Customer_T ORDER BY cust_lname;

--Q3 ***
SELECT EXTRACT(YEAR FROM NOW());
SELECT invoice_number, invoice_date, EXTRACT(YEAR FROM invoice_date) FROM Invoice_T;


--Q4
SELECT invoice_number, prod_code, line_price from Invoice_Line_T;

--Q5
SELECT prod_code, prod_description from Product_T;

--Q6

SELECT cust_fname, cust_lname, cust_city FROM Customer_T WHERE cust_city <> 'Ottawa';

--Q7

SELECT cust_fname, cust_lname, cust_city FROM Customer_T WHERE UPPER(cust_city) <> ('OTTAWA');

--Q8




