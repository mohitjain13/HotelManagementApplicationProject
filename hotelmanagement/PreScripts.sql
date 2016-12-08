DROP DATABASE IF EXISTS HotelAPP;
CREATE DATABASE HotelAPP;
USE HotelAPP;
CREATE TABLE Hotel(hotelId INTEGER PRIMARY KEY AUTO_INCREMENT,
hotelName VARCHAR(50),
city VARCHAR(50),
totalRooms INTEGER,
pricePerRoom INTEGER,
remainingRooms INTEGER);

INSERT INTO Hotel(hotelName,city,totalRooms,pricePerRoom,remainingRooms) VALUES('Holiday Village','BANGALORE',50,1600,0);
INSERT INTO Hotel(hotelName,city,totalRooms,pricePerRoom,remainingRooms) VALUES('Anand Bhavan Lodging','BANGALORE',25,1100,0);
INSERT INTO Hotel(hotelName,city,totalRooms,pricePerRoom,remainingRooms) VALUES('Airlines Hotel','BANGALORE',70,2200,0);
INSERT INTO Hotel(hotelName,city,totalRooms,pricePerRoom,remainingRooms) VALUES('Hotel Ajantha','BANGALORE',80,500,0);
INSERT INTO Hotel(hotelName,city,totalRooms,pricePerRoom,remainingRooms) VALUES('Hotel Shalimar','BANGALORE',90,1500,0);
INSERT INTO Hotel(hotelName,city,totalRooms,pricePerRoom,remainingRooms) VALUES('Jayamahal Palace','BANGALORE',100,3000,0);
INSERT INTO Hotel(hotelName,city,totalRooms,pricePerRoom,remainingRooms) VALUES('Pampa Hotel','BANGALORE',45,777,0);
INSERT INTO Hotel(hotelName,city,totalRooms,pricePerRoom,remainingRooms) VALUES('Sukh Sagar Hotels Ltd','BANGALORE',68,2500,0);
INSERT INTO Hotel(hotelName,city,totalRooms,pricePerRoom,remainingRooms) VALUES('18 Woods Inn','BANGALORE',55,900,0);
INSERT INTO Hotel(hotelName,city,totalRooms,pricePerRoom,remainingRooms) VALUES('Hotel Kanishka','BANGALORE',100,2000,0);
INSERT INTO Hotel(hotelName,city,totalRooms,pricePerRoom,remainingRooms) VALUES('12th Avenue','BANGALORE',65,700,0);
INSERT INTO Hotel(hotelName,city,totalRooms,pricePerRoom,remainingRooms) VALUES('Aathithya Restaurant','BANGALORE',72,5000,0);


INSERT INTO Hotel(hotelName,city,totalRooms,pricePerRoom,remainingRooms) VALUES('Arya Nivas','MUMBAI',62,1800,0);
INSERT INTO Hotel(hotelName,city,totalRooms,pricePerRoom,remainingRooms) VALUES('Hotel Kumkum','MUMBAI',29,1200,0);
INSERT INTO Hotel(hotelName,city,totalRooms,pricePerRoom,remainingRooms) VALUES('R K Hotel','MUMBAI',35,1200,0);
INSERT INTO Hotel(hotelName,city,totalRooms,pricePerRoom,remainingRooms) VALUES('Hotel Ameya','MUMBAI',20,3100,0);
INSERT INTO Hotel(hotelName,city,totalRooms,pricePerRoom,remainingRooms) VALUES('Hotel Aircraft International','MUMBAI',20,4200,0);
INSERT INTO Hotel(hotelName,city,totalRooms,pricePerRoom,remainingRooms) VALUES('Hotel Cowies','MUMBAI',25,3000,0);
INSERT INTO Hotel(hotelName,city,totalRooms,pricePerRoom,remainingRooms) VALUES('Fariyas Hotel','MUMBAI',87,20000,0);
INSERT INTO Hotel(hotelName,city,totalRooms,pricePerRoom,remainingRooms) VALUES('Grand Hyatt Mumbai','MUMBAI',547,8500,0);

INSERT INTO Hotel(hotelName,city,totalRooms,pricePerRoom,remainingRooms) VALUES('Le Meridien','DELHI',358,1500,0);
INSERT INTO Hotel(hotelName,city,totalRooms,pricePerRoom,remainingRooms) VALUES('The Lalit New Delhi','DELHI',300,2500,0);
INSERT INTO Hotel(hotelName,city,totalRooms,pricePerRoom,remainingRooms) VALUES('Taj Palace Hotel','DELHI',3567,3500,0);
INSERT INTO Hotel(hotelName,city,totalRooms,pricePerRoom,remainingRooms) VALUES('The Grand Vasant Kunj','DELHI',456,580,0);
INSERT INTO Hotel(hotelName,city,totalRooms,pricePerRoom,remainingRooms) VALUES('The Claridges New Delhi','DELHI',300,560,0);
INSERT INTO Hotel(hotelName,city,totalRooms,pricePerRoom,remainingRooms) VALUES('Jaypee Siddharth','DELHI',445,1500,0);
INSERT INTO Hotel(hotelName,city,totalRooms,pricePerRoom,remainingRooms) VALUES('Hyatt Regency New Delhi','DELHI',500,6500,0);

INSERT INTO Hotel(hotelName,city,totalRooms,pricePerRoom,remainingRooms) VALUES('Taj Krishna','HYDERABAD',261,50000,0);
INSERT INTO Hotel(hotelName,city,totalRooms,pricePerRoom,remainingRooms) VALUES('Katriya Hotel And Towers','HYDERABAD',225,18000,0);
INSERT INTO Hotel(hotelName,city,totalRooms,pricePerRoom,remainingRooms) VALUES('The Central Court','HYDERABAD',76,10000,0);
INSERT INTO Hotel(hotelName,city,totalRooms,pricePerRoom,remainingRooms) VALUES('Amrutha Castle','HYDERABAD',90,4400,0);
INSERT INTO Hotel(hotelName,city,totalRooms,pricePerRoom,remainingRooms) VALUES('Nagarjuna Hotel','HYDERABAD',50,500,0);