-- 1. Total Revenue
SELECT SUM(amount) AS total_revenue 
FROM payments;

-- 2. Top Customers by Spending
SELECT c.name, SUM(p.amount) AS total_spent
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
JOIN payments p ON o.order_id = p.order_id
GROUP BY c.name
ORDER BY total_spent DESC;

-- 3. Best Selling Products
SELECT pr.product_name, SUM(od.quantity) AS total_sold
FROM products pr
JOIN order_details od ON pr.product_id = od.product_id
GROUP BY pr.product_name
ORDER BY total_sold DESC;

-- 4. Monthly Revenue Trend
SELECT MONTH(o.order_date) AS month, SUM(p.amount) AS revenue
FROM orders o
JOIN payments p ON o.order_id = p.order_id
GROUP BY MONTH(o.order_date)
ORDER BY month;

-- 5. Rank Customers (Window Function)
SELECT c.name,
       SUM(p.amount) AS total_spent,
       RANK() OVER (ORDER BY SUM(p.amount) DESC) AS rank
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
JOIN payments p ON o.order_id = p.order_id
GROUP BY c.name;
