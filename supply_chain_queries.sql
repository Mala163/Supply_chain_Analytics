CREATE DATABASE supply_chain_analytics;
use supply_chain_analytics;

-- Supply Chain Analytics & Inventory Optimization 
CREATE TABLE products (
  product_id INT PRIMARY KEY,
  product_name VARCHAR(100),
  category VARCHAR(50),
  supplier_name VARCHAR(100),
  unit_cost DECIMAL(10,2),
  unit_price DECIMAL(10,2),
  lead_time_days INT
);
CREATE TABLE inventory (
  inventory_id INT PRIMARY KEY,
  product_id INT REFERENCES products(product_id),
  warehouse VARCHAR(50),
  stock_qty INT,
  reorder_level INT,
  safety_stock INT,
  last_restock_date DATE
);
CREATE TABLE sales_orders (
  order_id INT PRIMARY KEY,
  product_id INT REFERENCES products(product_id),
  order_date DATE,
  quantity INT,
  region VARCHAR(50),
  order_status VARCHAR(20),
  total_amount DECIMAL(12,2)
);

INSERT INTO products (product_id, product_name, category, supplier_name, unit_cost, unit_price, lead_time_days) VALUES
(1, 'Wireless Mouse', 'Electronics', 'Trichy Agencies', 1925.49, 2235.98, 9),
(2, 'USB Keyboard', 'Electronics', 'Coimbatore Suppliers', 685.17, 1015.02, 4),
(3, 'HDMI Cable', 'Electronics', 'Kovai Distributors', 1779.67, 2072.07, 8),
(4, 'Power Bank', 'Electronics', 'Coimbatore Suppliers', 713.33, 1013.58, 8),
(5, 'Bluetooth Speaker', 'Electronics', 'Bangalore Logistics', 2153.74, 3156.51, 9),
(6, 'LED Monitor', 'Electronics', 'Sri Balaji Traders', 1358.64, 1732.52, 7),
(7, 'Webcam', 'Electronics', 'Madurai Wholesalers', 2100.46, 2737.14, 8),
(8, 'Router', 'Electronics', 'Kovai Distributors', 2872.49, 3738.45, 14),
(9, 'Earphones', 'Electronics', 'Pune Trading Co', 308.21, 471.98, 10),
(10, 'Laptop Charger', 'Electronics', 'Coimbatore Suppliers', 2425.24, 3585.42, 5),
(11, 'Basmati Rice 5kg', 'Groceries', 'Coimbatore Suppliers', 2919.88, 3855.24, 11),
(12, 'Sunflower Oil 1L', 'Groceries', 'Salem Imports', 2491.63, 3558.88, 20),
(13, 'Toor Dal 1kg', 'Groceries', 'Chennai Supply Co', 593.02, 700.53, 11),
(14, 'Sugar 1kg', 'Groceries', 'Kovai Distributors', 2955.96, 4537.08, 14),
(15, 'Tea Powder 500g', 'Groceries', 'Salem Imports', 848.36, 1218.29, 7),
(16, 'Wheat Flour 5kg', 'Groceries', 'Trichy Agencies', 1123.14, 1397.5, 4),
(17, 'Salt 1kg', 'Groceries', 'Chennai Supply Co', 1835.21, 2251.83, 7),
(18, 'Coffee Powder 200g', 'Groceries', 'Coimbatore Suppliers', 1397.54, 1776.94, 9),
(19, 'Turmeric Powder 100g', 'Groceries', 'Sri Balaji Traders', 2060.15, 3150.55, 9),
(20, 'Biscuit Pack', 'Groceries', 'Bangalore Logistics', 2468.97, 3733.75, 10),
(21, 'Paracetamol 500mg', 'Pharma', 'Pune Trading Co', 217.24, 339.09, 12),
(22, 'Hand Sanitizer', 'Pharma', 'Hyderabad Mart', 653.63, 898.52, 6),
(23, 'Face Mask Box', 'Pharma', 'Coimbatore Suppliers', 809.34, 1020.56, 19),
(24, 'Digital Thermometer', 'Pharma', 'Pune Trading Co', 802.97, 1134.65, 14),
(25, 'BP Monitor', 'Pharma', 'Madurai Wholesalers', 1098.75, 1756.68, 18),
(26, 'Vitamin C Tablets', 'Pharma', 'Kovai Distributors', 1490.68, 2221.27, 6),
(27, 'Cough Syrup', 'Pharma', 'Bangalore Logistics', 1889.79, 2846.85, 21),
(28, 'First Aid Kit', 'Pharma', 'Hyderabad Mart', 209.31, 276.65, 18),
(29, 'Glucose Powder', 'Pharma', 'Sri Balaji Traders', 769.21, 1076.09, 5),
(30, 'Antiseptic Liquid', 'Pharma', 'Trichy Agencies', 2051.5, 2854.94, 12),
(31, 'A4 Paper Ream', 'Stationery', 'Hyderabad Mart', 352.43, 474.25, 2),
(32, 'Ball Pen Box', 'Stationery', 'Trichy Agencies', 2862.37, 4419.88, 18),
(33, 'Notebook Pack', 'Stationery', 'Kovai Distributors', 2290.65, 3157.56, 11),
(34, 'Stapler', 'Stationery', 'Chennai Supply Co', 2528.17, 3484.95, 6),
(35, 'File Folder', 'Stationery', 'Coimbatore Suppliers', 1134.26, 1386.86, 2),
(36, 'Marker Set', 'Stationery', 'Kovai Distributors', 1804.85, 2472.41, 13),
(37, 'Sticky Notes', 'Stationery', 'Trichy Agencies', 2638.59, 4021.87, 9),
(38, 'Highlighter Set', 'Stationery', 'Kovai Distributors', 192.62, 297.62, 4),
(39, 'Calculator', 'Stationery', 'Coimbatore Suppliers', 2201.08, 3339.5, 6),
(40, 'Whiteboard', 'Stationery', 'Coimbatore Suppliers', 402.61, 549.11, 7),
(41, 'Steel Bottle', 'Home & Kitchen', 'Bangalore Logistics', 809.87, 1249.3, 8),
(42, 'Non-stick Pan', 'Home & Kitchen', 'Chennai Supply Co', 2788.16, 4153.99, 11),
(43, 'Pressure Cooker', 'Home & Kitchen', 'Salem Imports', 1209.0, 1755.78, 16),
(44, 'Mixer Grinder', 'Home & Kitchen', 'Chennai Supply Co', 2700.85, 3654.71, 9),
(45, 'Dinner Set', 'Home & Kitchen', 'Coimbatore Suppliers', 210.8, 244.42, 9),
(46, 'Water Jug', 'Home & Kitchen', 'Sri Balaji Traders', 1773.55, 2045.32, 9),
(47, 'Lunch Box', 'Home & Kitchen', 'Salem Imports', 220.85, 257.1, 4),
(48, 'Kitchen Knife Set', 'Home & Kitchen', 'Hyderabad Mart', 1552.19, 1979.53, 8),
(49, 'Electric Kettle', 'Home & Kitchen', 'Pune Trading Co', 1626.92, 2400.53, 20),
(50, 'Storage Container', 'Home & Kitchen', 'Bangalore Logistics', 1428.56, 2147.24, 8),
(51, 'Cotton T-Shirt', 'Apparel', 'Salem Imports', 301.09, 435.54, 15),
(52, 'Denim Jeans', 'Apparel', 'Sri Balaji Traders', 1245.08, 1915.84, 5),
(53, 'Formal Shirt', 'Apparel', 'Kovai Distributors', 200.63, 296.47, 9),
(54, 'Hoodie', 'Apparel', 'Madurai Wholesalers', 590.94, 822.19, 15),
(55, 'Sports Socks', 'Apparel', 'Kovai Distributors', 566.79, 769.8, 16),
(56, 'Cap', 'Apparel', 'Kovai Distributors', 2427.91, 3727.29, 3),
(57, 'Track Pants', 'Apparel', 'Sri Balaji Traders', 1963.39, 2735.52, 4),
(58, 'Kurta', 'Apparel', 'Madurai Wholesalers', 2780.57, 4259.59, 15),
(59, 'Jacket', 'Apparel', 'Bangalore Logistics', 1467.21, 1828.42, 3),
(60, 'Handkerchief Pack', 'Apparel', 'Bangalore Logistics', 510.62, 587.71, 10),
(61, 'Office Chair', 'Furniture', 'Trichy Agencies', 2781.02, 4180.73, 15),
(62, 'Study Table', 'Furniture', 'Coimbatore Suppliers', 2095.84, 3099.18, 17),
(63, 'Bookshelf', 'Furniture', 'Sri Balaji Traders', 481.29, 617.74, 20),
(64, 'Shoe Rack', 'Furniture', 'Salem Imports', 2212.5, 2605.07, 3),
(65, 'Plastic Stool', 'Furniture', 'Coimbatore Suppliers', 169.42, 231.18, 7),
(66, 'Wall Clock', 'Furniture', 'Madurai Wholesalers', 189.5, 261.23, 4),
(67, 'Cabinet', 'Furniture', 'Chennai Supply Co', 1793.2, 2607.04, 14),
(68, 'Bed Side Table', 'Furniture', 'Chennai Supply Co', 377.26, 584.99, 20),
(69, 'TV Stand', 'Furniture', 'Bangalore Logistics', 1791.67, 2559.8, 20),
(70, 'Folding Chair', 'Furniture', 'Trichy Agencies', 1704.38, 2202.68, 8),
(71, 'Shampoo 340ml', 'Personal Care', 'Trichy Agencies', 2015.78, 2603.14, 14),
(72, 'Body Lotion', 'Personal Care', 'Hyderabad Mart', 410.02, 590.62, 12),
(73, 'Face Wash', 'Personal Care', 'Sri Balaji Traders', 2788.47, 4380.91, 16),
(74, 'Toothpaste', 'Personal Care', 'Kovai Distributors', 1871.05, 2625.73, 4),
(75, 'Sunscreen SPF50', 'Personal Care', 'Madurai Wholesalers', 1622.15, 2234.75, 13),
(76, 'Hair Oil', 'Personal Care', 'Salem Imports', 2644.98, 4088.27, 11),
(77, 'Soap Pack', 'Personal Care', 'Trichy Agencies', 490.09, 747.48, 21),
(78, 'Deodorant', 'Personal Care', 'Coimbatore Suppliers', 2951.88, 4466.77, 2),
(79, 'Moisturizer', 'Personal Care', 'Kovai Distributors', 2010.23, 2813.46, 6),
(80, 'Lip Balm', 'Personal Care', 'Coimbatore Suppliers', 808.11, 1252.87, 6),
(81, 'Screwdriver Set', 'Tools', 'Salem Imports', 831.6, 1182.68, 8),
(82, 'Drill Machine', 'Tools', 'Coimbatore Suppliers', 2068.74, 3173.06, 17),
(83, 'Hammer', 'Tools', 'Sri Balaji Traders', 768.34, 1197.59, 4),
(84, 'Measuring Tape', 'Tools', 'Sri Balaji Traders', 1910.17, 2909.58, 2),
(85, 'Spanner Set', 'Tools', 'Trichy Agencies', 1014.0, 1225.79, 7),
(86, 'Pliers', 'Tools', 'Bangalore Logistics', 2228.87, 3116.53, 19),
(87, 'Extension Board', 'Tools', 'Madurai Wholesalers', 48.82, 57.8, 19),
(88, 'Torch Light', 'Tools', 'Coimbatore Suppliers', 127.36, 167.62, 6),
(89, 'Tool Box', 'Tools', 'Salem Imports', 1300.76, 1520.36, 3),
(90, 'Safety Gloves', 'Tools', 'Chennai Supply Co', 2698.8, 3358.75, 5),
(91, 'Building Blocks', 'Toys', 'Bangalore Logistics', 1073.96, 1505.64, 21),
(92, 'Remote Car', 'Toys', 'Chennai Supply Co', 2253.44, 3530.22, 7),
(93, 'Board Game', 'Toys', 'Bangalore Logistics', 2929.09, 4437.12, 2),
(94, 'Puzzle 500pc', 'Toys', 'Bangalore Logistics', 554.49, 868.34, 9),
(95, 'Soft Toy', 'Toys', 'Kovai Distributors', 815.08, 1226.14, 14),
(96, 'Art Kit', 'Toys', 'Chennai Supply Co', 2619.06, 4023.84, 8),
(97, 'Skipping Rope', 'Toys', 'Trichy Agencies', 2453.43, 3329.64, 9),
(98, 'Cricket Bat', 'Toys', 'Bangalore Logistics', 684.31, 990.21, 12),
(99, 'Football', 'Toys', 'Trichy Agencies', 850.24, 1004.34, 13),
(100, 'Carrom Board', 'Toys', 'Coimbatore Suppliers', 1931.62, 2568.78, 12);
---------------------------------------------------------------------------------------------------------------------
INSERT INTO inventory (inventory_id, product_id, warehouse, stock_qty, reorder_level, safety_stock, last_restock_date) VALUES
(1, 1, 'Chennai', 49, 27, 6, '2026-09-25'),
(2, 2, 'Madurai', 80, 131, 27, '2026-08-05'),
(3, 3, 'Bangalore', 5, 68, 13, '2026-08-03'),
(4, 4, 'Bangalore', 105, 70, 16, '2026-09-11'),
(5, 5, 'Coimbatore', 130, 51, 14, '2026-09-06'),
(6, 6, 'Madurai', 193, 95, 40, '2026-08-19'),
(7, 7, 'Coimbatore', 38, 64, 24, '2026-09-13'),
(8, 8, 'Madurai', 311, 73, 32, '2026-08-19'),
(9, 9, 'Coimbatore', 60, 74, 37, '2026-08-30'),
(10, 10, 'Coimbatore', 104, 105, 10, '2026-09-17'),
(11, 11, 'Madurai', 3, 70, 9, '2026-08-23'),
(12, 12, 'Madurai', 26, 38, 12, '2026-08-31'),
(13, 13, 'Chennai', 18, 122, 20, '2026-08-13'),
(14, 14, 'Bangalore', 45, 128, 19, '2026-09-16'),
(15, 15, 'Madurai', 169, 51, 19, '2026-08-23'),
(16, 16, 'Madurai', 140, 149, 59, '2026-09-03'),
(17, 17, 'Trichy', 227, 86, 20, '2026-09-14'),
(18, 18, 'Coimbatore', 372, 132, 9, '2026-09-11'),
(19, 19, 'Trichy', 99, 40, 9, '2026-08-17'),
(20, 20, 'Bangalore', 282, 74, 9, '2026-09-02'),
(21, 21, 'Madurai', 552, 126, 8, '2026-08-05'),
(22, 22, 'Coimbatore', 25, 25, 11, '2026-08-14'),
(23, 23, 'Bangalore', 546, 119, 59, '2026-08-15'),
(24, 24, 'Madurai', 215, 76, 36, '2026-09-30'),
(25, 25, 'Trichy', 466, 119, 26, '2026-08-09'),
(26, 26, 'Bangalore', 166, 139, 21, '2026-08-26'),
(27, 27, 'Madurai', 20, 26, 6, '2026-09-20'),
(28, 28, 'Madurai', 24, 32, 9, '2026-09-11'),
(29, 29, 'Coimbatore', 248, 106, 53, '2026-08-09'),
(30, 30, 'Coimbatore', 1, 40, 20, '2026-09-17'),
(31, 31, 'Trichy', 2, 37, 17, '2026-08-09'),
(32, 32, 'Chennai', 41, 25, 7, '2026-08-26'),
(33, 33, 'Bangalore', 32, 75, 34, '2026-08-24'),
(34, 34, 'Coimbatore', 19, 49, 10, '2026-08-26'),
(35, 35, 'Bangalore', 91, 116, 30, '2026-08-18'),
(36, 36, 'Bangalore', 38, 82, 11, '2026-08-12'),
(37, 37, 'Chennai', 84, 30, 10, '2026-08-30'),
(38, 38, 'Chennai', 528, 107, 5, '2026-09-04'),
(39, 39, 'Madurai', 106, 112, 45, '2026-09-20'),
(40, 40, 'Madurai', 336, 89, 44, '2026-08-10'),
(41, 41, 'Madurai', 132, 88, 25, '2026-09-16'),
(42, 42, 'Coimbatore', 167, 138, 53, '2026-09-20'),
(43, 43, 'Coimbatore', 408, 144, 32, '2026-08-06'),
(44, 44, 'Chennai', 1, 90, 40, '2026-09-16'),
(45, 45, 'Madurai', 71, 124, 36, '2026-08-21'),
(46, 46, 'Trichy', 240, 145, 62, '2026-09-06'),
(47, 47, 'Bangalore', 270, 82, 24, '2026-08-29'),
(48, 48, 'Coimbatore', 389, 108, 32, '2026-08-18'),
(49, 49, 'Chennai', 78, 136, 39, '2026-08-16'),
(50, 50, 'Trichy', 15, 69, 15, '2026-09-18'),
(51, 51, 'Trichy', 134, 143, 40, '2026-09-13'),
(52, 52, 'Bangalore', 22, 78, 28, '2026-09-23'),
(53, 53, 'Trichy', 373, 90, 7, '2026-08-22'),
(54, 54, 'Madurai', 436, 145, 18, '2026-09-03'),
(55, 55, 'Chennai', 236, 107, 16, '2026-08-10'),
(56, 56, 'Trichy', 31, 36, 11, '2026-09-22'),
(57, 57, 'Bangalore', 157, 97, 10, '2026-08-24'),
(58, 58, 'Coimbatore', 307, 77, 38, '2026-08-07'),
(59, 59, 'Trichy', 15, 129, 24, '2026-09-15'),
(60, 60, 'Trichy', 15, 40, 10, '2026-10-01'),
(61, 61, 'Coimbatore', 428, 124, 33, '2026-09-29'),
(62, 62, 'Trichy', 36, 79, 23, '2026-08-03'),
(63, 63, 'Chennai', 188, 87, 42, '2026-08-28'),
(64, 64, 'Chennai', 34, 77, 14, '2026-09-21'),
(65, 65, 'Madurai', 389, 98, 43, '2026-09-24'),
(66, 66, 'Madurai', 417, 139, 43, '2026-09-26'),
(67, 67, 'Chennai', 71, 30, 11, '2026-09-26'),
(68, 68, 'Trichy', 34, 78, 6, '2026-09-01'),
(69, 69, 'Madurai', 318, 133, 63, '2026-09-26'),
(70, 70, 'Chennai', 481, 140, 49, '2026-08-08'),
(71, 71, 'Coimbatore', 238, 61, 15, '2026-08-20'),
(72, 72, 'Madurai', 97, 122, 57, '2026-09-26'),
(73, 73, 'Bangalore', 159, 100, 21, '2026-08-10'),
(74, 74, 'Chennai', 79, 20, 10, '2026-09-19'),
(75, 75, 'Chennai', 367, 112, 44, '2026-09-18'),
(76, 76, 'Madurai', 235, 88, 40, '2026-09-24'),
(77, 77, 'Bangalore', 47, 27, 8, '2026-10-01'),
(78, 78, 'Madurai', 28, 124, 10, '2026-08-02'),
(79, 79, 'Bangalore', 177, 50, 25, '2026-08-17'),
(80, 80, 'Madurai', 61, 89, 31, '2026-08-27'),
(81, 81, 'Chennai', 12, 57, 17, '2026-09-14'),
(82, 82, 'Chennai', 529, 126, 26, '2026-09-13'),
(83, 83, 'Trichy', 433, 96, 42, '2026-09-03'),
(84, 84, 'Madurai', 708, 143, 49, '2026-08-03'),
(85, 85, 'Trichy', 224, 102, 17, '2026-08-08'),
(86, 86, 'Madurai', 506, 125, 7, '2026-09-07'),
(87, 87, 'Chennai', 90, 58, 20, '2026-08-07'),
(88, 88, 'Madurai', 116, 132, 11, '2026-08-07'),
(89, 89, 'Coimbatore', 259, 59, 7, '2026-08-23'),
(90, 90, 'Bangalore', 557, 121, 46, '2026-09-07'),
(91, 91, 'Bangalore', 489, 101, 45, '2026-09-29'),
(92, 92, 'Madurai', 18, 37, 8, '2026-09-25'),
(93, 93, 'Chennai', 222, 45, 19, '2026-09-29'),
(94, 94, 'Madurai', 286, 103, 8, '2026-09-22'),
(95, 95, 'Trichy', 52, 82, 38, '2026-09-20'),
(96, 96, 'Bangalore', 101, 40, 17, '2026-09-22'),
(97, 97, 'Chennai', 314, 79, 34, '2026-08-05'),
(98, 98, 'Madurai', 139, 139, 41, '2026-08-02'),
(99, 99, 'Coimbatore', 435, 108, 42, '2026-09-02'),
(100, 100, 'Trichy', 49, 97, 17, '2026-09-07');
--------------------------------------------------------------------------------------------------------------------
INSERT INTO sales_orders (order_id, product_id, order_date, quantity, region, order_status, total_amount) VALUES
(1, 74, '2026-07-03', 37, 'Coimbatore', 'Cancelled', 97152.01),
(2, 38, '2026-01-12', 54, 'Madurai', 'Delivered', 16071.48),
(3, 2, '2026-01-26', 59, 'Bangalore', 'Cancelled', 59886.18),
(4, 64, '2026-05-27', 50, 'Trichy', 'Pending', 130253.5),
(5, 46, '2026-04-23', 41, 'Trichy', 'Pending', 83858.12),
(6, 33, '2026-03-12', 41, 'Chennai', 'Cancelled', 129459.96),
(7, 83, '2026-01-21', 20, 'Madurai', 'Delivered', 23951.8),
(8, 75, '2026-07-06', 47, 'Trichy', 'Delivered', 105033.25),
(9, 38, '2026-06-17', 48, 'Madurai', 'Delivered', 14285.76),
(10, 26, '2026-03-09', 51, 'Bangalore', 'Delivered', 113284.77),
(11, 68, '2026-09-14', 59, 'Coimbatore', 'Delivered', 34514.41),
(12, 33, '2026-09-04', 52, 'Coimbatore', 'Cancelled', 164193.12),
(13, 44, '2026-02-28', 30, 'Chennai', 'Delivered', 109641.3),
(14, 97, '2026-04-26', 56, 'Madurai', 'Pending', 186459.84),
(15, 47, '2026-02-16', 51, 'Madurai', 'Delivered', 13112.1),
(16, 34, '2026-10-02', 8, 'Madurai', 'Delivered', 27879.6),
(17, 87, '2026-05-15', 38, 'Madurai', 'Cancelled', 2196.4),
(18, 48, '2026-02-25', 44, 'Trichy', 'Shipped', 87099.32),
(19, 4, '2026-10-15', 21, 'Bangalore', 'Delivered', 21285.18),
(20, 83, '2026-02-02', 41, 'Madurai', 'Cancelled', 49101.19),
(21, 39, '2026-07-29', 8, 'Trichy', 'Delivered', 26716.0),
(22, 5, '2026-06-05', 32, 'Chennai', 'Delivered', 101008.32),
(23, 31, '2026-10-03', 9, 'Madurai', 'Shipped', 4268.25),
(24, 48, '2026-10-04', 27, 'Bangalore', 'Cancelled', 53447.31),
(25, 94, '2026-03-21', 57, 'Madurai', 'Cancelled', 49495.38),
(26, 13, '2026-09-08', 40, 'Madurai', 'Delivered', 28021.2),
(27, 5, '2026-07-09', 14, 'Madurai', 'Shipped', 44191.14),
(28, 31, '2026-07-05', 7, 'Coimbatore', 'Pending', 3319.75),
(29, 83, '2026-07-03', 4, 'Madurai', 'Delivered', 4790.36),
(30, 25, '2026-03-04', 55, 'Madurai', 'Delivered', 96617.4),
(31, 85, '2026-04-19', 42, 'Bangalore', 'Delivered', 51483.18),
(32, 7, '2026-06-20', 16, 'Trichy', 'Pending', 43794.24),
(33, 27, '2026-02-05', 54, 'Bangalore', 'Delivered', 153729.9),
(34, 76, '2026-04-21', 53, 'Trichy', 'Delivered', 216678.31),
(35, 100, '2026-03-17', 51, 'Bangalore', 'Delivered', 131007.78),
(36, 36, '2026-03-16', 9, 'Bangalore', 'Delivered', 22251.69),
(37, 23, '2026-02-26', 43, 'Chennai', 'Delivered', 43884.08),
(38, 2, '2026-07-03', 51, 'Trichy', 'Pending', 51766.02),
(39, 42, '2026-01-09', 12, 'Coimbatore', 'Delivered', 49847.88),
(40, 17, '2026-08-04', 34, 'Chennai', 'Cancelled', 76562.22),
(41, 9, '2026-09-01', 29, 'Coimbatore', 'Pending', 13687.42),
(42, 76, '2026-02-25', 29, 'Bangalore', 'Delivered', 118559.83),
(43, 79, '2026-01-23', 47, 'Bangalore', 'Delivered', 132232.62),
(44, 59, '2026-01-16', 4, 'Madurai', 'Shipped', 7313.68),
(45, 55, '2026-02-25', 32, 'Madurai', 'Delivered', 24633.6),
(46, 11, '2026-06-14', 39, 'Trichy', 'Delivered', 150354.36),
(47, 17, '2026-05-21', 40, 'Bangalore', 'Pending', 90073.2),
(48, 92, '2026-06-16', 25, 'Bangalore', 'Pending', 88255.5),
(49, 38, '2026-08-21', 33, 'Bangalore', 'Shipped', 9821.46),
(50, 13, '2026-02-28', 55, 'Bangalore', 'Cancelled', 38529.15),
(51, 28, '2026-08-09', 29, 'Trichy', 'Shipped', 8022.85),
(52, 44, '2026-08-21', 26, 'Madurai', 'Cancelled', 95022.46),
(53, 13, '2026-06-10', 28, 'Coimbatore', 'Cancelled', 19614.84),
(54, 33, '2026-07-11', 10, 'Madurai', 'Delivered', 31575.6),
(55, 12, '2026-02-13', 6, 'Madurai', 'Delivered', 21353.28),
(56, 96, '2026-07-10', 52, 'Trichy', 'Pending', 209239.68),
(57, 8, '2026-10-15', 36, 'Coimbatore', 'Cancelled', 134584.2),
(58, 16, '2026-07-30', 23, 'Madurai', 'Cancelled', 32142.5),
(59, 7, '2026-05-28', 39, 'Coimbatore', 'Delivered', 106748.46),
(60, 14, '2026-09-17', 14, 'Trichy', 'Cancelled', 63519.12),
(61, 62, '2026-04-25', 55, 'Chennai', 'Delivered', 170454.9),
(62, 72, '2026-07-08', 8, 'Coimbatore', 'Pending', 4724.96),
(63, 29, '2026-08-08', 55, 'Bangalore', 'Pending', 59184.95),
(64, 79, '2026-10-13', 2, 'Bangalore', 'Cancelled', 5626.92),
(65, 89, '2026-05-17', 2, 'Trichy', 'Delivered', 3040.72),
(66, 90, '2026-06-08', 59, 'Coimbatore', 'Delivered', 198166.25),
(67, 1, '2026-04-03', 56, 'Trichy', 'Pending', 125214.88),
(68, 85, '2026-07-25', 5, 'Trichy', 'Cancelled', 6128.95),
(69, 82, '2026-01-16', 6, 'Bangalore', 'Delivered', 19038.36),
(70, 49, '2026-08-03', 30, 'Coimbatore', 'Delivered', 72015.9),
(71, 48, '2026-06-09', 47, 'Coimbatore', 'Pending', 93037.91),
(72, 77, '2026-02-13', 57, 'Chennai', 'Delivered', 42606.36),
(73, 21, '2026-01-26', 44, 'Chennai', 'Delivered', 14919.96),
(74, 57, '2026-08-06', 32, 'Bangalore', 'Shipped', 87536.64),
(75, 54, '2026-05-20', 14, 'Bangalore', 'Delivered', 11510.66),
(76, 45, '2026-08-09', 8, 'Coimbatore', 'Cancelled', 1955.36),
(77, 87, '2026-09-07', 34, 'Coimbatore', 'Delivered', 1965.2),
(78, 29, '2026-07-22', 39, 'Chennai', 'Delivered', 41967.51),
(79, 27, '2026-06-04', 14, 'Trichy', 'Delivered', 39855.9),
(80, 38, '2026-06-17', 8, 'Chennai', 'Shipped', 2380.96),
(81, 96, '2026-08-09', 12, 'Trichy', 'Shipped', 48286.08),
(82, 69, '2026-04-28', 33, 'Bangalore', 'Cancelled', 84473.4),
(83, 46, '2026-02-06', 26, 'Chennai', 'Shipped', 53178.32),
(84, 3, '2026-08-24', 59, 'Chennai', 'Delivered', 122252.13),
(85, 74, '2026-08-08', 37, 'Madurai', 'Cancelled', 97152.01),
(86, 82, '2026-08-02', 19, 'Chennai', 'Shipped', 60288.14),
(87, 3, '2026-06-16', 11, 'Bangalore', 'Shipped', 22792.77),
(88, 89, '2026-07-05', 6, 'Madurai', 'Delivered', 9122.16),
(89, 32, '2026-08-12', 38, 'Madurai', 'Pending', 167955.44),
(90, 11, '2026-07-22', 56, 'Coimbatore', 'Cancelled', 215893.44),
(91, 44, '2026-04-24', 22, 'Trichy', 'Delivered', 80403.62),
(92, 66, '2026-02-28', 34, 'Bangalore', 'Delivered', 8881.82),
(93, 100, '2026-06-28', 23, 'Trichy', 'Delivered', 59081.94),
(94, 14, '2026-03-16', 17, 'Trichy', 'Delivered', 77130.36),
(95, 78, '2026-03-20', 49, 'Chennai', 'Delivered', 218871.73),
(96, 99, '2026-09-10', 30, 'Bangalore', 'Pending', 30130.2),
(97, 58, '2026-06-15', 56, 'Coimbatore', 'Delivered', 238537.04),
(98, 57, '2026-02-04', 31, 'Madurai', 'Cancelled', 84801.12),
(99, 39, '2026-05-21', 38, 'Chennai', 'Delivered', 126901.0),
(100, 65, '2026-02-07', 20, 'Madurai', 'Shipped', 4623.6);
-------------------------------------------------------------------------------------------------------
SELECT * FROM products;
SELECT * FROM inventory;
SELECT * FROM sales_orders;
use supply_chain_analytics;
--------------------------------------------------------------------------------------------------------
-- Q1. 
SELECT order_id, product_id, order_date, order_status
FROM sales_orders
WHERE order_status = 'Pending';
---------------------------------------------------------------------------
-- Q2. 
SELECT product_name, unit_price
FROM products
ORDER BY unit_price DESC;
---------------------------------------------------------------------------
-- Q3. 
SELECT MAX(unit_price) AS second_highest_price
FROM products
WHERE unit_price < (SELECT MAX(unit_price) FROM products);
---------------------------------------------------------------------------
-- Q4. 
SELECT product_name, unit_price
FROM products
WHERE unit_price > (SELECT AVG(unit_price) FROM products)
ORDER BY unit_price DESC;
---------------------------------------------------------------------------
-- Q5
SELECT supplier_name, COUNT(*) AS total_products
FROM products
GROUP BY supplier_name
HAVING COUNT(*) > 10;
---------------------------------------------------------------------------
-- Q6
SELECT product_id, COUNT(*) AS times_ordered
FROM sales_orders
GROUP BY product_id
HAVING COUNT(*) > 1
ORDER BY times_ordered DESC;
---------------------------------------------------------------------------
-- Q7
SELECT DATE_FORMAT(order_date, '%Y-%m') AS month, COUNT(*) AS total_orders
FROM sales_orders
GROUP BY DATE_FORMAT(order_date, '%Y-%m')
ORDER BY month;
---------------------------------------------------------------------------
-- Q8
SELECT DATE_FORMAT(order_date, '%Y-%m') AS month, COUNT(*) AS total_orders
FROM sales_orders
GROUP BY DATE_FORMAT(order_date, '%Y-%m')
HAVING COUNT(*) > 9
ORDER BY month;
---------------------------------------------------------------------------
-- Q9. 
SELECT region ,SUM(total_amount) AS Revenue
FROM sales_orders
WHERE order_status <> 'cancelled'
GROUP BY region
ORDER BY revenue DESC;
---------------------------------------------------------------------------
-- Q10. 
SELECT category, MAX(unit_price) AS highest_price
FROM products
GROUP BY category
ORDER BY highest_price DESC;
---------------------------------------------------------------------------
--  JOINS (2 tables connect)
-- Q11.
SELECT p.product_name, SUM(s.total_amount) AS total_sales
FROM products p
JOIN sales_orders s ON p.product_id = s.product_id
GROUP BY p.product_name
ORDER BY total_sales DESC;
---------------------------------------------------------------------------
-- Q12. 
SELECT p.category, SUM(i.stock_qty) AS total_stock
FROM products p
JOIN inventory i ON p.product_id = i.product_id
GROUP BY p.category
ORDER BY total_stock DESC;
---------------------------------------------------------------------------
-- Q13. 
SELECT p.product_name, SUM(s.total_amount) AS total_sales
FROM products p
JOIN sales_orders s ON p.product_id = s.product_id
GROUP BY p.product_id, p.product_name
HAVING SUM(s.total_amount) > 100000;
---------------------------------------------------------------------------
-- Q14. 
SELECT p.product_id, p.product_name, COUNT(s.order_id) AS total_orders
FROM products p
LEFT JOIN sales_orders s ON p.product_id = s.product_id
GROUP BY p.product_id, p.product_name
ORDER BY total_orders DESC;
---------------------------------------------------------------------------
-- Q15.
SELECT p.product_name, MAX(s.order_date) AS latest_order_date
FROM products p
JOIN sales_orders s ON p.product_id = s.product_id
GROUP BY p.product_id, p.product_name
ORDER BY latest_order_date DESC;
---------------------------------------------------------------------------
-- Q16. 
SELECT p.product_name, ROUND(AVG(s.total_amount), 2) AS avg_order_amount
FROM products p
JOIN sales_orders s ON p.product_id = s.product_id
GROUP BY p.product_id, p.product_name
ORDER BY avg_order_amount DESC;
---------------------------------------------------------------------------
-- Q17. 
SELECT p.product_name, SUM(s.total_amount) AS total_amount
FROM products p
JOIN sales_orders s ON p.product_id = s.product_id
GROUP BY p.product_id, p.product_name
ORDER BY total_amount DESC
LIMIT 2;
---------------------------------------------------------------------------
-- Q18. 
SELECT p.product_id, p.product_name
FROM products p
LEFT JOIN sales_orders s ON p.product_id = s.product_id
WHERE s.order_id IS NULL;
---------------------------------------------------------------------------
-- Q19. 
SELECT p.product_id, p.product_name
FROM products p
WHERE EXISTS (SELECT 1 FROM sales_orders s WHERE s.product_id = p.product_id)
AND NOT EXISTS (SELECT 1 FROM sales_orders s
				WHERE s.product_id = p.product_id AND s.order_status = 'Cancelled');
---------------------------------------------------------------------------
-- SUBQUERIES
-- Q20
SELECT order_id, product_id, order_date, total_amount
FROM sales_orders
WHERE total_amount > (SELECT AVG(total_amount) FROM sales_orders)
ORDER BY total_amount DESC;
---------------------------------------------------------------------------
-- Q21
SELECT p.product_name, p.category, p.unit_price
FROM products p
WHERE p.unit_price > (SELECT AVG(unit_price)
                      FROM products
                      WHERE category = p.category)
ORDER BY p.category;
---------------------------------------------------------------------------
-- Q22. 
SELECT product_name, LENGTH(product_name) AS name_length
FROM products
WHERE LENGTH(product_name) > 10;
---------------------------------------------------------------------------
-- WINDOW FUNCTIONS (MySQL 8 venum)
-- Q23. 
SELECT
    product_id,product_name,category,unit_price,
    SUM(unit_price) OVER (PARTITION BY category ORDER BY unit_price) AS cumulative_price
FROM products;
---------------------------------------------------------------------------
-- Q24
SELECT product_id,product_name,category,unit_price,
RANK() OVER (PARTITION BY category ORDER BY unit_price DESC) AS price_rank
FROM products;
---------------------------------------------------------------------------
-- Q25
SELECT order_date,SUM(total_amount) AS daily_total,
SUM(SUM(total_amount)) OVER (ORDER BY order_date) AS running_total
FROM sales_orders
GROUP BY order_date
ORDER BY order_date;
---------------------------------------------------------------------------
-- Q26
SELECT
    YEAR(order_date) AS sales_year,
    SUM(total_amount) AS total_sales,
    LAG(SUM(total_amount)) OVER (ORDER BY YEAR(order_date)) AS previous_year_sales
FROM sales_orders
WHERE order_status <> 'Cancelled'
GROUP BY YEAR(order_date)
ORDER BY sales_year;
---------------------------------------------------------------------------
-- Q27
SELECT p.product_name, i.warehouse, i.stock_qty, i.reorder_level,
       (i.reorder_level - i.stock_qty) AS shortage
FROM products p
JOIN inventory i ON p.product_id = i.product_id
WHERE i.stock_qty < i.reorder_level
ORDER BY shortage DESC;
---------------------------------------------------------------------------
-- Q28
SELECT product_id,warehouse,stock_qty,avg_stock
FROM (SELECT product_id,warehouse,stock_qty,
	AVG(stock_qty) OVER (PARTITION BY warehouse) AS avg_stock
    FROM inventory) AS stock_analysis
WHERE stock_qty > avg_stock;
---------------------------------------------------------------------------
-- 	Q29
SELECT product_id,product_name,category,unit_price,price_group
FROM (SELECT
        product_id,
        product_name,
        category,
        unit_price,
NTILE(3) OVER (PARTITION BY category ORDER BY unit_price DESC) AS price_group
FROM products) AS product_analysis
WHERE price_group = 1;
-------------------------------------------------------------------------------------------------
-- Q30
SELECT product_id,total_sales,
PERCENT_RANK() OVER (ORDER BY total_sales) AS sales_percent_rank
FROM (SELECT product_id,
SUM(total_amount) AS total_sales
FROM sales_orders
GROUP BY product_id) AS sales_summary;
