create database fiver

use fiver

drop database fiver



-- Create Customers table
CREATE TABLE Customers (
  Customer_No VARCHAR(10) PRIMARY KEY,
  Customer_Name VARCHAR(50),
  Member_Category VARCHAR(10),
  Customer_Address VARCHAR(100),
  Customer_Post_code VARCHAR(10),
  Customer_City VARCHAR(50),
  Customer_email VARCHAR(100)
);

-- Creating the Reservations table
CREATE TABLE Reservations (
    Reservation_No INT PRIMARY KEY,
    Customer_No varchar(10),
    Reservation_Date DATE,
    FOREIGN KEY (Customer_No) REFERENCES Customers(Customer_No)
);

-- Creating the Seats table
CREATE TABLE Seats (
    Seat_No VARCHAR(5) ,
    Reservation_No INT,
    Production VARCHAR(50),
    Production_Date DATE,
    Time TIME,
    Seat_Price DECIMAL(8, 2),
    FOREIGN KEY (Reservation_No) REFERENCES Reservations(Reservation_No)
);



-- Insert data into Customers table
INSERT INTO Customers (Customer_No, Customer_Name, Member_Category, Customer_Address, Customer_Post_code, Customer_City, Customer_email)
VALUES
('A023', 'Owen James', 'Blue', '12 Highland Avenue', 'BS29 1RT', 'Bristol', 'O.James@yahoo.com'),
('C007', 'Peter Brown', 'Bronze', '27 Blacktown Road', 'SE14 5UX', 'London', 'P.B253@outlook.com'),
('C009', 'David Johnson', 'Blue', '49 New Avenue', 'SW2 6YI', 'London', 'DJ2923@gmail.com'),
('A011', 'John Burns', 'Gold', '18 Kings Cross', 'G5 9AY', 'Glasgow', 'John.Burns@abc.co.uk'),
('B017', 'Philippa Jones', 'Silver', '7 Martha Close', 'CF12 8TE', 'Cardiff', 'P.Jones311@gmail.com'),
('C005', 'Kevin Williamson', 'Bronze', '135 Brown Lane', 'SE1 7TU', 'London', 'Kevo125@gmail.com'),
('B011', 'Pippa Phillips', 'Silver', '299 New Road', 'BS8 7RY', 'Bristol', 'PP22@yahoo.com'),
('B001', 'Mary Owens', 'Gold', '45 Docks Lane', 'SE1 7EW', 'London', 'MaryO37@yahoo.com'),
('C014', 'William Rose', 'Blue', '47 Old Mill Lane', 'N10 7QE', 'London', 'Will.Rose@myrose.co.uk'),
('C002', 'Anne Black', 'Bronze', '55 Old Mill Lane', 'N10 7QE', 'London', 'Ann4321@gmail.com'),
('A018', 'Nicholas Blair', 'Bronze', '7 Catherine Avenue', 'G11 8FE', 'Glasgow', 'NickB11@gmail.com'),
('A022', 'Thomas Major', 'Bronze', '17 End Lane', 'N11 7OP', 'London', 'Tom.Major@abc.co.uk');


-- Inserting unique data into the Reservations table
INSERT INTO Reservations (Reservation_No, Customer_No, Reservation_Date)
VALUES
--(1123756, 'A023', CONVERT(DATE, '18/6/2023', 103)),
(1287987, 'C007', CONVERT(DATE, '18/6/2023', 103)),
(1299988, 'C009', CONVERT(DATE, '19/6/2023', 103)),
(1311437, 'A011', CONVERT(DATE, '19/6/2023', 103)),
(1399888, 'B017', CONVERT(DATE, '21/6/2023', 103)),
(1544328, 'C007', CONVERT(DATE, '22/6/2023', 103)),
(1544331, 'A011', CONVERT(DATE, '22/6/2023', 103)),
(1532456, 'C005', CONVERT(DATE, '22/6/2023', 103)),
(1600011, 'B011', CONVERT(DATE, '23/6/2023', 103)),
(1732789, 'B011', CONVERT(DATE, '20/8/2023', 103)),
(1799980, 'B001', CONVERT(DATE, '23/6/2023', 103)),
(1799981, 'C014', CONVERT(DATE, '23/6/2023', 103)),
(1799982, 'C002', CONVERT(DATE, '23/6/2023', 103)),
(1799983, 'A018', CONVERT(DATE, '23/6/2023', 103)),
(1800001, 'A022', CONVERT(DATE, '24/6/2023', 103)),
(1809002, 'B001', CONVERT(DATE, '30/6/2023', 103)),
(1811053, 'C014', CONVERT(DATE, '3/7/2023', 103)),
(1811055, 'B001', CONVERT(DATE, '4/7/2023', 103)),
(1811744, 'A022', CONVERT(DATE, '11/7/2023', 103)),
(1819937, 'B001', CONVERT(DATE, '11/7/2023', 103)),
(1822991, 'C002', CONVERT(DATE, '9/8/2023', 103)),
(1870111, 'A022', CONVERT(DATE, '10/8/2023', 103)),
(1874523, 'C002', CONVERT(DATE, '27/8/2023', 103)),
(1888863, 'A018', CONVERT(DATE, '22/7/2023', 103));




INSERT INTO Seats (Reservation_No, Seat_No, Production, Production_Date, Time, Seat_Price)
VALUES
(1123756, 'G5', 'The running ducks', CONVERT(DATE, '2/7/2023', 103), '19:45', 55),
(1123756, 'G6', 'The running ducks', CONVERT(DATE, '2/7/2023', 103), '19:45', 55),
(1123756, 'G5', 'The quest of happiness', CONVERT(DATE, '24/8/2023', 103), '14:45', 55),
(1123756, 'G6', 'The quest of happiness', CONVERT(DATE, '24/8/2023', 103), '14:45', 55),
(1287987, 'G5', 'The running ducks', CONVERT(DATE, '1/7/2023', 103), '19:45', 55),
(1287987, 'G6', 'The running ducks', CONVERT(DATE, '1/7/2023', 103), '19:45', 55),
(1299988, 'H1', 'A valiant cause', CONVERT(DATE, '31/8/2023', 103), '19:45', 65),
(1299988, 'H2', 'A valiant cause', CONVERT(DATE, '31/8/2023', 103), '19:45', 65),
(1299988, 'F3', 'A starry night in Gwent', CONVERT(DATE, '24/7/2023', 103), '14:45', 55),
(1299988, 'F4', 'A starry night in Gwent', CONVERT(DATE, '24/7/2023', 103), '14:45', 55),
(1311437, 'B3', 'A starry night in Gwent', CONVERT(DATE, '3/8/2023', 103), '19:45', 55),
(1311437, 'B4', 'A starry night in Gwent', CONVERT(DATE, '3/8/2023', 103), '19:45', 55),
(1399888, 'B5', 'The running ducks', CONVERT(DATE, '10/7/2023', 103), '14:45', 55),
(1399888, 'B6', 'The running ducks', CONVERT(DATE, '10/7/2023', 103), '14:45', 55),
(1399888, 'B3', 'Long lost summer’s beauty', CONVERT(DATE, '19/8/2023', 103), '19:45', 55),
(1399888, 'B4', 'Long lost summer’s beauty', CONVERT(DATE, '19/8/2023', 103), '19:45', 55),
(1399888, 'A5', 'A starry night in Gwent', CONVERT(DATE, '3/8/2023', 103), '19:45', 55),
(1544328, 'H3', 'A valiant cause', CONVERT(DATE, '30/8/2023', 103), '14:45', 65),
(1544328, 'H4', 'A valiant cause', CONVERT(DATE, '30/8/2023', 103), '14:45', 65),
(1544331, 'B5', 'A valiant cause', CONVERT(DATE, '30/8/2023', 103), '14:45', 65),
(1544331, 'B6', 'A valiant cause', CONVERT(DATE, '30/8/2023', 103), '14:45', 65),
(1532456, 'F5', 'Long lost summer’s beauty', CONVERT(DATE, '19/8/2023', 103), '19:45', 55),
(1532456, 'F5', 'The quest of happiness', CONVERT(DATE, '21/8/2023', 103), '19:45', 55),
(1532456, 'F5', 'A valiant cause', CONVERT(DATE, '31/8/2023', 103), '19:45', 65),
(1600011, 'C5', 'Long lost summer’s beauty', CONVERT(DATE, '19/8/2023', 103), '19:45', 55),
(1732789, 'F4', 'The quest of happiness', CONVERT(DATE, '21/8/2023', 103), '19:45', 55),
(1732789, 'F4', 'A valiant cause', CONVERT(DATE, '31/8/2023', 103), '19:45', 65),
(1799980, 'A4', 'The running ducks', CONVERT(DATE, '1/7/2023', 103), '19:45', 55),
(1799981, 'G3', 'The running ducks', CONVERT(DATE, '1/7/2023', 103), '19:45', 55),
(1799981, 'G4', 'The running ducks', CONVERT(DATE, '1/7/2023', 103), '19:45', 55),
(1799982, 'F1', 'Long lost summer’s beauty', CONVERT(DATE, '8/8/2023', 103), '19:45', 55),
(1799982, 'F2', 'Long lost summer’s beauty', CONVERT(DATE, '8/8/2023', 103), '19:45', 55),
(1799983, 'F7', 'A starry night in Gwent', CONVERT(DATE, '4/8/2023', 103), '14:45', 55),
(1799983, 'F8', 'A starry night in Gwent', CONVERT(DATE, '4/8/2023', 103), '14:45', 55),
(1800001, 'F2', 'A starry night in Gwent', CONVERT(DATE, '4/8/2023', 103), '14:45', 55),
(1809002, 'B3', 'A starry night in Gwent', CONVERT(DATE, '4/8/2023', 103), '19:45', 55),
(1809002, 'B4', 'A starry night in Gwent', CONVERT(DATE, '4/8/2023', 103), '19:45', 55),
(1811053, 'H7', 'The quest of happiness', CONVERT(DATE, '22/8/2023', 103), '19:45', 55),
(1811053, 'H6', 'The quest of happiness', CONVERT(DATE, '22/8/2023', 103), '19:45', 55),
(1811055, 'A5', 'The quest of happiness', CONVERT(DATE, '21/8/2023', 103), '19:45', 55),
(1811744, 'F5', 'The quest of happiness', CONVERT(DATE, '22/8/2023', 103), '19:45', 55),
(1819937, 'B3', 'A valiant cause', CONVERT(DATE, '31/8/2023', 103), '14:45', 65),
(1819937, 'B4', 'A valiant cause', CONVERT(DATE, '31/8/2023', 103), '14:45', 65),
(1822991, 'F5', 'The quest of happiness', CONVERT(DATE, '26/8/2023', 103), '19:45', 55),
(1870111, 'G6', 'A valiant cause', CONVERT(DATE, '30/8/2023', 103), '14:45', 65),
(1874523, 'G3', 'A valiant cause', CONVERT(DATE, '29/8/2023', 103), '19:45', 65),
(1874523, 'G4', 'A valiant cause', CONVERT(DATE, '29/8/2023', 103), '19:45', 65),
(1888863, 'H1', 'A starry night in Gwent', CONVERT(DATE, '31/7/2023', 103), '19:45', 55),
(1888863, 'H2', 'A starry night in Gwent', CONVERT(DATE, '31/7/2023', 103), '19:45', 55),
(1888863, 'G6', 'A valiant cause', CONVERT(DATE, '31/8/2023', 103), '19:45', 65);



select * from Seats;
select * from Customers;
select * from Reservations;

-- Queries
-- 1
SELECT c.Customer_Name, c.Customer_No, COUNT(s.Seat_No) AS Total_Seats
FROM Customers c
JOIN Reservations r ON c.Customer_No = r.Customer_No
JOIN Seats s ON r.Reservation_No = s.Reservation_No
WHERE r.Reservation_Date <= CONVERT(DATE, '25/7/2023', 103)
GROUP BY c.Customer_Name, c.Customer_No
ORDER BY Total_Seats ASC;

-- Queries
--2 
SELECT s.Production, COUNT(s.Reservation_No) AS Reservation_Count
FROM Seats s
JOIN Reservations r ON s.Reservation_No = r.Reservation_No
WHERE s.Production_Date > CONVERT(DATE, '5/7/2023', 103)
GROUP BY s.Production
ORDER BY Reservation_Count DESC;

-- Queries
-- 3

SELECT TOP 3 c.Customer_City, COUNT(*) AS Reservation_Count
FROM Customers c
JOIN Reservations r ON c.Customer_No = r.Customer_No
JOIN Seats s ON r.Reservation_No = s.Reservation_No
GROUP BY c.Customer_City
ORDER BY Reservation_Count DESC;

-- Queries
-- 4
	SELECT TOP 3
    Production,
    MAX(CONVERT(VARCHAR, Production_Date, 103)) AS Production_Date,
    MAX(Time) AS Time,
    COUNT(*) AS Reserved_Seats
FROM
    Seats
GROUP BY
    Production
ORDER BY
    Reserved_Seats DESC;


	SELECT TOP 3
    s.Production,
    s.Production_Date,
    s.Time,
    COUNT(*) AS Reserved_Seats
FROM
    Seats s
GROUP BY
    s.Production,
    s.Production_Date,
    s.Time
ORDER BY
    COUNT(*) DESC;




-- Queries 
-- 5
SELECT c.Customer_No, c.Customer_Name, c.Member_Category, COUNT(s.Seat_No) AS Reserved_Seats
FROM Customers c
INNER JOIN Reservations r ON c.Customer_No = r.Customer_No
INNER JOIN Seats s ON r.Reservation_No = s.Reservation_No
GROUP BY c.Customer_No, c.Customer_Name, c.Member_Category
HAVING COUNT(s.Seat_No) > 0
ORDER BY
  CASE c.Member_Category
    WHEN 'Gold' THEN 1
    WHEN 'Silver' THEN 2
    WHEN 'Bronze' THEN 3
    WHEN 'Blue' THEN 4
  END,
  COUNT(s.Seat_No) DESC;







