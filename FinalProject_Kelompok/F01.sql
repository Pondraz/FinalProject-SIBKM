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
CREATE OR ALTER FUNCTION func_email_format (@Email VARCHAR(50))
RETURNS INT
AS
BEGIN
    DECLARE @Result INT

    -- Basic pattern matching for email
    IF @Email LIKE '%_@__%.__%'
        AND CHARINDEX(' ', @Email) = 0 -- No spaces allowed in email
        AND CHARINDEX('..', @Email) = 0 -- No consecutive dots allowed
        AND LEFT(@Email, 1) NOT LIKE '%[^a-zA-Z0-9]%' -- First character should be alphanumeric
        AND RIGHT(@Email, 1) NOT LIKE '%[^a-zA-Z0-9]%' -- Last character should be alphanumeric
        AND LEN(@Email) - LEN(REPLACE(@Email, '@', '')) = 1 -- Only one '@' symbol
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

