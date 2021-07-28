-- Creating Customer table
CREATE TABLE Customer(
	customer_id SERIAL PRIMARY KEY,
	first_name VARCHAR(100),
	last_name VARCHAR(100),
	address VARCHAR(150),
	billing_info VARCHAR(150)
); 
-- This is a simple customer table that takes in customer_id as the primary key --> has their first and last 
-- names, address as well as their billing info


-- Creating Movie table
CREATE TABLE Movie(
	movie_id SERIAL PRIMARY KEY,
	movie_name VARCHAR(150),
	movie_duration NUMERIC(6,2)
);
-- This table gives us access to each movie name, how long the movie is, as well as
-- each movie having a specific serial code


-- Creating Food Inventory table
CREATE TABLE Food_Inventory(
	total_stock INTEGER PRIMARY KEY
);
-- This table tracks the inventory of all the food 


-- Creating ticket table
CREATE TABLE Ticket(
	ticket_id SERIAL PRIMARY KEY,
	customer_id INTEGER, 
	movie_id INTEGER,
	date_bought DATE DEFAULT CURRENT_DATE,
	FOREIGN KEY(customer_id) REFERENCES Customer(customer_id),
	FOREIGN KEY(movie_id) REFERENCES Movie(movie_id)
);
-- This table tracks the tickets portion for the movie theatre. Each ticket is serialized in order
-- to prevent duplicates since there can only be 1 barcoded ticket per customer. We have a 
-- foreign key attached to customer_id since we want a relationship between the two. The relationship
-- goes only one and only one customer_id meaning 1 per person can purchase either 0 or more tickets.
-- The same idea applies to the movie_id where movie_id is referencing the movie table. What we are saying here,
-- is that there can only be 1 movie serial code but a customer can purchase and see either 0 or more movies. 


-- Creating Food table
CREATE TABLE Food(
	food_id SERIAL PRIMARY KEY, 
	food_name VARCHAR(100),
	price NUMERIC(6,2),
	customer_id INTEGER,
	total_stock INTEGER,
	FOREIGN KEY(customer_id) REFERENCES Customer(customer_id),
	FOREIGN KEY(total_stock) REFERENCES Food_Inventory(total_stock)
);
-- The reason why this table was created is so we can showcase each different food item/snack that can 
-- be purchased at the movie theatre. Each item is given an unique id followed by price. We reference 
-- customer_id here because we want to track which customer is buying snacks and how many/how much. 
-- The relationship that was created states that each customer_id meaning per person can buy at least 0
-- or more food items. total_stock was referenced as well but as an only one relationship at both ends
-- because we are saying there can only be 1 item per total_stock. 


