
-- Insert Categories
INSERT INTO Categories (Name) VALUES ('Electronics'), ('Books'), ('Clothing');

-- Insert Products
INSERT INTO Products (Name, Price, Category_Id)
VALUES 
('Laptop', 1200.00, 1),
('Smartphone', 800.00, 1),
('Novel', 15.00, 2),
('T-Shirt', 25.00, 3);

-- Insert Customers
INSERT INTO Customers (Name, Email)
VALUES 
('Alice', 'alice@example.com'),
('Bob', 'bob@example.com');

-- Insert Orders
INSERT INTO Orders (Customer_Id, Order_Date)
VALUES 
(1, '2024-04-01'),
(1, '2024-04-10'),
(2, '2024-04-05');

-- Insert Order_Items
INSERT INTO Order_Items (Order_Id, Product_Id, Quantity)
VALUES
(1, 1, 1),  -- Alice bought 1 Laptop
(1, 3, 2),  -- Alice bought 2 Novels
(2, 4, 3),  -- Alice bought 3 T-Shirts
(3, 2, 1);  -- Bob bought 1 Smartphone
