CREATE DATABASE netflix_db;
USE netflix_db;

CREATE TABLE users(
    user_id INT PRIMARY KEY,
    user_name VARCHAR(100),
    age INT,
    country VARCHAR(50),
    subscription_type VARCHAR(20)
);

CREATE TABLE movies(
    movie_id INT PRIMARY KEY,
    title VARCHAR(100),
    genre VARCHAR(50),
    release_year INT,
    duration INT
);

CREATE TABLE watch_history(
    watch_id INT PRIMARY KEY,
    user_id INT,
    movie_id INT,
    watch_date DATE,
    watch_time_minutes INT,
    FOREIGN KEY(user_id) REFERENCES users(user_id),
    FOREIGN KEY(movie_id) REFERENCES movies(movie_id)
);

CREATE TABLE ratings(
    rating_id INT PRIMARY KEY,
    user_id INT,
    movie_id INT,
    rating DECIMAL(2,1),
    FOREIGN KEY(user_id) REFERENCES users(user_id),
    FOREIGN KEY(movie_id) REFERENCES movies(movie_id)
);

CREATE TABLE subscriptions(
    subscription_id INT PRIMARY KEY,
    user_id INT,
    monthly_fee DECIMAL(10,2),
    start_date DATE,
    FOREIGN KEY(user_id) REFERENCES users(user_id)
);
