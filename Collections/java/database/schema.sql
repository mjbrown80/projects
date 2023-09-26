BEGIN TRANSACTION;

DROP TABLE IF EXISTS users;

CREATE TABLE users (
	user_id SERIAL,
	username varchar(50) NOT NULL UNIQUE,
	password_hash varchar(200) NOT NULL,
	role varchar(50) NOT NULL,
	CONSTRAINT PK_user PRIMARY KEY (user_id)
);

CREATE TABLE movies (
    movie_id SERIAL PRIMARY KEY,
    api_id int NOT NULL,
    movie_title varchar(200) NOT NULL,
    movie_genre varchar(50) NOT NULL,
    movie_description varchar (200),
    movie_director varchar(50),
    type_dvd boolean,
    number_discs int,
    url varchar(100),
    thumbnail varchar

);

COMMIT TRANSACTION;
