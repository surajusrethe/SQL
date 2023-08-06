-- ALIAS: Temporary name given to a table or column while showing results.
--        ALIAS makes the column more readable.
--        It only exist for the duration of the query.



.......................................................................................................................................

-- EXAMPLE: suppose we want the AGE from the table but we do not want the name to be age becasue it is not descript engough to catch in one go.


mysql> SELECT * FROM EMPLOYEES;
+------+------------+------+--------+
| ID   | NAME       | AGE  | SALARY |
+------+------------+------+--------+
|   11 | MONU PATEL |   35 |  50000 |
|    2 | Sarah      |   25 |  45000 |
|    3 | David      |   40 |  75000 |
|    4 | Mary       |   35 |  65000 |
+------+------------+------+--------+

mysql> SELECT AGE AS age_of_employee
    -> FROM employees;
+-----------------+
| age_of_employee |
+-----------------+
|              35 |
|              25 |
|              40 |
|              35 |
+-----------------+


 SELECT NAME AS naam, AGE AS umar, SALARY AS tankhuva
    -> FROM EMPLOYEEs;
+------------+------+----------+
| naam       | umar | tankhuva |
+------------+------+----------+
| MONU PATEL |   35 |    50000 |
| Sarah      |   25 |    45000 |
| David      |   40 |    75000 |
| Mary       |   35 |    65000 |
+------------+------+----------+

done
