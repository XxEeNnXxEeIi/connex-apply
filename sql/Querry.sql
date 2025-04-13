-- 1. JOIN (INNER JOIN, LEFT JOIN, RIGHT JOIN) 3+ tables
SELECT 
  c.name AS customer_name,
  o.order_date,
  p.name AS product_name,
  oi.quantity,
  p.price,
  (oi.quantity * p.price) AS total_price
FROM customers c
INNER JOIN orders o ON c.id = o.customer_id
LEFT JOIN order_items oi ON o.id = oi.order_id
LEFT JOIN products p ON oi.product_id = p.id;

-- 2. GROUP BY + Aggregate Function + HAVING
SELECT 
  c.name AS customer_name,
  COUNT(o.id) AS total_orders,
  SUM(oi.quantity * p.price) AS total_spent
FROM customers c
JOIN orders o ON c.id = o.customer_id
JOIN order_items oi ON o.id = oi.order_id
JOIN products p ON oi.product_id = p.id
GROUP BY c.name
HAVING SUM(oi.quantity * p.price) > 1000;

-- 3. ORDER BY multiple columns
SELECT 
  p.name AS product_name,
  SUM(oi.quantity) AS total_sold
FROM order_items oi
JOIN products p ON oi.product_id = p.id
GROUP BY p.name
ORDER BY total_sold DESC, p.name ASC;

-- 4. WHERE vs HAVING
SELECT *
FROM orders
WHERE order_date >= '2024-01-01';

SELECT customer_id, COUNT(*) AS total_orders
FROM orders
GROUP BY customer_id
HAVING COUNT(*) > 5;