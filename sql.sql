CREATE TABLE person (
id SERIAL PRIMARY KEY,
name VARCHAR(200),
age INT,
height INT,
city VARCHAR(200),
favorite_color VARCHAR(200)
);

INSERT INTO person 
(name ,age ,height,city,favorite_color )
VALUES ('kyle', 28, 100, 'highland', 'green'),
('k', 23, 100, 'alpine', 'blue'),
('t', 24, 100, 'salt lake', 'red'),
('g', 23, 100, 'high', 'green'),
('e', 48, 100, 'highland', 'black');

SELECT * FROM person ORDER BY height DESC;

SELECT * FROM person ORDER BY height ASC;

SELECT * FROM person ORDER BY age DESC;
SELECT * FROM person WHERE age > 20;

SELECT * FROM person WHERE age = 18;

SELECT * FROM person WHERE age < 20 OR age > 30;

SELECT * FROM person WHERE age != 27;

SELECT * FROM person WHERE favorite_color != 'red';

SELECT * FROM person WHERE favorite_color != 'red' AND favorite_color != 'blue';
SELECT * FROM person WHERE favorite_color = 'orange' OR favorite_color = 'green';
SELECT * FROM person WHERE favorite_color IN ('orange','green','blue');
SELECT * FROM person WHERE favorite_color IN ('purple','yellow');

CREATE TABLE orders ( 
order_id SERIAL PRIMARY KEY, 
person_id INT, 
product_name VARCHAR(200), 
product_price FLOAT, 
quantity INT );

INSERT INTO orders ( person_id, product_name, product_price, quantity ) VALUES 
( 2, 'bread', 10, 1 ),
( 2, 'pb', 15, 2 ),
( 2, 'jelly', 5.50, 1 ),
( 3, 'oj', 4, 10 ),
( 1, 'milk', 10, 1 );

SELECT * FROM orders;

SELECT Sum(quantity) FROM orders;

SELECT Sum(product_price * quantity) FROM orders;

SELECT Sum(product_price * quantity) FROM orders WHERE person_id = 2;

INSERT INTO artist (name) VALUES ('JBOOG');

SELECT * FROM artist ORDER BY name DESC LIMIT 10;
SELECT * FROM artist ORDER BY name ASC LIMIT 5;

SELECT * FROM artists WHERE name LIKE 'Black%';
SELECT * FROM artists WHERE name LIKE '%Black%';


SELECT first_name, last_name FROM employee WHERE city = 'Calgary';

SELECT Max(birth_date) FROM employee;
SELECT Min(birth_date) FROM employee;

SELECT * FROM employee WHERE reports_to = (SELECT id FROM employee WHERE first_name = 'Nancy' AND last_name = 'Edwards');

SELECT Count(*) FROM employee WHERE city = 'Lethbridge';

SELECT Count(*) FROM invoice WHERE billing_country = 'USA';

SELECT Max(total) FROM invoice;

SELECT Min(total) FROM invoice;

SELECT * FROM invoice WHERE total > 5;

SELECT Count(*) FROM invoice WHERE total < 5;

SELECT Count(*) FROM invoice WHERE billing_state IN ('CA', 'TX', 'AZ');

SELECT Avg(total) FROM invoice;

SELECT Sum(total) FROM invoice;