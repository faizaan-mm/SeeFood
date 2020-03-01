CREATE TABLE Food (
	id integer PRIMARY KEY AUTOINCREMENT,
	name varchar,
	calorie decimal,
	carbs decimal,
	proteins decimal,
	fats decimal
);

CREATE TABLE Meals (
	id integer PRIMARY KEY AUTOINCREMENT,
	f_id integer,
	timestanp timestamp
);

