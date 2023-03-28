--Create candystore database:
CREATE DATABASE candystore;

--Swtich to candystore databse:
USE candystore;

--create the customer table:
CREATE TABLE customer (
customerId INT AUTO_INCREMENT PRIMARY KEY,
firstname VARCHAR(20) NOT NULL,
lastName VARCHAR(20) NOT NULL,
email VARCHAR(30),
phone VARCHAR(20),
createAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

--Add our first customer:
INSERT INTO customer (firstName, lastName, email, phone) 
VALUE('Damian', 'Montero', 'damian@bocadode.com','976-CODE');

--Let's get ALL of the customers:
SELECT * FROM customer;

INSERT INTO customer (firstName, lastName, email, phone)
VALUE('Cass', 'Curcio', 'cassadandra@bocadoe.com', '954-CODE');

--create the order table:
CREATE TABLE orders (
orderId INT AUTO_INCREMENT PRIMARY KEY,
customerId INT NOT NULL,
total DECIMAL(8,2),
tax DECIMAL(7,2),
createdAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

--Now lets add an order to our order table:
 INSERT INTO orders (customerId, total, tax)
 VALUES (1, 19.48, 0.18), (2, 49.26, 3.44);

--we can show the order by:
SELECT * FROM orders;

--How can I search for all the of Damian's orders?
SELECT * FROM customer
JOIN orders ON orders.customerId = customer.customerId 
WHERE firstName = 'Damian';