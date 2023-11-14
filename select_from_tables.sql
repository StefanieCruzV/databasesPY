-- USE twitter
-- * to see all
-- SELECT * FROM users 
-- *to see only those columns 
-- SELECT first_name , last_name FROM users; 
-- * to change the name of  those columns 
-- SELECT first_name  as first , last_name as hello FROM users; 
-- * to see all columns  about one specific user --ASC default -DESC
-- SELECT * FROM users WHERE id=1 OR id=2 ORDER BY birthday ASC;
-- * to see user  > 3
-- SELECT * FROM users WHERE id >3 

SELECT * FROM users ;
SELECT * FROM faves; 
SELECT * FROM follows;
SELECT * FROM tweets;
SELECT first_name FROM users;
SELECT first_name, last_name FROM users;
SELECT first_name WHERE id = 2;
SELECT * FROM users WHERE id <= 3;
-- all of the users with first name ending in e
SELECT * FROM users WHERE first_name LIKE "%e";
-- all of the users with first name  not starts with k
SELECT * FROM users WHERE first_name NOT LIKE "k%";
-- users with the first name that ends with "e" with the youngest users at the top 
SELECT * FROM users WHERE first_name LIKE "%e" ORDER BY birthday DESC;
-- alphabetical
SELECT first_name FROM users ORDER BY first_name;
-- uery would you run to get user records 3-5 
SELECT * FROM users LIMIT 3 OFFSET 2;
SELECT * FROM users LIMIT 2,3;















