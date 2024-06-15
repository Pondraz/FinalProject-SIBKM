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
CREATE OR ALTER FUNCTION func_password_match (@NewPassword VARCHAR(255), @ConfirmPassword VARCHAR(255))
RETURNS INT
AS
BEGIN
    DECLARE @Result INT

    -- Check if the New Password and Confirm Password are the same
    IF @NewPassword = @ConfirmPassword
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

