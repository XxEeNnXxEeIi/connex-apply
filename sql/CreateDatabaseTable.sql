CREATE DATABASE SalesSystem;
GO

USE SalesSystem;
GO

-- 1. Customers
CREATE TABLE Customers (
    Id INT PRIMARY KEY IDENTITY(1,1),
    Name NVARCHAR(100),
    Email NVARCHAR(100)
);

-- 2. Categories
CREATE TABLE Categories (
    Id INT PRIMARY KEY IDENTITY(1,1),
    Name NVARCHAR(100)
);

-- 3. Products
CREATE TABLE Products (
    Id INT PRIMARY KEY IDENTITY(1,1),
    Name NVARCHAR(100),
    Price DECIMAL(10,2),
    Category_Id INT,
    FOREIGN KEY (Category_Id) REFERENCES Categories(Id)
);

-- 4. Orders
CREATE TABLE Orders (
    Id INT PRIMARY KEY IDENTITY(1,1),
    Customer_Id INT,
    Order_Date DATE,
    FOREIGN KEY (Customer_Id) REFERENCES Customers(Id)
);

-- 5. Order_Items
CREATE TABLE Order_Items (
    Id INT PRIMARY KEY IDENTITY(1,1),
    Order_Id INT,
    Product_Id INT,
    Quantity INT,
    FOREIGN KEY (Order_Id) REFERENCES Orders(Id),
    FOREIGN KEY (Product_Id) REFERENCES Products(Id)
);