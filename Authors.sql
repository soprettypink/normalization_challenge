CREATE TABLE authors (
	id SERIAL PRIMARY KEY,
	name VARCHAR(100),
	email VARCHAR(100)
)

INSERT INTO authors (name, email),
	VALUES ('F. Scott Fitzgerald', 'scott@gmail.com');
INSERT INTO authors (name, email),
	VALUES ('George Orwell', 'george@gmail.com');
