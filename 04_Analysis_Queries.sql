USE EcommerceSalesAnalytics;
GO

-- =====================================================
-- 1. Total Number of Customers
-- =====================================================

SELECT
    COUNT(*) AS TotalCustomers
FROM Customers;
GO


-- =====================================================
-- 2. Total Number of Orders
-- =====================================================

SELECT
    COUNT(*) AS TotalOrders
FROM Orders;
GO


-- =====================================================
-- 3. Total Revenue
-- =====================================================

SELECT
    SUM(Quantity * UnitPrice * (1 - Discount / 100.0))
        AS TotalRevenue
FROM OrderDetails;
GO


-- =====================================================
-- 4. Revenue by Category
-- =====================================================

SELECT
    c.CategoryName,
    SUM(
        od.Quantity *
        od.UnitPrice *
        (1 - od.Discount / 100.0)
    ) AS Revenue
FROM OrderDetails od
JOIN Products p
    ON od.ProductID = p.ProductID
JOIN Categories c
    ON p.CategoryID = c.CategoryID
GROUP BY c.CategoryName
ORDER BY Revenue DESC;
GO


-- =====================================================
-- 5. Top 10 Products by Revenue
-- =====================================================

SELECT TOP 10
    p.ProductName,
    SUM(
        od.Quantity *
        od.UnitPrice *
        (1 - od.Discount / 100.0)
    ) AS Revenue
FROM OrderDetails od
JOIN Products p
    ON od.ProductID = p.ProductID
GROUP BY p.ProductName
ORDER BY Revenue DESC;
GO


-- =====================================================
-- 6. Top Customers by Spending
-- =====================================================

SELECT
    c.CustomerID,
    c.CustomerName,
    SUM(
        od.Quantity *
        od.UnitPrice *
        (1 - od.Discount / 100.0)
    ) AS TotalSpending
FROM Customers c
JOIN Orders o
    ON c.CustomerID = o.CustomerID
JOIN OrderDetails od
    ON o.OrderID = od.OrderID
GROUP BY
    c.CustomerID,
    c.CustomerName
ORDER BY TotalSpending DESC;
GO


-- =====================================================
-- 7. Monthly Revenue
-- =====================================================

SELECT
    YEAR(o.OrderDate) AS OrderYear,
    MONTH(o.OrderDate) AS OrderMonth,
    SUM(
        od.Quantity *
        od.UnitPrice *
        (1 - od.Discount / 100.0)
    ) AS Revenue
FROM Orders o
JOIN OrderDetails od
    ON o.OrderID = od.OrderID
GROUP BY
    YEAR(o.OrderDate),
    MONTH(o.OrderDate)
ORDER BY
    OrderYear,
    OrderMonth;
GO


-- =====================================================
-- 8. Average Order Value
-- =====================================================

SELECT
    SUM(
        od.Quantity *
        od.UnitPrice *
        (1 - od.Discount / 100.0)
    ) / COUNT(DISTINCT od.OrderID) AS AverageOrderValue
FROM OrderDetails od;
GO


-- =====================================================
-- 9. Orders by Payment Method
-- =====================================================

SELECT
    PaymentMethod,
    COUNT(*) AS NumberOfOrders
FROM Payments
GROUP BY PaymentMethod
ORDER BY NumberOfOrders DESC;
GO


-- =====================================================
-- 10. Payment Status Distribution
-- =====================================================

SELECT
    PaymentStatus,
    COUNT(*) AS NumberOfPayments,
    SUM(Amount) AS TotalAmount
FROM Payments
GROUP BY PaymentStatus
ORDER BY NumberOfPayments DESC;
GO


-- =====================================================
-- 11. Delivery Status Analysis
-- =====================================================

SELECT
    DeliveryStatus,
    COUNT(*) AS NumberOfOrders
FROM DeliveryDetails
GROUP BY DeliveryStatus
ORDER BY NumberOfOrders DESC;
GO


-- =====================================================
-- 12. Customer Order Frequency
-- =====================================================

SELECT
    c.CustomerID,
    c.CustomerName,
    COUNT(o.OrderID) AS NumberOfOrders
FROM Customers c
LEFT JOIN Orders o
    ON c.CustomerID = o.CustomerID
GROUP BY
    c.CustomerID,
    c.CustomerName
ORDER BY NumberOfOrders DESC;
GO


-- =====================================================
-- 13. Products with Low Inventory
-- =====================================================

SELECT
    p.ProductID,
    p.ProductName,
    i.StockIn,
    i.StockOut,
    (i.StockIn - i.StockOut) AS CurrentStock
FROM Products p
JOIN Inventory i
    ON p.ProductID = i.ProductID
WHERE (i.StockIn - i.StockOut) < 20
ORDER BY CurrentStock ASC;
GO


-- =====================================================
-- 14. Product Rating Analysis
-- =====================================================

SELECT
    p.ProductName,
    COUNT(r.ReviewID) AS NumberOfReviews,
    AVG(CAST(r.Rating AS DECIMAL(10,2))) AS AverageRating
FROM Products p
JOIN Reviews r
    ON p.ProductID = r.ProductID
GROUP BY p.ProductName
ORDER BY AverageRating DESC;
GO


-- =====================================================
-- 15. Category-wise Product Count
-- =====================================================

SELECT
    c.CategoryName,
    COUNT(p.ProductID) AS NumberOfProducts
FROM Categories c
LEFT JOIN Products p
    ON c.CategoryID = p.CategoryID
GROUP BY c.CategoryName
ORDER BY NumberOfProducts DESC;
GO


-- =====================================================
-- 16. Customer and Their Cities
-- =====================================================

SELECT
    City,
    COUNT(*) AS NumberOfCustomers
FROM Customers
GROUP BY City
ORDER BY NumberOfCustomers DESC;
GO


-- =====================================================
-- 17. Revenue by Customer
-- =====================================================

SELECT
    c.CustomerName,
    c.City,
    SUM(
        od.Quantity *
        od.UnitPrice *
        (1 - od.Discount / 100.0)
    ) AS Revenue
FROM Customers c
JOIN Orders o
    ON c.CustomerID = o.CustomerID
JOIN OrderDetails od
    ON o.OrderID = od.OrderID
GROUP BY
    c.CustomerName,
    c.City
ORDER BY Revenue DESC;
GO


-- =====================================================
-- 18. Order Details with Product Information
-- =====================================================

SELECT
    o.OrderID,
    o.OrderDate,
    p.ProductName,
    c.CategoryName,
    od.Quantity,
    od.UnitPrice,
    od.Discount,
    od.Quantity * od.UnitPrice *
        (1 - od.Discount / 100.0) AS LineTotal
FROM Orders o
JOIN OrderDetails od
    ON o.OrderID = od.OrderID
JOIN Products p
    ON od.ProductID = p.ProductID
JOIN Categories c
    ON p.CategoryID = c.CategoryID
ORDER BY o.OrderDate;
GO


-- =====================================================
-- 19. Delivered Orders
-- =====================================================

SELECT
    COUNT(*) AS DeliveredOrders
FROM DeliveryDetails
WHERE DeliveryStatus = 'Delivered';
GO


-- =====================================================
-- 20. Delivery Performance
-- =====================================================

SELECT
    DeliveryStatus,
    COUNT(*) AS NumberOfDeliveries
FROM DeliveryDetails
GROUP BY DeliveryStatus
ORDER BY NumberOfDeliveries DESC;
GO