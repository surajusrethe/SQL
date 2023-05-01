WHERE clause: 
/*
- WHERE CLAUSE hai SQL ka filter machine! 
- Is clause ke through hum apne data ki filter lagaate hai
- aur jo rows us filter se match hote hai, wo result set me show hote hai. 
*/


Normal: SELECT * FROM employee WHERE age=18;

..............................................................................................................................................................

AND: SELECT ZONE, DEPT FROM EMPLOYEE 
    -> WHERE ZONE='SOUTH' AND DEPT=7;
    
+-------+------+
| ZONE  | DEPT |
+-------+------+
| SOUTH |    7 |
+-------+------+

..............................................................................................................................................................

OR:  SELECT * FROM employee
     -> WHERE ZONE='EAST' OR ZONE='NORTH';
     
     +-------------+------------+-----------+-------+------+
| employee_id | first_name | last_name | zone  | DEPT |
+-------------+------------+-----------+-------+------+
|           2 | RAM        | SHARMA    | NORTH |    2 |
|           3 | MIKKA      | SINGH     | NORTH |    2 |
|          12 | GOPAL      | VERMA     | EAST  |    8 |
+-------------+------------+-----------+-------+------+

..............................................................................................................................................................
     
NOT:  SELECT * FROM EMPLOYEE
    -> WHERE NOT ZONE = 'NORTH';

+-------------+------------+-----------+-------+------+
| employee_id | first_name | last_name | zone  | DEPT |
+-------------+------------+-----------+-------+------+
|          12 | GOPAL      | VERMA     | EAST  |    8 |
|           5 | RANVEER    | KAPOOR    | SOUTH |    7 |
+-------------+------------+-----------+-------+------+


