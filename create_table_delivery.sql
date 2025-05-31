DROP TABLE IF EXISTS couriers CASCADE;
CREATE TABLE couriers(
	courier_id INT PRIMARY KEY,
	birth_date DATE,
	sex VARCHAR(10)
);

COPY couriers(courier_id, birth_date, sex) from '/data/csv/couriers.csv' DELIMITER ',' CSV HEADER ENCODING 'UTF-8';

DROP TABLE IF EXISTS users CASCADE;
CREATE TABLE users(
	user_id INT PRIMARY KEY,
	birth_date DATE,
	sex VARCHAR(10)
);

COPY users(user_id, birth_date, sex) from '/data/csv/users.csv' DELIMITER ',' CSV HEADER ENCODING 'UTF-8';

DROP TABLE IF EXISTS products CASCADE;
CREATE TABLE products(
	product_id INT PRIMARY KEY,
	name VARCHAR(50),
	price NUMERIC(10, 2)
);

COPY products(product_id, name, price) from '/data/csv/products.csv' DELIMITER ',' CSV HEADER ENCODING 'UTF-8';

DROP TABLE IF EXISTS orders CASCADE;
CREATE TABLE orders(
	order_id INT PRIMARY KEY,
	creation_time TIMESTAMP,
	product_ids INT[]
);

COPY orders(order_id, creation_time, product_ids) from '/data/csv/orders.csv' DELIMITER ',' CSV HEADER ENCODING 'UTF-8';


DROP TABLE IF EXISTS courier_actions;
CREATE TABLE courier_actions(
	courier_id INT,
	order_id INT,
	action VARCHAR(30),
	time TIMESTAMP
);

COPY courier_actions(courier_id, order_id, action, time) from '/data/csv/courier_actions.csv' DELIMITER ',' CSV HEADER ENCODING 'UTF-8';


DROP TABLE IF EXISTS user_actions;
CREATE TABLE user_actions(
	user_id INT,
	order_id INT,
	action VARCHAR(30),
	time TIMESTAMP
);

COPY user_actions(user_id, order_id, action, time) from '/data/csv/user_actions.csv' DELIMITER ',' CSV HEADER ENCODING 'UTF-8';
