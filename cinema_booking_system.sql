-- CREATE DATABASE
CREATE DATABASE cinema_booking_system; 


-- ENTER DATABASE
USE cinema_booking_system;


-- SHOW ANY EXISTING TABLES
SHOW TABLES;


-- FIRST CREATE TABLES THAT HAVE NO FOREIGN KEYS.  CREATE AND INSERT DATA AS YOU GO.
CREATE TABLE films(

	id INT PRIMARY KEY AUTO_INCREMENT, 
    name VARCHAR(45) NOT NULL, 
    length_min INT NOT NULL

);

CREATE TABLE customers(

	id INT PRIMARY KEY AUTO_INCREMENT, 
    first_name VARCHAR(45) NOT NULL, 
    last_name VARCHAR(45) NOT NULL, 
    email VARCHAR(45) NOT NULL

);

CREATE TABLE rooms(

	id INT PRIMARY KEY AUTO_INCREMENT, 
    name VARCHAR(45) NOT NULL, 
    no_seats INT NOT NULL

);


-- SECOND, CREATE TABLES THAT HAVE FOREIGN KEYS.  CREATE AND INSERT DATA AS YOU GO.
CREATE TABLE screenings(

	id INT PRIMARY KEY AUTO_INCREMENT, 
    film_id INT NOT NULL, 
    room_id INT NOT NULL, 
    start_time DATETIME NOT NULL,
    FOREIGN KEY (film_id) REFERENCES films(id), 
    FOREIGN KEY (room_id) REFERENCES rooms(id)
    
);

CREATE TABLE seats(

	id INT PRIMARY KEY AUTO_INCREMENT, 
    row_letter CHAR(1) NOT NULL, 
    number INT NOT NULL, 
    room_id INT NOT NULL,
    FOREIGN KEY (room_id) REFERENCES rooms(id)

);


-- SELECT TABLES AFTER YOU INSERTED DATA TO CONFIRM IF DATA WAS PROPERLY INSERTED
SELECT * FROM films;
SELECT * FROM customers;
SELECT * FROM rooms;
SELECT * FROM screenings; 
SELECT * FROM seats;


-- DROP ANY UNWANTED TABLES IF NECESSARY (DROP THEM IN REVERSE ORDER TO SUCCESSFULLY DROP THEM)
DROP TABLE films;
DROP TABLE customers;
DROP TABLE rooms;
DROP TABLE screenings;
DROP TABLE seats;


-- DATA TO BE INSERTED INTO TABLES (MUST BE POSTED HERE LAST, TOO MUCH CONTENT TO POST ABOVE)
INSERT INTO customers (first_name, last_name, email)
VALUES ('David','May','dmay@gmail.com'),('Theresa','Davis','tdavis@gmail.com'),('Jerry','Martin','jermar@gmail.com'),('John','Smith','smithy@gmail.com'),
('Martin','Watkins','mwatto@gmail.com'),('Emma','Watson','itswingardiumleviosa@gmail.com'),('Javier','Pastore','jp@gmail.com'),('Charlotte','Hare','chare@gmail.com'),
('Mark','Smith','markysmith@gmail.com'),('Emily','Thorne','ethorne@gmail.com'),('David','Paul','davpaul@gmail.com'),('Cherry','Wang','cherryw@gmail.com'),
('Bort','Simpson','mynameisbort@gmail.com'),('Emma','Connor','econ@gmail.com'),('Jonathan','Edwards','jedwards@gmail.com'),('Simon','Davis','sdavis@gmail.com'),
('Sophie','Marshall','sophmarsh@gmail.com'),('Sally','Lam','slam@gmail.com'),('Kenneth','Harrison','kson@gmail.com'),('Wiley','Smith','smith@gmail.com');

INSERT INTO films (name, length_min)
VALUES ('Doctor Strange and the Multiverse of Madness',126),
('Morbius',104),
('The Unbearable Weight of Massive Talent',106),
('The Lost City',112),
('Uncharted',116),
('The Northman',137),
('Ambulance',136),
('The Batman',176),
('Sonic the Hedgehog 2',122),
('Black Adam',120),
('Top Gun: Maverick',130),
('Thor: Love and Thunder',124),
('Jurassic World Dominion',132),
('Lightyear',122);


INSERT INTO rooms (name, no_seats) 
VALUES ('Chaplin',72),
('Kubrick',36),
('Coppola',36);

INSERT INTO screenings (film_id, room_id, start_time)
VALUES (2,1,'2022-10-01 13:00:00'),(1,2,'2022-10-01 13:30:00'),(2,3,'2022-10-01 14:00:00'),
(3,1,'2022-10-01 16:00:00'),(6,2,'2022-10-01 16:30:00'),(3,3,'2022-10-01 17:00:00'),
(4,1,'2022-10-01 19:00:00'),(6,2,'2022-10-01 19:30:00'),(4,3,'2022-10-01 20:00:00'),
(1,1,'2022-10-02 16:00:00'),(4,2,'2022-10-02 16:30:00'),(5,3,'2022-10-02 17:00:00'),
(2,1,'2022-10-02 19:00:00'),(1,2,'2022-10-02 19:30:00'),(1,3,'2022-10-02 20:00:00'),
(5,1,'2022-10-03 16:00:00'),(3,2,'2022-10-03 16:30:00'),(2,3,'2022-10-03 17:00:00'),
(1,1,'2022-10-03 19:00:00'),(2,2,'2022-10-03 19:30:00'),(3,3,'2022-10-03 20:00:00');

INSERT INTO seats (row_letter, number, room_id)
VALUES ('A',1,1),('A',2,1),('A',3,1),('A',4,1),('A',5,1),('A',6,1),('A',7,1),('A',8,1),
('B',1,1),('B',2,1),('B',3,1),('B',4,1),('B',5,1),('B',6,1),('B',7,1),('B',8,1),
('C',1,1),('C',2,1),('C',3,1),('C',4,1),('C',5,1),('C',6,1),('C',7,1),('C',8,1),
('D',1,1),('D',2,1),('D',3,1),('D',4,1),('D',5,1),('D',6,1),('D',7,1),('D',8,1),
('E',1,1),('E',2,1),('E',3,1),('E',4,1),('E',5,1),('E',6,1),('E',7,1),('E',8,1),
('F',1,1),('F',2,1),('F',3,1),('F',4,1),('F',5,1),('F',6,1),('F',7,1),('F',8,1),
('G',1,1),('G',2,1),('G',3,1),('G',4,1),('G',5,1),('G',6,1),('G',7,1),('G',8,1),
('H',1,1),('H',2,1),('H',3,1),('H',4,1),('H',5,1),('H',6,1),('H',7,1),('H',8,1),
('I',1,1),('I',2,1),('I',3,1),('I',4,1),('I',5,1),('I',6,1),('I',7,1),('I',8,1),
('A',1,2),('A',2,2),('A',3,2),('A',4,2),('A',5,2),('A',6,2),
('B',1,2),('B',2,2),('B',3,2),('B',4,2),('B',5,2),('B',6,2),
('C',1,2),('C',2,2),('C',3,2),('C',4,2),('C',5,2),('C',6,2),
('D',1,2),('D',2,2),('D',3,2),('D',4,2),('D',5,2),('D',6,2),
('E',1,2),('E',2,2),('E',3,2),('E',4,2),('E',5,2),('E',6,2),
('F',1,2),('F',2,2),('F',3,2),('F',4,2),('F',5,2),('F',6,2),
('A',1,3),('A',2,3),('A',3,3),('A',4,3),('A',5,3),('A',6,3),
('B',1,3),('B',2,3),('B',3,3),('B',4,3),('B',5,3),('B',6,3),
('C',1,3),('C',2,3),('C',3,3),('C',4,3),('C',5,3),('C',6,3),
('D',1,3),('D',2,3),('D',3,3),('D',4,3),('D',5,3),('D',6,3),
('E',1,3),('E',2,3),('E',3,3),('E',4,3),('E',5,3),('E',6,3),
('F',1,3),('F',2,3),('F',3,3),('F',4,3),('F',5,3),('F',6,3);






