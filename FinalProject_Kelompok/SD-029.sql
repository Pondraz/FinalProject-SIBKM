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
USE db_employee
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE OR ALTER PROCEDURE usp_edit_loan
    @LoanId VARCHAR(10),
    @EmployeeId VARCHAR(10),
    @ElectronicId VARCHAR(10),
    @LoanDate DATE,
    @ReturnDate DATE,
    @Status VARCHAR(20)
AS
BEGIN
    SET NOCOUNT ON;

    -- Check if any of the parameters are null
    IF @LoanId IS NULL OR @EmployeeId IS NULL OR @ElectronicId IS NULL OR @LoanDate IS NULL OR @Status IS NULL
    BEGIN
        RAISERROR('All parameters must be provided and cannot be NULL.', 16, 1);
        RETURN;
    END

    -- Check if the Loan ID exists in tbl_loans
    IF NOT EXISTS (SELECT 1 FROM tbl_loans WHERE id = @LoanId)
    BEGIN
        SELECT 'Loan ID not found' AS Result;
        RETURN;
    END

    -- Update tbl_loans with provided values
    UPDATE tbl_loans
    SET 
        employee_id = @EmployeeId,
        electronics_id = @ElectronicId,
        loan_date = @LoanDate,
        return_date = @ReturnDate,
        status = @Status
    WHERE id = @LoanId;

    -- If ElectronicId is updated, ensure to update the status of the old and new electronic items
    IF @ElectronicId <> (SELECT electronics_id FROM tbl_loans WHERE id = @LoanId)
    BEGIN
        -- Set status of old electronic item to 'Available' if it's not already loaned
        UPDATE tbl_electronics
        SET status = 'Available'
        WHERE id = (SELECT electronics_id FROM tbl_loans WHERE id = @LoanId)
        AND NOT EXISTS (
            SELECT 1 FROM tbl_loans WHERE electronics_id = (SELECT id FROM tbl_loans WHERE id = @LoanId) AND status = 'Loaned'
        );

        -- Set status of new electronic item to 'Loaned'
        UPDATE tbl_electronics
        SET status = 'Loaned'
        WHERE id = @ElectronicId;
    END

    -- Select the updated loan item to confirm the correct result
    SELECT *
    FROM tbl_loans
    WHERE id = @LoanId;
END
GO
