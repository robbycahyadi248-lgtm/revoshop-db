////kode ini menjelaskan updates harga product yang lebih dari 1000000
SELECT product_id, name, price, stock FROM products
WHERE price > 1000000
ORDER BY price ASC;

//// kode ini menjelaskan updates stok yang kurang dari 30 dari tabel product////

SELECT name, stock FROM products
WHERE stock < 30
ORDER BY stock ASC;

//// kode ini memiliki outputs dari orders yang sudah completes////

SELECT order_id, user_id, order_date, status FROM orders
WHERE status = 'completed'
ORDER BY order_date DESC;

//// kode ini menjelaskan total belanja dari setiap pesanan disetiap pelanggan dan menyebutkan nama pelanggan siapa saja////

SELECT u.name AS customer,
       o.order_id,
       o.status,
       SUM(oi.quantity * oi.unit_price) AS total
FROM orders o
JOIN users u        ON u.user_id  = o.user_id
JOIN order_items oi ON oi.order_id = o.order_id
GROUP BY u.name, o.order_id, o.status
ORDER BY o.order_id;