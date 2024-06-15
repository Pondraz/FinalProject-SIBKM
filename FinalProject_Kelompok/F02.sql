-- ================================================
-- Template generated from Template Explorer using:
-- Create Scalar Function (New Menu).SQL
--
-- Use the Specify Values for Template Parameters 
-- command (Ctrl-Shift-M) to fill in the parameter 
-- values below.
--
-- This block of comments will not be included in
-- the definition of the function.
-- ================================================
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date, ,>
-- Description:	<Description, ,>
-- =============================================
CREATE OR ALTER FUNCTION func_password_policy (@Password VARCHAR(255))
RETURNS INT
AS
BEGIN
    DECLARE @Result INT

    -- Check for minimum length of 8 characters
    IF LEN(@Password) >= 8
        -- Check for at least one uppercase letter
        AND PATINDEX('%[A-Z]%', @Password) > 0
        -- Check for at least one lowercase letter
        AND PATINDEX('%[a-z]%', @Password) > 0
        -- Check for at least one number
        AND PATINDEX('%[0-9]%', @Password) > 0
        -- Check for at least one symbol
        AND PATINDEX('%[^A-Za-z0-9]%', @Password) > 0
    BEGIN
        SET @Result = 1 -- True
    END
    ELSE
    BEGIN
        SET @Result = 2 -- False
    END

    RETURN @Result

END
GO


