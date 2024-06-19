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
CREATE OR ALTER PROCEDURE usp_return_loan
    @LoanId INT
AS
BEGIN
    SET NOCOUNT ON;

    -- Declare variables to hold the electronic_id and loan_date
    DECLARE @ElectronicId VARCHAR(10), @LoanDate DATE;

    -- Get the electronic_id and loan_date from tbl_loans
    SELECT @ElectronicId = electronics_id,
           @LoanDate = loan_date
    FROM tbl_loans
    WHERE id = @LoanId;

    -- Check if the Loan ID exists in tbl_loans
    IF @ElectronicId IS NULL
    BEGIN
        SELECT 'Loan ID not found' AS Result;
        RETURN;
    END

    -- Update the return_date and status of the loan in tbl_loans
    UPDATE tbl_loans
    SET return_date = GETDATE(),
        status = 'Completed'
    WHERE id = @LoanId;

    -- Update the status of the electronic item to 'Available'
    UPDATE tbl_electronics
    SET status = 'Available'
    WHERE id = @ElectronicId
    AND status = 'Loaned';

    SELECT 'Loan returned successfully' AS Result;
END
GO
