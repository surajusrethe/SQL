/******************************************** Null ***************************************************/

//Constraints in SQL are like bouncers at a party, they make sure only valid data gets in and keep relationships between tables strong.

1. NOT NULL:

// NOT NULL when you specify not null to any coloun means it's value cannot be null anyway.

mysql>  create table students(
    ->  rollnum int NOT NULL,
    ->  name varchar(255),
    ->  age int,
    ->  class int
    -> );
    
    mysql> DESC students;
+---------+--------------+------+-----+---------+-------+
| Field   | Type         | Null | Key | Default | Extra |
+---------+--------------+------+-----+---------+-------+
| rollnum | int          | NO   |     | NULL    |       |
| name    | varchar(255) | YES  |     | NULL    |       |
| age     | int          | YES  |     | NULL    |       |
| class   | int          | YES  |     | NULL    |       |
+---------+--------------+------+-----+---------+-------+

mysql> INSERT INTO students (rollnum, name, age, class) VALUES (1, 'jack', 23, 12);

mysql> select * from students;
+---------+------+------+-------+
| rollnum | name | age  | class |
+---------+------+------+-------+
|       1 | jack |   23 |    12 |
+---------+------+------+-------+

mysql> INSERT INTO students (rollnum, name, age, class) VALUES (null, 'jayram', 15, 10);
ERROR 1048 (23000): Column 'rollnum' cannot be null

..............................................................................................................


2. Unique: 
/*
- Unique constraint ensures that each value in a column is unique and not repeated.
- It can be applied to one or more columns in a table, and a table can have multiple UNIQUE constraints.
*/

mysql> CREATE TABLE student (rollnum INT, name VARCHAR(255), age INT, class INT, UNIQUE(rollnum));


mysql> DESC student;
+---------+--------------+------+-----+---------+-------+
| Field   | Type         | Null | Key | Default | Extra |
+---------+--------------+------+-----+---------+-------+
| rollnum | int          | YES  | UNI | NULL    |       |
| name    | varchar(255) | YES  |     | NULL    |       |
| age     | int          | YES  |     | NULL    |       |
| class   | int          | YES  |     | NULL    |       |
+---------+--------------+------+-----+---------+-------+

.......................................................................................................


3. Primary Key:

- A PRIMARY KEY constraint is UNIQUE and NOT NULL constraints.
- there can only be one primary key in a table, which is used to link and relate to other tables.


mysql> CREATE TABLE student (rollnum INT NOT NULL, name VARCHAR(255), age IN
T, class INT, UNIQUE(rollnum));


mysql> DESC student;
+---------+--------------+------+-----+---------+-------+
| Field   | Type         | Null | Key | Default | Extra |
+---------+--------------+------+-----+---------+-------+
| rollnum | int          | NO   | PRI | NULL    |       |
| name    | varchar(255) | YES  |     | NULL    |       |
| age     | int          | YES  |     | NULL    |       |
| class   | int          | YES  |     | NULL    |       |
+---------+--------------+------+-----+---------+-------+


.............................................................................................................


4. Check Constraint:

//- A CHECK constraint in SQL checks whether the incoming data meets a specific condition or not before allowing it into the table.


mysql>  CREATE TABLE employees ( employee_id INT NOT NULL, first_name VARCHAR(50), last_name VARCHAR(50), age int, CHECK(age>=18));
mysql> INSERT INTO employees (employee_id, first_name, last_name, age)VALUES (1, 'John', 'Doe', 25);

ysql> select * from employees;
+-------------+------------+-----------+------+
| employee_id | first_name | last_name | age  |
+-------------+------------+-----------+------+
|           1 | John       | Doe       |   25 |
+-------------+------------+-----------+------+

//Note that the age column has a CHECK constraint that ensures the value is greater than or equal to 18. This means that if you try to insert a row with an age value less than 18, you will get an error message.


...................................................................................................................


5. Default Constraint:

- Default Constraint is like a backup plan for columns in SQL table, 
- where if no value is provided during insertion, it will set a default value for that column.

mysql> CREATE TABLE employee ( employee_id INT NOT NULL, first_name VARCHAR(50), last_name VARCHAR(50), Dept varchar(255) DEFAULT 'Operations');
Query OK, 0 rows affected (0.01 sec)

mysql> DESC employee;
+-------------+--------------+------+-----+------------+-------+
| Field       | Type         | Null | Key | Default    | Extra |
+-------------+--------------+------+-----+------------+-------+
| employee_id | int          | NO   |     | NULL       |       |
| first_name  | varchar(50)  | YES  |     | NULL       |       |
| last_name   | varchar(50)  | YES  |     | NULL       |       |
| Dept        | varchar(255) | YES  |     | Operations |       |
+-------------+--------------+------+-----+------------+-------+

INSERT INTO employee (employee_id, first_name, last_name) VALUES (1, 'John', 'Doe');

mysql> select * from employee;
+-------------+------------+-----------+------------+
| employee_id | first_name | last_name | Dept       |
+-------------+------------+-----------+------------+
|           1 | John       | Doe       | Operations |
+-------------+------------+-----------+------------+

...............................................................................................................................


6. Index Constraint: used to acces the data quickly than any other method;

CREATE TABLE products (
  id INT NOT NULL,
  name VARCHAR(50),
  price DECIMAL(10,2),
  INDEX idx_products_name (name)
);



/*

- This creates a table named products with columns for id, name, and price.
- The INDEX keyword is used to create an index constraint on the name column with the name idx_products_name.
- This will improve the performance of queries that involve searching or sorting by the name column.

- Note that this is just an example and the specific syntax and options for index constraints can vary depending on the database management system being used.

*/





















