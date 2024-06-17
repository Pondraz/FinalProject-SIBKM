USE [db_employee]
GO

/****** Object:  StoredProcedure [dbo].[usp_register]    Script Date: 16/06/2024 23:55:21 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE OR ALTER   PROCEDURE [dbo].[usp_register]
    @FirstName VARCHAR(50),
    @LastName VARCHAR(50),
	@gender varchar(25),
    @Email VARCHAR(255),
	@phone VARCHAR(25),
	@hiredate date,
	@salary int,
	@manager INT,
	@job Varchar(20),
	@department int,
    @Username VARCHAR(50),
    @Password VARCHAR(255) -- Assuming input password is plain text
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @EmployeeId INT;
	DECLARE @NewOtp VARCHAR(10);
	DECLARE @isExpired bit;
	DECLARE @isUsed DATE;

	SET @isExpired = 0;
	SET @NewOtp = RIGHT(CONVERT(VARCHAR(10), ABS(CHECKSUM(NEWID()))), 5);
	set @hiredate = GETDATE();
	set @isUsed = GETDATE();
    -- Check if the Email already exists in tbl_employees
    IF EXISTS (SELECT 1 FROM tbl_employees WHERE email = @Email)
    BEGIN
        SELECT 'Email already exists' AS Result;
        RETURN;
    END

    -- Check if the Username already exists in tbl_accounts
    IF EXISTS (SELECT 1 FROM tbl_accounts WHERE username = @Username)
    BEGIN
        SELECT 'Username already exists' AS Result;
        RETURN;
    END
	

    -- Insert into tbl_employees
    INSERT INTO tbl_employees (first_name, last_name,gender, email,phone,hire_date,salary,manager,job,department)
    VALUES (@FirstName, @LastName,@gender, @Email,@phone,@hiredate,@salary,@manager,@job,@department);

    -- Get the Employee ID of the newly inserted record
    SET @EmployeeId = SCOPE_IDENTITY();

    -- Insert into tbl_accounts
    INSERT INTO tbl_accounts (id, username, password,otp,is_expired,is_used)
    VALUES (@EmployeeId, @Username, @Password,@NewOtp,@isExpired,@isUsed);

	INSERT INTO tbl_account_roles(account,role)
    VALUES (@EmployeeId,'Employee');

    SELECT 'Employee registered successfully' AS Result;
END
GO


