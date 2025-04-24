
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

INSERT INTO book_categories (book_id, category_id) VALUES ('1', '1');
INSERT INTO book_categories (book_id, category_id) VALUES ('1', '3');
INSERT INTO book_categories (book_id, category_id) VALUES ('2', '1');
INSERT INTO book_categories (book_id, category_id) VALUES ('2', '3');
INSERT INTO book_categories (book_id, category_id) VALUES ('3', '2');
INSERT INTO book_categories (book_id, category_id) VALUES ('3', '3');

SELECT b.title, c.name 
FROM book_categories bc
JOIN books b ON b.id = bc.book_id
JOIN categories c ON c.id = bc.category_id;