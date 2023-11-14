SELECT *
FROM users
LEFT JOIN tweets
ON users.id = tweets.user_id
WHERE users.id = 1;
-- You can just grab the tweets 
SELECT tweets.tweet
FROM users
LEFT JOIN tweets
ON users.id = tweets.user_id
WHERE users.id = 1;
-- Or rename the output column that you want as kobe_tweets by modifying the statement to look like the following:
SELECT tweets.tweet AS kobe_tweets
FROM users
LEFT JOIN tweets
ON users.id = tweets.user_id
WHERE users.id = 1;
-- all the tweets that the user with id 2 has tagged as favorites
SELECT first_name, tweet
FROM users
LEFT JOIN faves
ON users.id = faves.user_id
LEFT JOIN tweets
ON faves.tweet_id = tweets.id
WHERE users.id = 2;
-- all the tweets that user with id 2, or user with id 1, has tagged as favorites
SELECT first_name, tweet
FROM users
LEFT JOIN faves
ON users.id = faves.user_id
LEFT JOIN tweets
ON faves.tweet_id = tweets.id
WHERE users.id = 1 OR users.id = 2;
-- get all the users that are following the user with id 1 
SELECT users.first_name AS followed, users2.first_name AS follower
FROM users
LEFT JOIN follows
ON users.id = follows.followed_id
LEFT JOIN users AS users2
ON users2.id = follows.follower_id
WHERE users.id = 1;
-- get all users that are not following the user with id of 2
SELECT *
FROM users
WHERE users.id NOT IN (
SELECT follower_id
FROM follows
WHERE followed_id = 2
) AND users.id != 2;
-- We can run functions on specific columns and often times it is paired up with the GROUP BY statement. 
-- We will have plenty of practice with functions in the next tab.  
SELECT users.first_name AS user, COUNT(users2.first_name) AS follower_count
FROM users
LEFT JOIN follows
ON users.id = follows.followed_id
LEFT JOIN users AS users2
ON users2.id = follows.follower_id
WHERE users.id = 1
GROUP BY users.id;
-- JOIN LEFT
SELECT first_name, tweet
FROM users
LEFT JOIN tweets
ON users.id = tweets.user_id;

-- JOIN 
SELECT first_name, tweet
FROM users
JOIN tweets
ON users.id = tweets.user_id;








