/*

- Create DB or u can use any presented DB;

- write use DB command to use Db for creating tables;

- write CREATE TABLE Table_Name(
  after bracket press enter and add coloun abd data type separating by comma and pressing enter
  ); close the brackets after creating coloumn;


- DESC command shows the structure of the table;
*/


/*********************************** Creating Table Structure ***************************************/



mysql> create database tabletest;
Query OK, 1 row affected (0.01 sec)

mysql> use tabletest;
Database changed
mysql> CREATE TABLE EMPLOYEE(
    -> EmpID int,
    -> FirstName varchar(255),
    -> LastName varchar(255),
    -> EmpAGE int,
    -> EmpZone varchar(255)
    -> );
Query OK, 0 rows affected (0.04 sec)



/*********************************** Creating Table rows ***************************************/


mysql> Insert into employee(EmpID, FirstName, LastName, EmpAGE, EmpZone) VALUES (1, 'Jack', 'Sparrow', 56, 'west');
Query OK, 1 row affected (0.01 sec)

mysql> Insert into employee(EmpID, FirstName, LastName, EmpAGE, EmpZone) values (2, 'Tom', 'Cruise', 56, 'west');
Query OK, 1 row affected (0.00 sec)

mysql> Insert into employee(EmpID, FirstName, LastName, EmpAGE, EmpZone) VALUES (3, 'Vin', 'Diesel', 62, 'west');
Query OK, 1 row affected (0.00 sec)

mysql> SELECT*FROM EMPLOYEE;
+-------+-----------+----------+--------+---------+
| EmpID | FirstName | LastName | EmpAGE | EmpZone |
+-------+-----------+----------+--------+---------+
|     1 | Jack      | Sparrow  |     56 | west    |
|     2 | Tom       | Cruise   |     56 | west    |
|     3 | Vin       | Diesel   |     62 | west    |
+-------+-----------+----------+--------+---------+
3 rows in set (0.00 sec)
