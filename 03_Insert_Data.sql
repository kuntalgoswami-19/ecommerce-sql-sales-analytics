USE EcommerceSalesAnalytics;
GO

/* ============================================================
   03_Insert_Data.sql
   E-Commerce Sales & Customer Analytics
   ============================================================ */


-- ============================================================
-- 1. CATEGORIES
-- ============================================================

INSERT INTO Categories
(CategoryID, CategoryName, Descriptions)
VALUES
(1, 'Electronics', 'Electronic devices and accessories'),
(2, 'Clothing', 'Men, women and kids clothing'),
(3, 'Books', 'Educational and fiction books'),
(4, 'Home Appliances', 'Home and kitchen appliances'),
(5, 'Sports', 'Sports equipment and accessories'),
(6, 'Beauty & Personal Care', 'Cosmetics and personal care products'),
(7, 'Toys & Games', 'Indoor and outdoor toys and games'),
(8, 'Grocery', 'Daily grocery and food products'),
(9, 'Furniture', 'Home and office furniture'),
(10, 'Automotive', 'Vehicle accessories and products');
GO


-- ============================================================
-- 2. CUSTOMERS
-- ============================================================

INSERT INTO Customers
(CustomerID, CustomerName, Email, Phone, City, State, RegistrationDate)
VALUES
(1, 'Aarav Sharma', 'aarav.sharma@gmail.com', '9876543210', 'Kolkata', 'West Bengal', '2025-06-15'),
(2, 'Priya Das', 'priya.das@gmail.com', '9876543211', 'Kolkata', 'West Bengal', '2025-06-20'),
(3, 'Rahul Sen', 'rahul.sen@gmail.com', '9876543212', 'Howrah', 'West Bengal', '2025-07-05'),
(4, 'Sneha Roy', 'sneha.roy@gmail.com', '9876543213', 'Durgapur', 'West Bengal', '2025-07-12'),
(5, 'Arjun Mehta', 'arjun.mehta@gmail.com', '9876543214', 'Mumbai', 'Maharashtra', '2025-07-25'),
(6, 'Ananya Gupta', 'ananya.gupta@gmail.com', '9876543215', 'Delhi', 'Delhi', '2025-08-03'),
(7, 'Rohan Banerjee', 'rohan.banerjee@gmail.com', '9876543216', 'Kolkata', 'West Bengal', '2025-08-18'),
(8, 'Ishita Paul', 'ishita.paul@gmail.com', '9876543217', 'Siliguri', 'West Bengal', '2025-08-25'),
(9, 'Vikram Singh', 'vikram.singh@gmail.com', '9876543218', 'Bengaluru', 'Karnataka', '2025-09-02'),
(10, 'Neha Kapoor', 'neha.kapoor@gmail.com', '9876543219', 'Pune', 'Maharashtra', '2025-09-10'),
(11, 'Sourav Ghosh', 'sourav.ghosh@gmail.com', '9876543220', 'Kolkata', 'West Bengal', '2025-09-18'),
(12, 'Pooja Nair', 'pooja.nair@gmail.com', '9876543221', 'Kochi', 'Kerala', '2025-09-25'),
(13, 'Aditya Verma', 'aditya.verma@gmail.com', '9876543222', 'Lucknow', 'Uttar Pradesh', '2025-10-04'),
(14, 'Riya Chatterjee', 'riya.chatterjee@gmail.com', '9876543223', 'Kolkata', 'West Bengal', '2025-10-12'),
(15, 'Karan Patel', 'karan.patel@gmail.com', '9876543224', 'Ahmedabad', 'Gujarat', '2025-10-20'),
(16, 'Meera Iyer', 'meera.iyer@gmail.com', '9876543225', 'Chennai', 'Tamil Nadu', '2025-11-01'),
(17, 'Abhishek Das', 'abhishek.das@gmail.com', '9876543226', 'Kolkata', 'West Bengal', '2025-11-10'),
(18, 'Tanya Bose', 'tanya.bose@gmail.com', '9876543227', 'Bhubaneswar', 'Odisha', '2025-11-18'),
(19, 'Nikhil Jain', 'nikhil.jain@gmail.com', '9876543228', 'Jaipur', 'Rajasthan', '2025-12-02'),
(20, 'Soham Mukherjee', 'soham.mukherjee@gmail.com', '9876543229', 'Kolkata', 'West Bengal', '2025-12-15');
GO


-- ============================================================
-- 3. PRODUCTS
-- ============================================================

INSERT INTO Products
(ProductID, ProductName, CategoryID, Brand, Price, ProductSpecification, IsActive)
VALUES

-- Electronics
(1, 'Dell Inspiron 15', 1, 'Dell', 58999.00, '15.6 inch laptop, Intel Core i5, 16GB RAM, 512GB SSD', 1),
(2, 'HP Pavilion 15', 1, 'HP', 62999.00, '15.6 inch laptop, Intel Core i5, 16GB RAM, 512GB SSD', 1),
(3, 'Lenovo IdeaPad Slim 5', 1, 'Lenovo', 64999.00, '15.6 inch laptop, Ryzen 7, 16GB RAM, 512GB SSD', 1),
(4, 'Apple MacBook Air M3', 1, 'Apple', 99999.00, '13.6 inch display, Apple M3 chip, 8GB RAM, 256GB SSD', 1),
(5, 'Samsung Galaxy S25', 1, 'Samsung', 79999.00, '6.2 inch AMOLED smartphone, 256GB storage', 1),
(6, 'iPhone 17', 1, 'Apple', 89999.00, '6.3 inch smartphone, 256GB storage', 1),
(7, 'OnePlus 14', 1, 'OnePlus', 59999.00, '6.7 inch AMOLED smartphone, 256GB storage', 1),
(8, 'Boat Rockerz 450', 1, 'Boat', 1799.00, 'Wireless Bluetooth headphones', 1),
(9, 'Sony WH-1000XM6', 1, 'Sony', 34999.00, 'Wireless noise cancelling headphones', 1),
(10, 'JBL Flip 7', 1, 'JBL', 12999.00, 'Portable Bluetooth speaker', 1),

-- Clothing
(11, 'Puma T-Shirt', 2, 'Puma', 899.00, 'Cotton regular fit T-shirt', 1),
(12, 'Nike Hoodie', 2, 'Nike', 2999.00, 'Fleece sports hoodie', 1),
(13, 'Levis Jeans', 2, 'Levis', 2499.00, 'Slim fit denim jeans', 1),
(14, 'Allen Solly Shirt', 2, 'Allen Solly', 1899.00, 'Regular fit formal shirt', 1),
(15, 'Adidas Track Pant', 2, 'Adidas', 2299.00, 'Polyester sports track pant', 1),

-- Books
(16, 'Database System Concepts', 3, 'McGraw Hill', 899.00, 'Database management textbook', 1),
(17, 'Operating System Concepts', 3, 'Wiley', 999.00, 'Operating systems textbook', 1),
(18, 'Computer Networks', 3, 'Pearson', 799.00, 'Computer networking textbook', 1),
(19, 'Clean Code', 3, 'Prentice Hall', 699.00, 'Software development book', 1),
(20, 'Digital Electronics', 3, 'McGraw Hill', 749.00, 'Digital electronics textbook', 1),

-- Home Appliances
(21, 'LG Microwave Oven', 4, 'LG', 12999.00, '28L convection microwave oven', 1),
(22, 'Whirlpool Refrigerator', 4, 'Whirlpool', 32999.00, '265L frost-free refrigerator', 1),
(23, 'Philips Steam Iron', 4, 'Philips', 2499.00, '2400W steam iron', 1),
(24, 'Prestige Induction Cooktop', 4, 'Prestige', 2199.00, '1600W induction cooktop', 1),
(25, 'Voltas Split AC', 4, 'Voltas', 38999.00, '1.5 ton inverter split AC', 1),

-- Sports
(26, 'SG Cricket Bat', 5, 'SG', 5499.00, 'English willow cricket bat', 1),
(27, 'Nivia Football', 5, 'Nivia', 999.00, 'FIFA size 5 football', 1),
(28, 'Yonex Badminton Racket', 5, 'Yonex', 2499.00, 'Graphite badminton racket', 1),
(29, 'Cosco Basketball', 5, 'Cosco', 899.00, 'Size 7 basketball', 1),
(30, 'Yoga Mat', 5, 'Strauss', 799.00, '6mm anti-slip yoga mat', 1),

-- Beauty
(31, 'Lakme Face Wash', 6, 'Lakme', 299.00, 'Oil control face wash 100ml', 1),
(32, 'Dove Shampoo', 6, 'Dove', 399.00, 'Moisturising shampoo 650ml', 1),
(33, 'Nivea Body Lotion', 6, 'Nivea', 449.00, 'Moisturising body lotion 600ml', 1),
(34, 'Mamaearth Face Cream', 6, 'Mamaearth', 499.00, 'Vitamin C face cream 50g', 1),
(35, 'Philips Hair Dryer', 6, 'Philips', 1599.00, '1200W compact hair dryer', 1),

-- Toys & Games
(36, 'LEGO Classic Set', 7, 'LEGO', 2499.00, 'Classic building blocks set', 1),
(37, 'Hot Wheels Car', 7, 'Mattel', 499.00, 'Die-cast toy car', 1),
(38, 'Rubiks Cube', 7, 'Rubiks', 399.00, '3x3 speed cube', 1),
(39, 'Chess Board', 7, 'Funskool', 699.00, 'Wooden chess board set', 1),
(40, 'Remote Control Car', 7, 'Maisto', 1899.00, 'Rechargeable remote control car', 1),

-- Grocery
(41, 'India Gate Basmati Rice 5kg', 8, 'India Gate', 699.00, 'Premium basmati rice 5kg', 1),
(42, 'Aashirvaad Atta 10kg', 8, 'Aashirvaad', 599.00, 'Whole wheat flour 10kg', 1),
(43, 'Fortune Sunflower Oil 5L', 8, 'Fortune', 799.00, 'Refined sunflower oil 5L', 1),
(44, 'Tata Salt 1kg', 8, 'Tata', 30.00, 'Iodised salt 1kg', 1),
(45, 'Tata Tea Gold 1kg', 8, 'Tata', 599.00, 'Premium tea 1kg', 1),

-- Furniture
(46, 'Office Chair', 9, 'Green Soul', 7499.00, 'Ergonomic office chair', 1),
(47, 'Study Table', 9, 'Wakefit', 5999.00, 'Engineered wood study table', 1),
(48, 'Bookshelf', 9, 'IKEA', 6999.00, 'Wooden 5-shelf bookshelf', 1),
(49, 'Computer Desk', 9, 'Nilkamal', 4999.00, 'Office computer desk', 1),
(50, 'Bean Bag', 9, 'Sattva', 2999.00, 'Large fabric bean bag', 1);
GO


-- ============================================================
-- 4. CUSTOMER ADDRESSES
-- ============================================================

INSERT INTO CustomerAddresses
(AddressID, CustomerID, AddressLine, City, State, Pincode)
VALUES
(1, 1, '12 Behala Road', 'Kolkata', 'West Bengal', '700034'),
(2, 1, '45 Diamond Harbour Road', 'Kolkata', 'West Bengal', '700038'),
(3, 2, '21 Salt Lake Sector V', 'Kolkata', 'West Bengal', '700091'),
(4, 3, '18 GT Road', 'Howrah', 'West Bengal', '711101'),
(5, 4, '25 City Centre', 'Durgapur', 'West Bengal', '713216'),
(6, 5, '17 Andheri East', 'Mumbai', 'Maharashtra', '400069'),
(7, 6, '42 Rohini Sector 7', 'Delhi', 'Delhi', '110085'),
(8, 7, '33 Ballygunge Circular Road', 'Kolkata', 'West Bengal', '700019'),
(9, 8, '14 Hill Cart Road', 'Siliguri', 'West Bengal', '734001'),
(10, 9, '29 Whitefield Main Road', 'Bengaluru', 'Karnataka', '560066'),
(11, 10, '56 Baner Road', 'Pune', 'Maharashtra', '411045'),
(12, 11, '8 Gariahat Road', 'Kolkata', 'West Bengal', '700029'),
(13, 12, '19 MG Road', 'Kochi', 'Kerala', '682016'),
(14, 13, '31 Gomti Nagar', 'Lucknow', 'Uttar Pradesh', '226010'),
(15, 14, '72 New Town Action Area', 'Kolkata', 'West Bengal', '700156'),
(16, 15, '44 Satellite Road', 'Ahmedabad', 'Gujarat', '380015'),
(17, 16, '27 Anna Nagar', 'Chennai', 'Tamil Nadu', '600040'),
(18, 17, '10 Jadavpur Central Road', 'Kolkata', 'West Bengal', '700032'),
(19, 18, '35 Saheed Nagar', 'Bhubaneswar', 'Odisha', '751007'),
(20, 19, '22 Malviya Nagar', 'Jaipur', 'Rajasthan', '302017'),
(21, 20, '16 Dum Dum Road', 'Kolkata', 'West Bengal', '700074');
GO


-- ============================================================
-- 5. ORDERS
-- ============================================================

INSERT INTO Orders
(OrderID, CustomerID, OrderDate)
VALUES
('ORD000001', 1, '2026-01-05'),
('ORD000002', 2, '2026-01-08'),
('ORD000003', 3, '2026-01-12'),
('ORD000004', 4, '2026-01-15'),
('ORD000005', 5, '2026-01-19'),
('ORD000006', 6, '2026-01-23'),
('ORD000007', 7, '2026-01-27'),
('ORD000008', 8, '2026-02-01'),
('ORD000009', 9, '2026-02-04'),
('ORD000010', 10, '2026-02-08'),
('ORD000011', 11, '2026-02-12'),
('ORD000012', 12, '2026-02-16'),
('ORD000013', 13, '2026-02-20'),
('ORD000014', 14, '2026-02-23'),
('ORD000015', 15, '2026-02-26'),
('ORD000016', 16, '2026-03-01'),
('ORD000017', 17, '2026-03-03'),
('ORD000018', 18, '2026-03-05'),
('ORD000019', 19, '2026-03-07'),
('ORD000020', 20, '2026-03-09'),
('ORD000021', 1, '2026-03-10'),
('ORD000022', 5, '2026-03-10'),
('ORD000023', 10, '2026-03-11'),
('ORD000024', 15, '2026-03-11'),
('ORD000025', 20, '2026-03-12');
GO


-- ============================================================
-- 6. ORDER DETAILS
-- ============================================================

INSERT INTO OrderDetails
(OrderID, ProductID, Quantity, UnitPrice, Discount)
VALUES

-- Order 1
('ORD000001', 1, 1, 58999.00, 0),
('ORD000001', 8, 1, 1799.00, 5),
('ORD000001', 11, 2, 899.00, 10),

-- Order 2
('ORD000002', 5, 1, 79999.00, 5),
('ORD000002', 31, 2, 299.00, 0),

-- Order 3
('ORD000003', 4, 1, 99999.00, 3),
('ORD000003', 9, 1, 34999.00, 5),

-- Order 4
('ORD000004', 21, 1, 12999.00, 10),
('ORD000004', 23, 1, 2499.00, 0),

-- Order 5
('ORD000005', 13, 2, 2499.00, 5),
('ORD000005', 15, 1, 2299.00, 10),

-- Order 6
('ORD000006', 22, 1, 32999.00, 5),
('ORD000006', 43, 2, 799.00, 0),

-- Order 7
('ORD000007', 26, 1, 5499.00, 10),
('ORD000007', 28, 1, 2499.00, 5),

-- Order 8
('ORD000008', 2, 1, 62999.00, 5),
('ORD000008', 19, 1, 699.00, 0),

-- Order 9
('ORD000009', 6, 1, 89999.00, 3),
('ORD000009', 10, 1, 12999.00, 5),

-- Order 10
('ORD000010', 12, 2, 2999.00, 10),
('ORD000010', 14, 1, 1899.00, 5),

-- Order 11
('ORD000011', 24, 1, 2199.00, 0),
('ORD000011', 30, 2, 799.00, 5),

-- Order 12
('ORD000012', 36, 1, 2499.00, 10),
('ORD000012', 40, 1, 1899.00, 5),

-- Order 13
('ORD000013', 46, 1, 7499.00, 5),
('ORD000013', 47, 1, 5999.00, 10),

-- Order 14
('ORD000014', 41, 2, 699.00, 0),
('ORD000014', 45, 1, 599.00, 5),

-- Order 15
('ORD000015', 7, 1, 59999.00, 5),

-- Order 16
('ORD000016', 3, 1, 64999.00, 5),
('ORD000016', 20, 1, 749.00, 0),

-- Order 17
('ORD000017', 33, 2, 449.00, 0),

-- Order 18
('ORD000018', 48, 1, 6999.00, 10),

-- Order 19
('ORD000019', 35, 1, 1599.00, 5),

-- Order 20
('ORD000020', 27, 2, 999.00, 0),

-- Order 21
('ORD000021', 33, 1, 449.00, 0),

-- Order 22
('ORD000022', 15, 1, 2299.00, 5),

-- Order 23
('ORD000023', 48, 1, 6999.00, 10),

-- Order 24
('ORD000024', 36, 1, 2499.00, 5),

-- Order 25
('ORD000025', 13, 1, 2499.00, 0);
GO


-- ============================================================
-- 7. PAYMENTS
-- Amounts correspond to order totals after discount
-- ============================================================

INSERT INTO Payments
(PaymentID, OrderID, PaymentMethod, PaymentStatus, Amount, PaymentDate)
VALUES
(1, 'ORD000001', 'UPI', 'Completed', 61617.00, '2026-01-05'),
(2, 'ORD000002', 'Credit Card', 'Completed', 76297.00, '2026-01-08'),
(3, 'ORD000003', 'Debit Card', 'Completed', 133249.03, '2026-01-12'),
(4, 'ORD000004', 'UPI', 'Completed', 14198.00, '2026-01-15'),
(5, 'ORD000005', 'Credit Card', 'Completed', 6908.55, '2026-01-19'),
(6, 'ORD000006', 'Net Banking', 'Completed', 32108.05, '2026-01-23'),
(7, 'ORD000007', 'UPI', 'Completed', 7921.55, '2026-01-27'),
(8, 'ORD000008', 'Credit Card', 'Completed', 60448.05, '2026-02-01'),
(9, 'ORD000009', 'UPI', 'Completed', 96148.05, '2026-02-04'),
(10, 'ORD000010', 'Debit Card', 'Completed', 7108.05, '2026-02-08'),
(11, 'ORD000011', 'UPI', 'Completed', 2958.05, '2026-02-12'),
(12, 'ORD000012', 'Credit Card', 'Completed', 4093.55, '2026-02-16'),
(13, 'ORD000013', 'Net Banking', 'Completed', 12848.55, '2026-02-20'),
(14, 'ORD000014', 'UPI', 'Completed', 1922.05, '2026-02-23'),
(15, 'ORD000015', 'Credit Card', 'Completed', 56999.05, '2026-02-26'),
(16, 'ORD000016', 'Debit Card', 'Completed', 62499.05, '2026-03-01'),
(17, 'ORD000017', 'UPI', 'Completed', 898.00, '2026-03-03'),
(18, 'ORD000018', 'Credit Card', 'Completed', 6299.10, '2026-03-05'),
(19, 'ORD000019', 'UPI', 'Completed', 1519.05, '2026-03-07'),
(20, 'ORD000020', 'Cash on Delivery', 'Completed', 1998.00, '2026-03-09'),
(21, 'ORD000021', 'UPI', 'Completed', 449.00, '2026-03-10'),
(22, 'ORD000022', 'Credit Card', 'Completed', 2184.05, '2026-03-10'),
(23, 'ORD000023', 'Debit Card', 'Completed', 6299.10, '2026-03-11'),
(24, 'ORD000024', 'UPI', 'Completed', 2374.05, '2026-03-11'),
(25, 'ORD000025', 'Cash on Delivery', 'Completed', 2499.00, '2026-03-12');
GO


-- ============================================================
-- 8. DELIVERY DETAILS
-- ============================================================

INSERT INTO DeliveryDetails
(DeliveryID, OrderID, AddressID, CourierName, TrackingNumber,
 DeliveryStatus, ExpectedDeliveryDate, DeliveredDate)
VALUES
(1, 'ORD000001', 1, 'Delhivery', 'DLV100001', 'Delivered', '2026-01-09', '2026-01-08'),
(2, 'ORD000002', 3, 'BlueDart', 'BD100002', 'Delivered', '2026-01-12', '2026-01-11'),
(3, 'ORD000003', 4, 'DTDC', 'DT100003', 'Delivered', '2026-01-17', '2026-01-16'),
(4, 'ORD000004', 5, 'Delhivery', 'DLV100004', 'Delivered', '2026-01-20', '2026-01-19'),
(5, 'ORD000005', 6, 'Ecom Express', 'EC100005', 'Delivered', '2026-01-24', '2026-01-23'),
(6, 'ORD000006', 7, 'BlueDart', 'BD100006', 'Delivered', '2026-01-28', '2026-01-27'),
(7, 'ORD000007', 8, 'Delhivery', 'DLV100007', 'Delivered', '2026-02-01', '2026-01-31'),
(8, 'ORD000008', 9, 'DTDC', 'DT100008', 'Delivered', '2026-02-06', '2026-02-05'),
(9, 'ORD000009', 10, 'BlueDart', 'BD100009', 'Delivered', '2026-02-09', '2026-02-08'),
(10, 'ORD000010', 11, 'Delhivery', 'DLV100010', 'Delivered', '2026-02-13', '2026-02-12'),
(11, 'ORD000011', 12, 'Ecom Express', 'EC100011', 'Delivered', '2026-02-17', '2026-02-16'),
(12, 'ORD000012', 13, 'DTDC', 'DT100012', 'Delivered', '2026-02-21', '2026-02-20'),
(13, 'ORD000013', 14, 'BlueDart', 'BD100013', 'Delivered', '2026-02-24', '2026-02-23'),
(14, 'ORD000014', 15, 'Delhivery', 'DLV100014', 'Delivered', '2026-02-27', '2026-02-26'),
(15, 'ORD000015', 16, 'BlueDart', 'BD100015', 'Delivered', '2026-03-02', '2026-03-01'),
(16, 'ORD000016', 17, 'DTDC', 'DT100016', 'Delivered', '2026-03-05', '2026-03-04'),
(17, 'ORD000017', 18, 'Delhivery', 'DLV100017', 'Shipped', '2026-03-07', NULL),
(18, 'ORD000018', 19, 'Ecom Express', 'EC100018', 'Out for Delivery', '2026-03-09', NULL),
(19, 'ORD000019', 20, 'BlueDart', 'BD100019', 'Packed', '2026-03-11', NULL),
(20, 'ORD000020', 21, 'Delhivery', 'DLV100020', 'Shipped', '2026-03-13', NULL),
(21, 'ORD000021', 2, 'DTDC', 'DT100021', 'Delivered', '2026-03-13', '2026-03-12'),
(22, 'ORD000022', 6, 'BlueDart', 'BD100022', 'Shipped', '2026-03-14', NULL),
(23, 'ORD000023', 11, 'Delhivery', 'DLV100023', 'Out for Delivery', '2026-03-14', NULL),
(24, 'ORD000024', 16, 'Ecom Express', 'EC100024', 'Packed', '2026-03-15', NULL),
(25, 'ORD000025', 21, 'DTDC', 'DT100025', 'Shipped', '2026-03-16', NULL);
GO


-- ============================================================
-- 9. REVIEWS
-- ============================================================

INSERT INTO Reviews
(ReviewID, CustomerID, ProductID, Rating, ReviewText, ReviewDate)
VALUES
(1, 1, 1, 5, 'Excellent laptop with very good performance.', '2026-01-15'),
(2, 2, 5, 4, 'Good smartphone with a bright display.', '2026-01-20'),
(3, 3, 4, 5, 'Very smooth performance and premium build.', '2026-01-25'),
(4, 4, 21, 4, 'Microwave works well and is easy to use.', '2026-01-28'),
(5, 5, 13, 4, 'Good quality jeans and comfortable fit.', '2026-02-02'),
(6, 6, 22, 5, 'Excellent refrigerator with good storage.', '2026-02-05'),
(7, 7, 26, 4, 'Good cricket bat for regular practice.', '2026-02-08'),
(8, 8, 2, 5, 'Laptop performance is excellent for daily work.', '2026-02-12'),
(9, 9, 6, 4, 'Good phone with strong camera performance.', '2026-02-16'),
(10, 10, 12, 5, 'Very comfortable hoodie and good material.', '2026-02-19'),
(11, 11, 36, 4, 'Fun building set with good quality blocks.', '2026-02-23'),
(12, 12, 46, 5, 'Very comfortable chair for long working hours.', '2026-02-26'),
(13, 13, 41, 4, 'Good quality rice and nice packaging.', '2026-03-01'),
(14, 14, 48, 4, 'Useful bookshelf with good storage capacity.', '2026-03-06'),
(15, 15, 7, 5, 'Excellent smartphone and very smooth experience.', '2026-03-10');
GO


-- ============================================================
-- 10. INVENTORY
-- ============================================================

INSERT INTO Inventory
(ProductID, StockIn, StockOut)
VALUES
(1, 50, 18),
(2, 45, 12),
(3, 40, 15),
(4, 30, 8),
(5, 35, 14),
(6, 25, 9),
(7, 40, 11),
(8, 80, 25),
(9, 35, 10),
(10, 50, 18),
(11, 100, 30),
(12, 70, 20),
(13, 90, 35),
(14, 75, 22),
(15, 80, 28),
(16, 60, 20),
(17, 55, 17),
(18, 65, 25),
(19, 70, 30),
(20, 50, 16),
(21, 40, 12),
(22, 25, 8),
(23, 60, 22),
(24, 70, 35),
(25, 30, 10),
(26, 40, 14),
(27, 100, 40),
(28, 60, 25),
(29, 80, 30),
(30, 90, 45),
(31, 120, 55),
(32, 100, 48),
(33, 110, 52),
(34, 90, 42),
(35, 60, 25),
(36, 70, 28),
(37, 120, 55),
(38, 100, 50),
(39, 80, 35),
(40, 60, 22),
(41, 100, 45),
(42, 90, 40),
(43, 80, 35),
(44, 150, 70),
(45, 100, 48),
(46, 40, 12),
(47, 35, 10),
(48, 30, 9),
(49, 40, 15),
(50, 50, 18);
GO



