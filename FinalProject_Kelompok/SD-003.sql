USE [db_employee]
GO

/****** Object:  StoredProcedure [dbo].[usp_generate_otp]    Script Date: 16/06/2024 22:10:49 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE OR ALTER   PROCEDURE [dbo].[usp_generate_otp]
    @Email VARCHAR(255)
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @EmployeeId INT;
    DECLARE @NewOtp VARCHAR(10);

    -- Check if the Email exists in tbl_employees and get the employee_id
    SELECT @EmployeeId = id
    FROM tbl_employees
    WHERE email = @Email;

    IF @EmployeeId IS NULL
    BEGIN
        SELECT 'Invalid email' AS Result;
        RETURN;
    END

    -- Generate a new OTP (for simplicity, using a random 6-digit number)
    SET @NewOtp = RIGHT(CONVERT(VARCHAR(10), ABS(CHECKSUM(NEWID()))), 5);

    -- Update the OTP in tbl_accounts
    UPDATE tbl_accounts
    SET otp = @NewOtp
    WHERE id = @EmployeeId;

    -- Return the new OTP
    SELECT 'OTP generated successfully. Your OTP is ' + @NewOtp AS Result;
END
GO


