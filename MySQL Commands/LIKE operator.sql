-- LIKE operator is used in SQL to search for patterns in a specified column. 
-- It is commonly used with the SELECT statement and the WHERE clause to retrieve data based on a specific pattern or partial string match.

--The LIKE operator uses two wildcard characters:

-- % (percentage sign) represents zero or more characters
-- _ (underscore) represents a single character.


Example 1:

-- Name of all the employee who's name beginning with 'M'.

Find all customers whose name starts with "J":
SELECT * FROM customers WHERE name LIKE 'J%';

Find all products whose name contains "shirt":
SELECT * FROM products WHERE name LIKE '%shirt%';

Find all orders with an order number that ends in "7":
SELECT * FROM orders WHERE order_number LIKE '%7';

Find all employees whose last name starts with "Smi" (could be Smith, Smiley, etc.):
SELECT * FROM employees WHERE last_name LIKE 'Smi%';

Find all emails that end in ".com":
SELECT * FROM contacts WHERE email LIKE '%.com';


Example 2:

Find all employees zone with 't' at a 4th position.
SELECT * FROM contacts WHERE zone LIKE '___t';
