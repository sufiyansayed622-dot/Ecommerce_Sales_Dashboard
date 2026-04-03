
use ecommerce;
SELECT COUNT(*) FROM orders;
SELECT COUNT(*) FROM customer;
SELECT COUNT(*) FROM products;

select count(*) from
ecommerce_dataset;

select * from orders limit 10;
select * from products limit 10;
select * from customer ;

SELECT SUM(quantity * price) AS total_revenue FROM orders;

SELECT COUNT(DISTINCT order_id) AS total_orders FROM orders;

ALTER TABLE orders
CHANGE `ï»¿order_id` order_id INT;

ALTER TABLE customer
CHANGE `ï»¿customer_id` customer_id INT;

ALTER TABLE products
CHANGE `ï»¿product_id` product_id INT;

SELECT COUNT(DISTINCT customer_id) AS total_customers FROM customer;


SELECT customer_id,
       SUM(quantity * price) AS total_spent
FROM orders
GROUP BY customer_id
ORDER BY total_spent DESC
LIMIT 5;


SELECT p.category,
       SUM(o.quantity * o.price) AS revenue
FROM orders o
JOIN products p ON o.product_id = p.product_id
GROUP BY p.category
ORDER BY revenue DESC;


SELECT DATE_FORMAT(order_date, '%Y-%m') AS month,
       SUM(quantity * price) AS revenue
FROM orders
GROUP BY month
ORDER BY month;


SELECT customer_id,
       COUNT(order_id) AS total_orders
FROM orders
GROUP BY customer_id
HAVING total_orders > 1;



