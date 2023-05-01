/*
ALTER: Alter means add, delete, modify coloun in existing table;


TO ADD NEW COLUMN : mysql> ALTER TABLE employee
                     -> ADD zone varchar(255);
                     
                     
TO DELETE COLUMN : mysql> ALTER TABLE EMPLOYEE
                    -> DROP COLUMN DEPT;
                    

TO MODIFY COLUMN : mysql> ALTER TABLE EMPLOYEE
                    -> MODIFY COLUMN DEPT INT;
*/

mysql> use tabletest;
Database changed
mysql> DESC employee;
+-------------+--------------+------+-----+------------+-------+
| Field       | Type         | Null | Key | Default    | Extra |
+-------------+--------------+------+-----+------------+-------+
| employee_id | int          | NO   |     | NULL       |       |
| first_name  | varchar(50)  | YES  |     | NULL       |       |
| last_name   | varchar(50)  | YES  |     | NULL       |       |
| Dept        | varchar(255) | YES  |     | Operations |       |
+-------------+--------------+------+-----+------------+-------+
4 rows in set (0.01 sec)

mysql> ALTER TABLE employee
    -> ADD zone varchar(255);


mysql> DESC EMPLOYEE;
+-------------+--------------+------+-----+------------+-------+
| Field       | Type         | Null | Key | Default    | Extra |
+-------------+--------------+------+-----+------------+-------+
| employee_id | int          | NO   |     | NULL       |       |
| first_name  | varchar(50)  | YES  |     | NULL       |       |
| last_name   | varchar(50)  | YES  |     | NULL       |       |
| Dept        | varchar(255) | YES  |     | Operations |       |
| zone        | varchar(255) | YES  |     | NULL       |       |
+-------------+--------------+------+-----+------------+-------+


....................................................................................................................................................................................

mysql> ALTER TABLE EMPLOYEE
      -> DROP COLUMN DEPT;


mysql> DESC EMPLOYEE;
+-------------+--------------+------+-----+---------+-------+
| Field       | Type         | Null | Key | Default | Extra |
+-------------+--------------+------+-----+---------+-------+
| employee_id | int          | NO   |     | NULL    |       |
| first_name  | varchar(50)  | YES  |     | NULL    |       |
| last_name   | varchar(50)  | YES  |     | NULL    |       |
| zone        | varchar(255) | YES  |     | NULL    |       |
+-------------+--------------+------+-----+---------+-------+


............................................................................................................................................


mysql> ALTER TABLE EMPLOYEE
      -> MODIFY COLUMN DEPT INT;

mysql> DESC EMPLOYEE;
+-------------+--------------+------+-----+---------+-------+
| Field       | Type         | Null | Key | Default | Extra |
+-------------+--------------+------+-----+---------+-------+
| employee_id | int          | NO   |     | NULL    |       |
| first_name  | varchar(50)  | YES  |     | NULL    |       |
| last_name   | varchar(50)  | YES  |     | NULL    |       |
| zone        | varchar(255) | YES  |     | NULL    |       |
| DEPT        | int          | YES  |     | NULL    |       |
+-------------+--------------+------+-----+---------+-------+



