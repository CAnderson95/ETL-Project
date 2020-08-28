CREATE TABLE Restaurant_Info(
	Name varchar(200),
	Street_Address varchar(200),
	Rating VARCHAR(30),
	Num_Reviews INT,
	URL VARCHAR(1000)
);

CREATE TABLE Restaurant_location(
	Name varchar(200),
	Street_Address varchar(200),
	Postcode INT,
	Longitude VARCHAR(30),
	Latitude VARCHAR(30)
);


CREATE TABLE Borough(
	postcode VARCHAR(30),
	Borough varchar(200)
);


CREATE TABLE Hotels(
	ParID VARCHAR(60),
	Postcode INT,
	Borough varchar(200),
	Latitude VARCHAR(30),
	Longitude VARCHAR(30),
	NTA VARCHAR(60),
	Street_Address VARCHAR (200)
);
