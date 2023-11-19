-- Create the Cars table
CREATE TABLE Cars (
    CarID INT AUTO_INCREMENT PRIMARY KEY,
    VIN VARCHAR(17) NOT NULL,
    Manufacturer VARCHAR(255) NOT NULL,
    Model VARCHAR(255) NOT NULL,
    Year INT NOT NULL,
    Color VARCHAR(255) NOT NULL
);

-- Create the Customers table
CREATE TABLE Customers (
    CustomerID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(255) NOT NULL,
    PhoneNumber VARCHAR(20) NOT NULL,
    Email VARCHAR(255) NOT NULL,
    Address VARCHAR(255) NOT NULL,
    City VARCHAR(255) NOT NULL,
    StateProvince VARCHAR(255) NOT NULL,
    Country VARCHAR(255) NOT NULL,
    ZipPostalCode VARCHAR(20) NOT NULL
);

-- Create the Salespersons table
CREATE TABLE Salespersons (
    StaffID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(255) NOT NULL,
    Store VARCHAR(255) NOT NULL
);

-- Create the Invoices table
CREATE TABLE Invoices (
    InvoiceNumber INT AUTO_INCREMENT PRIMARY KEY,
    Date DATE NOT NULL,
    CarID INT,
    CustomerID INT,
    StaffID INT,
    FOREIGN KEY (CarID) REFERENCES Cars(CarID),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),
    FOREIGN KEY (StaffID) REFERENCES Salespersons(StaffID)
);

-- Insert dummy data into the Cars table
INSERT INTO Cars (VIN, Manufacturer, Model, Year, Color) VALUES
('3K096I98581DHSNUP', 'Volkswagen', 'Tiguan', 2019, 'Blue'),
('ZM8G7BEUQZ97IH46V', 'Peugeot', 'Rifter', 2019, 'Red'),
('RKXVNNIHLVVZOUB4M', 'Ford', 'Fusion', 2018, 'White'),
('HKNDGS7CU31E9Z7JW', 'Toyota', 'RAV4', 2018, 'Silver'),
('DAM41UDN3CHU2WVF6', 'Volvo', 'V60', 2019, 'Gray'),
('DAM41UDN3CHU2WVF6', 'Volvo', 'V60 Cross Country', 2019, 'Gray');

-- Insert dummy data into the Customers table
INSERT INTO Customers (CustomerID, Name, PhoneNumber, Email, Address, City, StateProvince, Country, ZipPostalCode) VALUES
(10001, 'Pablo Picasso', '+34 636 17 63 82', '-', 'Paseo de la Chopera, 14', 'Madrid', 'Madrid', 'Spain', '28045'),
(20001, 'Abraham Lincoln', '+1 305 907 7086', '-', '120 SW 8th St', 'Miami', 'Florida', 'United States', '33130'),
(30001, 'Napoléon Bonaparte', '+33 1 79 75 40 00', '-', '40 Rue du Colisée', 'Paris', 'Île-de-France', 'France', '75008');

-- Insert dummy data into the Salespersons table
INSERT INTO Salespersons (StaffID, Name, Store) VALUES
(00001, 'Petey Cruiser', 'Madrid'),
(00002, 'Anna Sthesia', 'Barcelona'),
(00003, 'Paul Molive', 'Berlin'),
(00004, 'Gail Forcewind', 'Paris'),
(00005, 'Paige Turner', 'Mimia'),
(00006, 'Bob Frapples', 'Mexico City'),
(00007, 'Walter Melon', 'Amsterdam'),
(00008, 'Shonda Leer', 'São Paulo');

-- Insert dummy data into the Invoices table
INSERT INTO Invoices (InvoiceNumber, Date, CarID, CustomerID, StaffID) VALUES
(852399038, '2018-08-22', 0, 1, 3),
(731166526, '2018-12-31', 3, 0, 5),
(271135104, '2019-01-22', 2, 2, 7);
