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
CREATE OR ALTER PROCEDURE usp_login
    @Email VARCHAR(255),
    @Username VARCHAR(50),
    @Password VARCHAR(255) -- Assume input password is plain text
AS
BEGIN
    SET NOCOUNT ON;

     DECLARE @StoredPassword VARCHAR(255);

    -- Retrieve the stored password hash based on email and username
    SELECT @StoredPassword = a.password
    FROM tbl_employees e
    INNER JOIN tbl_accounts a ON e.id = a.id
    WHERE e.email = @Email AND a.username = @Username;

    -- Validate the password
    IF @StoredPassword IS NOT NULL
    BEGIN
        IF HASHBYTES('SHA2_256', @Password) = @StoredPassword
        BEGIN
            -- Login successful
            SELECT 'Login successful' AS Result;
        END
        ELSE
        BEGIN
            -- Password does not match
            SELECT 'Invalid password' AS Result;
        END
    END
    ELSE
    BEGIN
        -- Email or username does not exist
        SELECT 'Invalid email or username' AS Result;
    END
END
GO
