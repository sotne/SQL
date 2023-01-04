create table customers(
	customer_id serial primary key,
	first_name VARCHAR(50) not null, 
	last_name VARCHAR(50) not null,
	email VARCHAR(50)
)

--	foreign key(customer_id) references customer(customer_id)
--)


--	foreign key(movie_id) references customer(movie_id)
--	foreign key(payment_id) references customer(payment_id)
--)

create table movies(
	movie_id serial primary key,
	title VARCHAR(50),
	desciption VARCHAR(100),
	movie_length INTEGER,
	genre VARCHAR(50),
	rating VARCHAR(10)
)

create table payment(
	payment_id serial primary key,
	payment_amount NUMERIC(5,2),
	payment_date TIMESTAMP default CURRENT_TIMESTAMP
)

create table tickets(
	ticket_id serial primary key,
	price NUMERIC(5,2),
	ticket_date TIMESTAMP default CURRENT_TIMESTAMP
)

alter table movies
add foreign key(customer_id) references customers(customer_id);


alter table tickets
add foreign key(movie_id) references movies(movie_id);

alter table tickets
add foreign key(payment_id) references payment(payment_id);