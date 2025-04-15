-- Insert more Categories
INSERT INTO Categories (Name) VALUES ('Furniture'), ('Sports'), ('Appliances'), ('Toys');

-- Insert more Products
INSERT INTO Products (Name, Price, Category_Id)
VALUES 
('Chair', 75.00, 5),
('Table', 150.00, 5),
('Soccer Ball', 20.00, 6),
('Basketball', 25.00, 6),
('Washing Machine', 350.00, 7),
('Refrigerator', 500.00, 7),
('Lego Set', 40.00, 8),
('Toy Car', 15.00, 8);

-- Insert more Customers
INSERT INTO Customers (Name, Email)
VALUES 
('Charlie', 'charlie@example.com'),
('David', 'david@example.com'),
('Eve', 'eve@example.com'),
('Frank', 'frank@example.com');

-- Insert more Orders
INSERT INTO Orders (Customer_Id, Order_Date)
VALUES 
(1, '2024-04-15'),
(2, '2024-04-12'),
(3, '2024-04-20'),
(4, '2024-04-10');

-- Insert more Order_Items
INSERT INTO Order_Items (Order_Id, Product_Id, Quantity)
VALUES
(1, 2, 1),  -- Alice bought 1 Smartphone
(1, 4, 2),  -- Alice bought 2 T-Shirts
(2, 6, 1),  -- Bob bought 1 Soccer Ball
(2, 5, 1),  -- Bob bought 1 Chair
(3, 8, 2),  -- Charlie bought 2 Toy Cars
(3, 7, 1),  -- Charlie bought 1 Refrigerator
(4, 3, 1),  -- David bought 1 Novel
(4, 2, 2);  -- David bought 2 Smartphones

-- Insert more data to cover various cases for testing
INSERT INTO Products (Name, Price, Category_Id)
VALUES
('Microwave', 100.00, 7),
('Blender', 60.00, 7),
('Backpack', 40.00, 3),
('Jacket', 80.00, 3);

-- Insert more Orders
INSERT INTO Orders (Customer_Id, Order_Date)
VALUES
(5, '2024-04-12'),
(6, '2024-04-19');

-- Insert more Order_Items
INSERT INTO Order_Items (Order_Id, Product_Id, Quantity)
VALUES
(5, 10, 1),  -- Frank bought 1 Microwave
(5, 9, 1),   -- Frank bought 1 Blender
(6, 11, 3),  -- Eve bought 3 Backpacks
(6, 12, 2);  -- Eve bought 2 Jackets

-- Insert a few more customers with orders
INSERT INTO Customers (Name, Email)
VALUES
('Grace', 'grace@example.com'),
('Hannah', 'hannah@example.com');

-- Insert additional Orders and Order Items
INSERT INTO Orders (Customer_Id, Order_Date)
VALUES
(7, '2024-04-14'),
(8, '2024-04-17');

INSERT INTO Order_Items (Order_Id, Product_Id, Quantity)
VALUES
(7, 13, 4),  -- Grace bought 4 Legos
(7, 14, 3),  -- Grace bought 3 Toy Cars
(8, 15, 2),  -- Hannah bought 2 Microwaves
(8, 16, 5);  -- Hannah bought 5 Blenders

-- More Orders with Product Orders for variety
INSERT INTO Orders (Customer_Id, Order_Date)
VALUES
(9, '2024-04-16'),
(10, '2024-04-18');

-- Insert additional Order_Items for new Orders
INSERT INTO Order_Items (Order_Id, Product_Id, Quantity)
VALUES
(9, 1, 2),  -- New Customer bought 2 Laptops
(9, 3, 4),  -- New Customer bought 4 Novels
(10, 7, 1), -- New Customer bought 1 Refrigerator
(10, 10, 3); -- New Customer bought 3 Microwaves
