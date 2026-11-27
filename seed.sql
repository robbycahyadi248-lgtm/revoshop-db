INSERT INTO users (name, email, password_hash)
VALUES
('Reyhan', 'reyhan123@example.com', 'hash_reyhan_123'),
('Siti',   'siti345@example.com',   'hash_siti_345'),
('Aldo',   'aldo885@example.com',   'hash_aldo_885'),
('Farhan', 'farhan5768@example.com','hash_farhan_5768'),
('Aldi',   'aldi758649@example.com','hash_aldi_758649'),
('Roby',   'roby@example.com',      'hash_roby_2367');

-- 2. categories (id 1-5)
INSERT INTO categories (name) VALUES
('Electronics'),     
('Fashion'),         
('Kitchen Set'),     
('Books'),           
('Sports');          


INSERT INTO products (category_id, name, price, stock) 
VALUES
(1, 'Laptop Asus',          5000000, 10),   
(1, 'Mouse Wireless',         50000, 250),  
(1, 'Keyboard',              150000, 100),  
(2, 'T-Shirt',                90000, 150),  
(2, 'Jacket',                125000, 90),   
(3, 'Stove',                 500000, 50),   
(3, 'Coffee Machine',       2500000, 10),   
(3, 'Icebox',               2000000, 10),   
(4, 'Learning SQL (Book)',   195000, 35),   
(4, 'Clean Code (Book)',     260000, 20),   
(5, 'Yoga Mat',              135000, 45),   
(5, 'Running Shoes',         599000, 15);   


INSERT INTO orders (user_id, status)
VALUES
(1, 'completed'),   
(1, 'pending'),    
(2, 'completed'),   
(3, 'shipped'),     
(4, 'completed'),  
(5, 'cancelled');   


INSERT INTO order_items (order_id, product_id, quantity, unit_price)
VALUES
(1, 1,  1, 5000000),    
(1, 2,  2,   50000),    
(2, 8,  1, 2000000),    
(3, 4,  3,   90000),   
(3, 5,  1,  125000),   
(4, 6,  1,  500000),    
(4, 7,  1, 2500000),   
(5, 3,  1,  150000),   
(5, 10, 2,  260000),   
(5, 11, 1,  135000),   
(6, 12, 1,  599000);    
