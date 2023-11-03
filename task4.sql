SELECT c.name as customer_name, SUM(oi.quantity * oi.unit_price) as total_purchase_amount
FROM Customers c
JOIN Orders o ON c.customer_id = o.customer_id
JOIN Order_Items oi ON o.order_id = oi.order_id
GROUP BY c.name
ORDER BY total_purchase_amount DESC
LIMIT 5;
