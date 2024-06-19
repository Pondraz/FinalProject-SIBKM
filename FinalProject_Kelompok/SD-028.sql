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
CREATE OR ALTER PROCEDURE usp_add_loan
    @LoanId INT,
    @EmployeeId INT,
    @ElectronicId INT,
    @Status VARCHAR(20) = 'Loaned' -- Default status to 'Loaned'
AS
BEGIN
    SET NOCOUNT ON;

    -- Check if the Loan ID already exists in tbl_loans
    IF EXISTS (SELECT 1 FROM tbl_loans WHERE id = @LoanId)
    BEGIN
        SELECT 'Loan ID already exists' AS Result;
        RETURN;
    END

    -- Check if the Electronic ID exists in tbl_electronics and is available
    IF NOT EXISTS (SELECT 1 FROM tbl_electronics WHERE id = @ElectronicId AND status = 'Available')
    BEGIN
        SELECT 'Electronic item is not available or does not exist' AS Result;
        RETURN;
    END

    -- Insert into tbl_loans
    INSERT INTO tbl_loans (id, employee_id, electronics_id, loan_date, return_date, status)
    VALUES (@LoanId, @EmployeeId, @ElectronicId, GETDATE(),NULL , @Status);

    -- Update the status of the electronic item to 'Loaned'
    UPDATE tbl_electronics
    SET status = 'Loaned'
    WHERE id = @ElectronicId;

    -- Select the newly inserted loan item to confirm the correct result
    SELECT *
    FROM tbl_loans
    WHERE id = @LoanId;
END
GO
