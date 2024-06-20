--CREATE DATABASE db_employee

USE db_employee
GO


--CREATE TABLE tbl_regions(
--	id INT PRIMARY KEY,
--	name VARCHAR(25) NOT NULL
--);

--CREATE TABLE tbl_countries(
--	id CHAR(3) PRIMARY KEY,
--	name VARCHAR(40) NOT NULL,
--	region INT 
--);

--CREATE TABLE tbl_locations(
--	id INT PRIMARY KEY,
--	street_address VARCHAR(40),
--	postal_code VARCHAR(12),
--	city VARCHAR(30) NOT NULL,
--	state_province VARCHAR(25),
--	country CHAR(3)
--);

--CREATE TABLE tbl_departments(
--	id INT PRIMARY KEY,
--	name VARCHAR(30) NOT NULL,
--	location INT
--);

--CREATE TABLE tbl_permissions(
--	id INT PRIMARY KEY,
--	name VARCHAR(100) NOT NULL
--);

--CREATE TABLE tbl_role_permissions (
--	id INT PRIMARY KEY,
--	role INT NOT NULL,
--	permission INT NOT NULL
--);

--CREATE TABLE tbl_roles(
--	id INT PRIMARY KEY,
--	name VARCHAR(50) NOT NULL
--);

--CREATE TABLE tbl_account_roles(
--	id INT PRIMARY KEY,
--	account INT NOT NULL,
--	role INT NOT NULL
--);

--CREATE TABLE tbl_accounts(
--	id INT PRIMARY KEY,
--	username VARCHAR(25),
--	password VARCHAR(255) NOT NULL,
--	otp INT NOT NULL,
--	is_expired bit NOT NULL,
--	is_used datetime NOT NULL
--);

--CREATE TABLE tbl_jobs(
--	id VARCHAR(10) PRIMARY KEY,
--	title VARCHAR(35) NOT NULL,
--	min_salary INT,
--	max_salary INT
--);

--CREATE TABLE tbl_job_histories(
--	employee INT,
--	start_date date,
--	end_date date,
--	status varchar(10)NOT NULL,
--	job VARCHAR(10)NOT NULL,
--	department INT
--	PRIMARY KEY (employee,start_date)
--);


--CREATE TABLE tbl_employees (
--	id INT PRIMARY KEY,
--	first_name VARCHAR(25) NOT NULL,
--	last_name VARCHAR(25),
--	gender VARCHAR(10) NOT NULL,
--	email VARCHAR(50) NOT NULL UNIQUE,
--	phone VARCHAR(20),
--	hire_date date NOT NULL,
--	salary INT,
--	manager INT,
--	job VARCHAR(10) NOT NULL,
--	department INT NOT NULL
--);

--CREATE TABLE tbl_electronics(
--	id INT PRIMARY KEY,
--	title VARCHAR(50) NOT NULL,
--	brand VARCHAR(50),
--	model VARCHAR(50) NOT NULL,
--	serial_num VARCHAR(50) NOT NULL,
--	purchase_date DATE,
--	status VARCHAR(20) DEFAULT 'available'
--);

--CREATE TABLE tbl_loans(
--	id INT PRIMARY KEY,
--	employee_id INT NOT NULL,
--	electronics_id INT NOT NULL,
--	loan_date DATE not null,
--	return_date DATE,
--	status VARCHAR(30) DEFAULT 'loaned'
--);

CREATE TABLE [dbo].[tbl_accounts](
	[id] [int] NOT NULL,
	[username] [varchar](25) NULL,
	[password] [varchar](255) NOT NULL,
	[otp] [int] NOT NULL,
	[is_expired] [bit] NOT NULL,
	[is_used] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[tbl_accounts]  WITH CHECK ADD  CONSTRAINT [FK_tbl_accounts_tbl_employees] FOREIGN KEY([id])
REFERENCES [dbo].[tbl_employees] ([id])
GO

ALTER TABLE [dbo].[tbl_accounts] CHECK CONSTRAINT [FK_tbl_accounts_tbl_employees]
GO

CREATE TABLE [dbo].[tbl_account_roles](
	[id] [int] NOT NULL,
	[account] [int] NOT NULL,
	[role] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[tbl_account_roles]  WITH CHECK ADD  CONSTRAINT [FK_tbl_account_roles_tbl_accounts] FOREIGN KEY([role])
REFERENCES [dbo].[tbl_roles] ([id])
GO

ALTER TABLE [dbo].[tbl_account_roles] CHECK CONSTRAINT [FK_tbl_account_roles_tbl_accounts]
GO

ALTER TABLE [dbo].[tbl_account_roles]  WITH CHECK ADD  CONSTRAINT [FK_tbl_account_roles_tbl_accounts1] FOREIGN KEY([account])
REFERENCES [dbo].[tbl_accounts] ([id])
GO

ALTER TABLE [dbo].[tbl_account_roles] CHECK CONSTRAINT [FK_tbl_account_roles_tbl_accounts1]
GO

CREATE TABLE [dbo].[tbl_countries](
	[id] [char](3) NOT NULL,
	[name] [varchar](40) NOT NULL,
	[region] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[tbl_countries]  WITH CHECK ADD  CONSTRAINT [FK_tbl_countries_tbl_regions] FOREIGN KEY([region])
REFERENCES [dbo].[tbl_regions] ([id])
GO

ALTER TABLE [dbo].[tbl_countries] CHECK CONSTRAINT [FK_tbl_countries_tbl_regions]
GO

CREATE TABLE [dbo].[tbl_departments](
	[id] [int] NOT NULL,
	[name] [varchar](30) NOT NULL,
	[location] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[tbl_departments]  WITH CHECK ADD  CONSTRAINT [FK_tbl_departments_tbl_locations1] FOREIGN KEY([location])
REFERENCES [dbo].[tbl_locations] ([id])
GO

ALTER TABLE [dbo].[tbl_departments] CHECK CONSTRAINT [FK_tbl_departments_tbl_locations1]
GO

CREATE TABLE [dbo].[tbl_employees](
	[id] [int] NOT NULL,
	[first_name] [varchar](25) NOT NULL,
	[last_name] [varchar](25) NULL,
	[gender] [varchar](10) NOT NULL,
	[email] [varchar](50) NOT NULL,
	[phone] [varchar](20) NULL,
	[hire_date] [date] NOT NULL,
	[salary] [int] NULL,
	[manager] [int] NULL,
	[job] [varchar](10) NOT NULL,
	[department] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[tbl_employees]  WITH CHECK ADD  CONSTRAINT [FK_tbl_employees_tbl_departments] FOREIGN KEY([department])
REFERENCES [dbo].[tbl_departments] ([id])
GO

ALTER TABLE [dbo].[tbl_employees] CHECK CONSTRAINT [FK_tbl_employees_tbl_departments]
GO

ALTER TABLE [dbo].[tbl_employees]  WITH CHECK ADD  CONSTRAINT [FK_tbl_employees_tbl_employees] FOREIGN KEY([manager])
REFERENCES [dbo].[tbl_employees] ([id])
GO

ALTER TABLE [dbo].[tbl_employees] CHECK CONSTRAINT [FK_tbl_employees_tbl_employees]
GO

ALTER TABLE [dbo].[tbl_employees]  WITH CHECK ADD  CONSTRAINT [FK_tbl_employees_tbl_jobs] FOREIGN KEY([job])
REFERENCES [dbo].[tbl_jobs] ([id])
GO

ALTER TABLE [dbo].[tbl_employees] CHECK CONSTRAINT [FK_tbl_employees_tbl_jobs]
GO

CREATE TABLE [dbo].[tbl_electronics](
	[id] [int] NOT NULL,
	[title] [varchar](50) NOT NULL,
	[brand] [varchar](50) NULL,
	[model] [varchar](50) NOT NULL,
	[serial_num] [varchar](50) NOT NULL,
	[purchase_date] [date] NULL,
	[status] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[tbl_electronics] ADD  DEFAULT ('available') FOR [status]
GO

CREATE TABLE [dbo].[tbl_jobs](
	[id] [varchar](10) NOT NULL,
	[title] [varchar](35) NOT NULL,
	[min_salary] [int] NULL,
	[max_salary] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[tbl_job_histories](
	[employee] [int] NOT NULL,
	[start_date] [date] NOT NULL,
	[end_date] [date] NULL,
	[status] [varchar](10) NOT NULL,
	[job] [varchar](10) NOT NULL,
	[department] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[employee] ASC,
	[start_date] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[tbl_job_histories]  WITH CHECK ADD  CONSTRAINT [FK_tbl_job_histories_tbl_departments] FOREIGN KEY([department])
REFERENCES [dbo].[tbl_departments] ([id])
GO

ALTER TABLE [dbo].[tbl_job_histories] CHECK CONSTRAINT [FK_tbl_job_histories_tbl_departments]
GO

ALTER TABLE [dbo].[tbl_job_histories]  WITH CHECK ADD  CONSTRAINT [FK_tbl_job_histories_tbl_employees] FOREIGN KEY([employee])
REFERENCES [dbo].[tbl_employees] ([id])
GO

ALTER TABLE [dbo].[tbl_job_histories] CHECK CONSTRAINT [FK_tbl_job_histories_tbl_employees]
GO

ALTER TABLE [dbo].[tbl_job_histories]  WITH CHECK ADD  CONSTRAINT [FK_tbl_job_histories_tbl_jobs] FOREIGN KEY([job])
REFERENCES [dbo].[tbl_jobs] ([id])
GO

ALTER TABLE [dbo].[tbl_job_histories] CHECK CONSTRAINT [FK_tbl_job_histories_tbl_jobs]
GO

CREATE TABLE [dbo].[tbl_locations](
	[id] [int] NOT NULL,
	[street_address] [varchar](40) NULL,
	[postal_code] [varchar](12) NULL,
	[city] [varchar](30) NOT NULL,
	[state_province] [varchar](25) NULL,
	[country] [char](3) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[tbl_locations]  WITH CHECK ADD  CONSTRAINT [FK_tbl_locations_tbl_countries] FOREIGN KEY([country])
REFERENCES [dbo].[tbl_countries] ([id])
GO

ALTER TABLE [dbo].[tbl_locations] CHECK CONSTRAINT [FK_tbl_locations_tbl_countries]
GO

CREATE TABLE [dbo].[tbl_loans](
	[id] [int] NOT NULL,
	[employee_id] [int] NOT NULL,
	[electronics_id] [int] NOT NULL,
	[loan_date] [date] NOT NULL,
	[return_date] [date] NULL,
	[status] [varchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[tbl_loans] ADD  DEFAULT ('loaned') FOR [status]
GO

ALTER TABLE [dbo].[tbl_loans]  WITH CHECK ADD  CONSTRAINT [FK_tbl_loans_tbl_electronics] FOREIGN KEY([electronics_id])
REFERENCES [dbo].[tbl_electronics] ([id])
GO

ALTER TABLE [dbo].[tbl_loans] CHECK CONSTRAINT [FK_tbl_loans_tbl_electronics]
GO

ALTER TABLE [dbo].[tbl_loans]  WITH CHECK ADD  CONSTRAINT [FK_tbl_loans_tbl_employees] FOREIGN KEY([employee_id])
REFERENCES [dbo].[tbl_employees] ([id])
GO

ALTER TABLE [dbo].[tbl_loans] CHECK CONSTRAINT [FK_tbl_loans_tbl_employees]
GO

CREATE TABLE [dbo].[tbl_permissions](
	[id] [int] NOT NULL,
	[name] [varchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[tbl_regions](
	[id] [int] NOT NULL,
	[name] [varchar](25) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[tbl_role_permissions](
	[id] [int] NOT NULL,
	[role] [int] NOT NULL,
	[permission] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[tbl_role_permissions]  WITH CHECK ADD  CONSTRAINT [FK_tbl_role_permissions_tbl_permissions] FOREIGN KEY([permission])
REFERENCES [dbo].[tbl_permissions] ([id])
GO

ALTER TABLE [dbo].[tbl_role_permissions] CHECK CONSTRAINT [FK_tbl_role_permissions_tbl_permissions]
GO

ALTER TABLE [dbo].[tbl_role_permissions]  WITH CHECK ADD  CONSTRAINT [FK_tbl_role_permissions_tbl_roles] FOREIGN KEY([role])
REFERENCES [dbo].[tbl_roles] ([id])
GO

ALTER TABLE [dbo].[tbl_role_permissions] CHECK CONSTRAINT [FK_tbl_role_permissions_tbl_roles]
GO

CREATE TABLE [dbo].[tbl_roles](
	[id] [int] NOT NULL,
	[name] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

