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
	id INT IDENTITY (1,1) PRIMARY KEY,
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

CREATE TABLE tbl_jobs(
	id VARCHAR(10) PRIMARY KEY,
	title VARCHAR(35) NOT NULL,
	min_salary INT,
	max_salary INT
);

CREATE TABLE tbl_job_histories(
	employee INT,
	start_date date,
	end_date date,
	status varchar(10)NOT NULL,
	job VARCHAR(10)NOT NULL,
	department INT
	PRIMARY KEY (employee,start_date)
);


CREATE TABLE tbl_employees (
	id INT PRIMARY KEY,
	first_name VARCHAR(25) NOT NULL,
	last_name VARCHAR(25),
	gender VARCHAR(10) NOT NULL,
	email VARCHAR(25) NOT NULL UNIQUE,
	phone VARCHAR(20),
	hire_date date NOT NULL,
	salary INT,
	manager INT,
	job VARCHAR(10) NOT NULL,
	department INT NOT NULL
);

CREATE TABLE tbl_electronics(
	id INT PRIMARY KEY,
	title VARCHAR(50) NOT NULL,
	brand VARCHAR(50),
	model VARCHAR(50) NOT NULL,
	serial_num VARCHAR(50) NOT NULL,
	purchase_date DATE,
	status VARCHAR(20) DEFAULT 'available'
);

CREATE TABLE tbl_loans(
	id INT PRIMARY KEY,
	employee_id INT NOT NULL,
	electronics_id INT NOT NULL,
	loan_date DATE not null,
	return_date DATE,
	status VARCHAR(30) DEFAULT 'loaned'
);