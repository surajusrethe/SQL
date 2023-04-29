- When you want to get the data of entire table.

mysql> SELECT*FROM EMPLOYEE;

+-------+-----------+----------+--------+---------+
| EmpID | FirstName | LastName | EmpAGE | EmpZone |
+-------+-----------+----------+--------+---------+
|     1 | Jack      | Sparrow  |     56 | west    |
|     2 | Tom       | Cruise   |     56 | west    |
|     3 | Vin       | Diesel   |     62 | west    |
+-------+-----------+----------+--------+---------+


..............................................................................


- When you want to get the data of specific coloumn of table.


mysql> SELECT EMPID FROM EMPLOYEE;
+-------+
| EMPID |
+-------+
|     1 |
|     2 |
|     3 |
+-------+


..............................................................................


- When you want to get the data of more than one coloumn of table.


mysql> SELECT EmpID,EmpZone FROM EMPLOYEE;
+-------+---------+
| EmpID | EmpZone |
+-------+---------+
|     1 | west    |
|     2 | west    |
|     3 | west    |
+-------+---------+

..............................................................................



