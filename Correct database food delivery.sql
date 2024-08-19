-- Create the database
CREATE DATABASE FoodDeliveryApp;

-- Use the created database
USE FoodDeliveryApp;

-- Table to store restaurant information
CREATE TABLE restaurants (
    restaurant_id INT  PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    address VARCHAR(255),
    phone VARCHAR(15),
    email VARCHAR(255),
    opening_time TIME,
    closing_time TIME
);

-- Table to store food information
CREATE TABLE food (
    food_id INT  PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    description TEXT,
    price DECIMAL(10, 2) NOT NULL,
    restaurant_id INT
);

-- Table to store user information
CREATE TABLE users (
    user_id INT  PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL ,
    password VARCHAR(255) NOT NULL,
    phone VARCHAR(15),
    address VARCHAR(255)
);

-- Table to store order information
CREATE TABLE orders (
    order_id INT  PRIMARY KEY,
    user_id INT,
    restaurant_id INT,
    order_time DATETIME DEFAULT CURRENT_TIMESTAMP,
    status VARCHAR(50),
    total_amount DECIMAL(10, 2),
    FOREIGN KEY (user_id) REFERENCES users(user_id),
    FOREIGN KEY (restaurant_id) REFERENCES restaurants(restaurant_id)
);

-- Table to store order items
CREATE TABLE order_items (
    order_item_id INT  PRIMARY KEY,
    order_id INT,
    food_id INT,
    quantity INT,
    price DECIMAL(10, 2)

);

-- Insert sample data into restaurants table
INSERT INTO restaurants (name, address, phone, email, opening_time, closing_time) 
VALUES ('Pizza Place', '123 Pizza St', '123-456-7890', 'niu@pizzaplace.com', '10:00:00', '22:00:00'),
       ('Burger Joint', '456 Burger Ave', '123-456-7891', 'burger@burgerjoint.com', '09:00:00', '21:00:00');

	   select *from restaurants;

-- Insert sample data into food table
INSERT INTO food (name, restaurant_id) 
VALUES ('Pepperoni Pizza', 1),
       ('Cheeseburger', 2);
	   select * from food;
	   

-- Insert sample data into users table
INSERT INTO users (name, email, password, phone, address) 
VALUES ('pink', 'pink@gmail.com', '123', '12345', '789 Elm St'),
       ('yellow', 'yello@gmail.com', '456', '7893', '456 Oak St');

	   select * from users
	   

-- Insert sample data into orders table
INSERT INTO orders (user_id, restaurant_id, status, total_amount) 
VALUES (1, 1, 'Pending', 12.99),
       (2, 2, 'Completed', 8.99);

-- Insert sample data into order_items table
INSERT INTO order_items (order_id, food_id, quantity, price) 
VALUES (1, 1, 1, 12.99),
       (2, 2, 1, 8.99);
SELECT * FROM food;
