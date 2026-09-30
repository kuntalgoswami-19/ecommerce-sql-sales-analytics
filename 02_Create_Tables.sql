USE EcommerceSalesAnalytics;
GO

-- ============================================
-- 1. Customers
-- ============================================

CREATE TABLE Customers
(
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(100) NOT NULL,
    Email VARCHAR(150) UNIQUE NOT NULL,
    Phone VARCHAR(20),
    City VARCHAR(50),
    State VARCHAR(50),
    RegistrationDate DATE
);
GO


-- ============================================
-- 2. Categories
-- ============================================

CREATE TABLE Categories
(
    CategoryID INT PRIMARY KEY,
    CategoryName VARCHAR(100) NOT NULL,
    Descriptions VARCHAR(255)
);
GO


-- ============================================
-- 3. Products
-- ============================================

CREATE TABLE Products
(
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(150) NOT NULL,
    CategoryID INT NOT NULL,
    Brand VARCHAR(100),
    Price DECIMAL(10,2),
    ProductSpecification VARCHAR(255),
    IsActive BIT DEFAULT 1,

    CONSTRAINT FK_Products_Categories
        FOREIGN KEY (CategoryID)
        REFERENCES Categories(CategoryID)
);
GO


-- ============================================
-- 4. Orders
-- ============================================

CREATE TABLE Orders
(
    OrderID VARCHAR(20) PRIMARY KEY,
    CustomerID INT NOT NULL,
    OrderDate DATE NOT NULL,

    CONSTRAINT FK_Orders_Customers
        FOREIGN KEY (CustomerID)
        REFERENCES Customers(CustomerID)
);
GO


-- ============================================
-- 5. OrderDetails
-- ============================================

CREATE TABLE OrderDetails
(
    OrderDetailsID INT IDENTITY(1,1) PRIMARY KEY,
    OrderID VARCHAR(20) NOT NULL,
    ProductID INT NOT NULL,
    Quantity INT NOT NULL,
    UnitPrice DECIMAL(10,2) NOT NULL,
    Discount DECIMAL(5,2) DEFAULT 0,

    CONSTRAINT FK_OrderDetails_Orders
        FOREIGN KEY (OrderID)
        REFERENCES Orders(OrderID),

    CONSTRAINT FK_OrderDetails_Products
        FOREIGN KEY (ProductID)
        REFERENCES Products(ProductID)
);
GO


-- ============================================
-- 6. Payments
-- ============================================

CREATE TABLE Payments
(
    PaymentID INT PRIMARY KEY,
    OrderID VARCHAR(20) NOT NULL,
    PaymentMethod VARCHAR(50),
    PaymentStatus VARCHAR(50),
    Amount DECIMAL(12,2),
    PaymentDate DATE,

    CONSTRAINT FK_Payments_Orders
        FOREIGN KEY (OrderID)
        REFERENCES Orders(OrderID)
);
GO


-- ============================================
-- 7. CustomerAddresses
-- ============================================

CREATE TABLE CustomerAddresses
(
    AddressID INT PRIMARY KEY,
    CustomerID INT NOT NULL,
    AddressLine VARCHAR(255),
    City VARCHAR(50),
    State VARCHAR(50),
    Pincode VARCHAR(10),

    CONSTRAINT FK_CustomerAddresses_Customers
        FOREIGN KEY (CustomerID)
        REFERENCES Customers(CustomerID)
);
GO


-- ============================================
-- 8. DeliveryDetails
-- ============================================

CREATE TABLE DeliveryDetails
(
    DeliveryID INT PRIMARY KEY,
    OrderID VARCHAR(20) NOT NULL,
    AddressID INT NOT NULL,
    CourierName VARCHAR(100),
    TrackingNumber VARCHAR(100),
    DeliveryStatus VARCHAR(50),
    ExpectedDeliveryDate DATE,
    DeliveredDate DATE,

    CONSTRAINT FK_DeliveryDetails_Orders
        FOREIGN KEY (OrderID)
        REFERENCES Orders(OrderID),

    CONSTRAINT FK_DeliveryDetails_Address
        FOREIGN KEY (AddressID)
        REFERENCES CustomerAddresses(AddressID)
);
GO


-- ============================================
-- 9. Reviews
-- ============================================

CREATE TABLE Reviews
(
    ReviewID INT PRIMARY KEY,
    CustomerID INT NOT NULL,
    ProductID INT NOT NULL,
    Rating INT,
    ReviewText VARCHAR(500),
    ReviewDate DATE,

    CONSTRAINT FK_Reviews_Customers
        FOREIGN KEY (CustomerID)
        REFERENCES Customers(CustomerID),

    CONSTRAINT FK_Reviews_Products
        FOREIGN KEY (ProductID)
        REFERENCES Products(ProductID)
);
GO


-- ============================================
-- 10. Inventory
-- ============================================

CREATE TABLE Inventory
(
    InventoryID INT IDENTITY(1,1) PRIMARY KEY,
    ProductID INT NOT NULL,
    StockIn INT,
    StockOut INT,

    CONSTRAINT FK_Inventory_Products
        FOREIGN KEY (ProductID)
        REFERENCES Products(ProductID)
);
GO