SELECT * FROM users;

SELECT * FROM movies;

SELECT
u.user_name,
COUNT(*) AS total_views
FROM users u
JOIN watch_history w
ON u.user_id=w.user_id
GROUP BY u.user_name
ORDER BY total_views DESC;

SELECT
m.title,
AVG(r.rating) AS avg_rating
FROM movies m
JOIN ratings r
ON m.movie_id=r.movie_id
GROUP BY m.title
ORDER BY avg_rating DESC;

SELECT
SUM(monthly_fee) AS revenue
FROM subscriptions;

SELECT
subscription_type,
COUNT(*) AS users
FROM users
GROUP BY subscription_type;

SELECT
u.user_name,
SUM(w.watch_time_minutes) AS watch_time
FROM users u
JOIN watch_history w
ON u.user_id=w.user_id
GROUP BY u.user_name
ORDER BY watch_time DESC;

SELECT
m.genre,
COUNT(*) AS views
FROM movies m
JOIN watch_history w
ON m.movie_id=w.movie_id
GROUP BY m.genre
ORDER BY views DESC;

