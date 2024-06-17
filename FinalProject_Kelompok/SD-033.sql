-- ================================================
-- Template generated from Template Explorer using:
-- Create Procedure (New Menu).SQL
--
-- Use the Specify Values for Template Parameters 
-- command (Ctrl-Shift-M) to fill in the parameter 
-- values below.
--
-- This block of comments will not be included in
-- the definition of the procedure.
-- ================================================
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE OR ALTER PROCEDURE usp_edit_employee
    @EmployeeID INT,
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
    @Password VARCHAR(255) -- Optionally update username
AS
BEGIN
    SET NOCOUNT ON;

    -- Check if the Employee ID exists in tbl_employees
    IF NOT EXISTS (SELECT 1 FROM tbl_employees WHERE id = @EmployeeId)
    BEGIN
        SELECT 'Employee ID not found' AS Result;
        RETURN;
    END

    -- Update tbl_employees
    UPDATE tbl_employees
    SET
        first_name = @FirstName,
        last_name = @LastName,
		gender= @gender, 
		email=@Email,
		phone=@phone,
		hire_date=@hiredate,
		salary=@salary,
		manager=@manager,
		job=@job,
		department=department
    WHERE id = @EmployeeId;

    -- Optionally update username in tbl_accounts
    IF @Username IS NOT NULL
    BEGIN
        -- Check if the Username already exists in tbl_accounts for a different employee
        IF EXISTS (SELECT 1 FROM tbl_accounts WHERE username = @Username AND id <> @EmployeeId)
        BEGIN
            SELECT 'Username already exists for another employee' AS Result;
            RETURN;
        END

        UPDATE tbl_accounts
        SET username = @Username
        WHERE id = @EmployeeId;
    END

    SELECT 'Employee data updated successfully' AS Result;
END
GO
