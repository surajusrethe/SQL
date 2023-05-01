#COUNT function is used to count the number of rows that meet a specific condition in a table.



mysql> SELECT COUNT(*)
    -> FROM EMPLOYEES;
+----------+
| COUNT(*) |
+----------+
|        4 |
+----------+

...............................................................................................................................................................

mysql> SELECT COUNT(AGE)
    -> FROM EMPLOYEES
    -> WHERE AGE = 35;
+------------+
| COUNT(AGE) |
+------------+
|          2 |
+------------+
