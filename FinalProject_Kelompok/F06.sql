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
CREATE FUNCTION func_salary (@JobId VARCHAR(10), @Salary INT)
RETURNS INT
AS
BEGIN
    DECLARE @Result INT;
    DECLARE @MinSalary INT;
    DECLARE @MaxSalary INT;

    -- Retrieve the salary range for the given job ID
    SELECT @MinSalary = min_salary, @MaxSalary = max_salary
    FROM tbl_jobs
    WHERE id = @JobId;

    -- Check if the salary is within the range
    IF @Salary >= @MinSalary AND @Salary <= @MaxSalary
    BEGIN
        SET @Result = 1; -- True
    END
    ELSE
    BEGIN
        SET @Result = 2; -- False
    END

    RETURN @Result;

END
GO

