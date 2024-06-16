USE [db_employee]
GO
/****** Object:  StoredProcedure [dbo].[usp_forgot_password]    Script Date: 16/06/2024 19:59:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER   PROCEDURE [dbo].[usp_forgot_password]
    @Email VARCHAR(255),
    @NewPassword VARCHAR(255),
    @ConfirmPassword VARCHAR(255),
    @Otp VARCHAR(10)
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @EmployeeId INT;
    DECLARE @StoredOtp VARCHAR(10);
	DECLARE @NewOtp VARCHAR(10);

	SET @NewOtp = RIGHT(CONVERT(VARCHAR(10), ABS(CHECKSUM(NEWID()))), 5);
    -- Validate the New Password and Confirm Password
    IF @NewPassword != @ConfirmPassword
    BEGIN
        SELECT 'New password and confirm password do not match' AS Result;
        RETURN;
    END

    -- Check if the Email exists in tbl_employees and get the employee_id
    SELECT @EmployeeId = id
    FROM tbl_employees
    WHERE email = @Email;

    IF @EmployeeId IS NULL
    BEGIN
        SELECT 'Invalid email' AS Result;
        RETURN;
    END

    -- Retrieve the OTP from tbl_accounts
    SELECT @StoredOtp = otp
    FROM tbl_accounts
    WHERE id = @EmployeeId;

    -- Validate the OTP
    IF @StoredOtp IS NULL OR @StoredOtp != @Otp
    BEGIN
        SELECT 'Invalid OTP' AS Result;
        RETURN;
    END

    -- Update the password in tbl_accounts
    UPDATE tbl_accounts
    SET password = @NewPassword,otp = @NewOtp -- Clear the OTP after use
    WHERE id = @EmployeeId;

    SELECT 'Password reset successful' AS Result;
END
