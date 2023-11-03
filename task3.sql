SELECT c.name as category_name, SUM(oi.quantity * oi.unit_price) as total_revenue
FROM Order_Items oi
JOIN Products p ON oi.product_id = p.product_id
JOIN Categories c ON p.category_id = c.category_id
GROUP BY c.name
ORDER BY total_revenue DESC;
