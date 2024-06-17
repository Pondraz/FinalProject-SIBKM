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
CREATE OR ALTER PROCEDURE usp_delete_employee
    @EmployeeId INT
AS
BEGIN
    SET NOCOUNT ON;

    -- Check if the Employee ID exists in tbl_employees
    IF NOT EXISTS (SELECT 1 FROM tbl_employees WHERE id = @EmployeeId)
    BEGIN
        SELECT 'Employee ID not found' AS Result;
        RETURN;
    END

    -- Delete from tbl_accounts first to handle foreign key constraints
    DELETE FROM tbl_accounts
    WHERE id = @EmployeeId;

    -- Delete from tbl_employees
    DELETE FROM tbl_employees
    WHERE id = @EmployeeId;

    SELECT 'Employee data deleted successfully' AS Result;
END
GO
