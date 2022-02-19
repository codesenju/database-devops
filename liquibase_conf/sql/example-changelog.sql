--liquibase formatted sql

--changeset hloni:1
CREATE TABLE Customers (
  CustomerName varchar(255),
  ContactName varchar(255),
  Address varchar(255),
  City varchar(255),
  PostalCode varchar(255),
  Country varchar(255),
);
--rollback DROP TABEL Customers

--changeset hloni:2
ALTER TABLE
  Customers
ADD
  Email varchar(255);
--rollback ALTER TABLE Persons DROP COLUMN Email;

  --changeset hloni:3
INSERT INTO Customers (CustomerName, ContactName, Address, City, PostalCode, Country, Email)
VALUES ('Cardinal', 'Tom B. Erichsen', 'Skagen 21', 'Stavanger', '4006', 'Norway','Tom@example.com');
VALUES ('Elon', 'Elon Musk', 'Mars', 'Rocks', '2001', 'Mars','elon@example.com');
VALUES ('Cardinal', 'Tom B. Erichsen', 'Skagen 21', 'Stavanger', '4006', 'Norway','Tom@example.com');
--rollback DELETE FROM Customers WHERE CustomerName='Cardinal';