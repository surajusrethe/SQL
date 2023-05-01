-- IN operator in SQL is used to specify multiple values in a WHERE clause
-- It allows you to select records that match any one of the specified values.


Syntax:

SELECT column1, column2, ...
FROM table_name
WHERE column_name IN (value1, value2, ...);




select name, age
    -> from employees
    -> where age IN(25,40);
+-------+------+
| name  | age  |
+-------+------+
| Sarah |   25 |
| David |   40 |
