-- JOINS: Joins are an essential feature in SQL that enable us to combine data from two or more tables based on a common column.

A join is an operation that combines two rows together into one row.

These rows are usually from two different tables—but they don't have to be.

Before we look at how to write the join itself, let's look at what the result of a join would look like.

Let's take for example a system that stores information about users and their addresses.

The rows from the table that stores user information might look like this:

 id |     name     |        email        | age
----+--------------+---------------------+-----
  1 | John Smith   | johnsmith@gmail.com |  25
  2 | Jane Doe     | janedoe@Gmail.com   |  28
  3 | Xavier Wills | xavier@wills.io     |  3
...
(7 rows)
And the rows from the table that stores address information might look like this:

 id |      street       |     city      | state | user_id
----+-------------------+---------------+-------+---------
  1 | 1234 Main Street  | Oklahoma City | OK    |       1
  2 | 4444 Broadway Ave | Oklahoma City | OK    |       2
  3 | 5678 Party Ln     | Tulsa         | OK    |       3
(3 rows)
We could write separate queries to retrieve both the user information and the address information—but ideally we could write one query and receive all of the users and their addresses in the same result set.

This is exactly what a join lets us do!

We'll look at how to write these joins soon, but if we joined our user information to our address information we could get a result like this:

 id |     name     |        email        | age | id |      street       |     city      | state | user_id
----+--------------+---------------------+-----+----+-------------------+---------------+-------+---------
  1 | John Smith   | johnsmith@gmail.com |  25 |  1 | 1234 Main Street  | Oklahoma City | OK    |       1
  2 | Jane Doe     | janedoe@Gmail.com   |  28 |  2 | 4444 Broadway Ave | Oklahoma City | OK    |       2
  3 | Xavier Wills | xavier@wills.io     |  35 |  3 | 5678 Party Ln     | Tulsa         | OK    |       3
(3 rows)
Here we see all of our users and their addresses in one nice result set.

Besides producing a combined result set, another important use of joins is to pull extra information into our query that we can filter against.

For example, if we wanted to send some physical mail to all users who live in Oklahoma City, we could use this joined-together result set and filter based on the city column.

Now that we know the purpose of a joins—let's start writing some!





-- Inner Join:  returns only the matching rows from both tables based on the join condition.


-- Left Join: returns all the rows from the left table and the matching rows from the right table based on the join condition.
   If there is no match in the right table, NULL values are returned.



-- Right Join: returns all the rows from the right table and the matching rows from the left table based on the join condition.
   If there is no match in the left table, NULL values are returned.



-- Outer Join:


