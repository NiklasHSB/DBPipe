--liquibase formatted sql

--changeset HoC:1
CREATE TABLE Customers (
        id int primary key,
        CustomerName varchar(255),
        ContactName varchar(255),
        Address varchar(255),
        City varchar(255),
        PostalCode int,
        Country varchar(255)
);

INSERT INTO Customers (id, CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES ('1', 'Cardinal', 'Tom B. Erichsen', 'Skagen 21', 'Stavanger', '4006', 'Norway');

--rollback DROP TABLE Customers

--changeset HoC:2
CREATE TABLE Users (
        id int primary key,
        UserName varchar(255),
        Name varchar(255),
        Address varchar(255),
        City varchar(255),
        PostalCode int,
        Country varchar(255)
);

INSERT INTO Users (id, UserName, Name, Address, City, PostalCode, Country)
VALUES ('1', 'anonymous', 'Watson, John', 'Fantasystreet 2', 'Frankfurt', '23451', 'Germany');

--rollback DROP TABLE Users