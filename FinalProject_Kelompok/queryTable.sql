CREATE DATABASE db_employee;
USE db_employee
GO
CREATE TABLE tbl_regions(
	id INT IDENTITY(1,1) PRIMARY KEY,
	name VARCHAR(25) NOT NULL
);

CREATE TABLE tbl_countries(
	id CHAR(3) PRIMARY KEY,
	name VARCHAR(40) NOT NULL,
	region INT 
);

CREATE TABLE tbl_locations(
	id INT IDENTITY(1,1) PRIMARY KEY,
	street_address VARCHAR(40),
	postal_code VARCHAR(12),
	city VARCHAR(30) NOT NULL,
	state_province VARCHAR(25),
	country CHAR(3)
);

CREATE TABLE tbl_departments(
	id INT IDENTITY (1,1) PRIMARY KEY,
	name VARCHAR(30) NOT NULL,
	location INT
);

CREATE TABLE tbl_permissions(
	id INT IDENTITY (1,1) PRIMARY KEY,
	name VARCHAR(100) NOT NULL
);

CREATE TABLE tbl_role_permissions (
	id INT IDENTITY (1,1) PRIMARY KEY
	role INT NOT NULL,
	permission INT NOT NULL
);

CREATE TABLE tbl_roles(
	id INT IDENTITY (1,1) PRIMARY KEY,
	name VARCHAR(50) NOT NULL
);

CREATE TABLE tbl_account_roles(
	id INT IDENTITY (1,1) PRIMARY KEY,
	account INT NOT NULL,
	role INT NOT NULL
);

CREATE TABLE tbl_accounts(
	id INT IDENTITY (1,1) PRIMARY KEY,
	username VARCHAR(25),
	password VARCHAR(255) NOT NULL,
	otp INT NOT NULL,
	is_expired bit NOT NULL,
	is_used datetime NOT NULL
);



