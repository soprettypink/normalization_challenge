
CREATE TABLE categories (
	id SERIAL PRIMARY KEY,
	name VARCHAR
);

CREATE TABLE book_categories (
	book_id INTEGER REFERENCES books(id),
	category_id INTEGER REFERENCES categories(id)
);

INSERT INTO categories (id, name) VALUES ('1', 'Classic');
INSERT INTO categories (id, name) VALUES ('2', 'Dystopian');
INSERT INTO categories (id, name) VALUES ('3', 'Fiction');