CREATE TABLE books (
	id SERIAL PRIMARY KEY,
	title VARCHAR(200),
	isbn VARCHAR(20),
	publication_year INTEGER,
	author_id INTEGER REFERENCES authors(id)
);

INSERT INTO books (title, isbn, publication_year, author_id)
	VALUES ('The Great Gatsby', '9780743273565', '1925', '1');
INSERT INTO books (title, isbn, publication_year, author_id)
	VALUES ('Tender Is the Night', '9780684801544', '1934', '1');
INSERT INTO books (title, isbn, publication_year, author_id)
	VALUES ('1984', '9780451524935', '1949', '2')

SELECT b.title, b.isbn, b.publication_year, a.name, a.email,
FROM books b,
JOIN authors a ON b.author_id = a.id;