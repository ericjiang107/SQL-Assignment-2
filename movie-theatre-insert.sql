-- insert into customer table
INSERT INTO Customer(
	customer_id,
	first_name,
	last_name,
	address,
	billing_info
)VALUES(
	1,
    'Eric',
    'Jiang',
    '111 ABCD Av, Astoria, NY 1111',
    '1111-2222-3333-4444 123 04/29'
),(
    2,
    'Vish',
    'Cresent',
    '222 EFGH Av, Manhattan, NY 2222',
    '5555-6666-7777-8888 567 08/30'
),(
    3,
    'Andrew',
    'Nuggets',
    '097 27 Food St, Corona, NY 11234',
    '3294-2769-2760-2058 007 02/20'
),(
	
	4,
	'Jerry',
	'Chaca',
	'5270 Mcdonalds Av, Flushing, NY 11271',
	'1275-1950-0784-3669 016 02/27'
),(
	5,
	'Taira',
	'Khang',
	'720 Burger King DRIVE, East Elmurst, NY 11235',
	'3610-4857-4960-4897 520 11/26'
),(
	6,
	'John',
	'Connor',
	'63-10 Wendys Blvd, NY 12452 ',
	'4721-5832-6839-5682 901 01/21'
);


-- insert food_inventory table
INSERT INTO Food_Inventory(
	total_stock
)VALUES(
	3000
);


-- insert into food table
INSERT INTO Food(
	food_id,
	food_name,
	price,
	customer_id,
	total_stock
)VALUES(
	1,
	'Chocolate Bar',
	5.00,
	2,
	300
),(
	2,
	'Popcorn',
	25.00,
	3,
	300
),(
	3,
	'Soda Can',
	10.00,
	NULL,
	3000
),(
	4,
	'Nachos',
	45.00, 
	5,
	300
),(
	5,
	'Hotdog',
	15.00,
	1,
	300
),(
	6,
	'Chicken Nugget',
	20.00,
	6, 
	3000
),(
	7, 
	'Slushies Any_ Flavor',
	30.00,
	2,
	300
),(
	8,
	'Twizzlers',
	55.00,
	NULL,
	3000
),(
	9,
	'Candy',
	32.00,
	NULL,
	300
),(
	10,
	'Pizza',
	62.00,
	NULL,
	3000
);


-- insert into movie table 
INSERT INTO Movie(
	movie_id,
	movie_name,
	movie_duration 
)VALUES(
	1,
	'The Conjuring',
	180.30
),(
	2,
	'Rick and Morty The Movie',
	170.53
),(
	3,
	'Interstellar',
	210.02
),(
	4,
	'Im Hungry The Movie: Mukbang Part 2',
	305.06
),(
	5,
	'Scary Movie 10',
	165.43
),(
	6,
	'Loki The Movie',
	125.16
),(
	7,
	'Godzilla: Movie Marathon',
	530.47
);


-- insert for ticket table
INSERT INTO Ticket(
	ticket_id,
	customer_id, 
	movie_id
)VALUES(
	1,
	1,
	2
),(
	2,
	3,
	7
),(
	3,
	6,
	4
),(
	4,
	2,
	5
),(
	5,
	4,
	3
),(
	6,
	5,
	1
);

