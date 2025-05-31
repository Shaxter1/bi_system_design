CREATE TABLE sales (
  id SERIAL PRIMARY KEY,
  date DATE,
  product TEXT,
  amount NUMERIC
);

INSERT INTO sales (date, product, amount) VALUES
('2024-01-01', 'Apples', 100),
('2024-01-02', 'Bananas', 150),
('2024-01-03', 'Oranges', 200);
