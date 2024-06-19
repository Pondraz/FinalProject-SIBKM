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
CREATE OR ALTER PROCEDURE usp_delete_loan
    @LoanId INT
AS
BEGIN
    SET NOCOUNT ON;

    -- Check if the Loan ID exists in tbl_loans
    IF NOT EXISTS (SELECT 1 FROM tbl_loans WHERE id = @LoanId)
    BEGIN
        SELECT 'Loan ID not found' AS Result;
        RETURN;
    END

    -- Delete the loan from tbl_loans
    DELETE FROM tbl_loans WHERE id = @LoanId;

    -- Update the status of the electronic item to 'Available'
    UPDATE tbl_electronics
    SET status = 'Available'
    WHERE id = (SELECT electronics_id FROM tbl_loans);

    SELECT 'Loan deleted successfully' AS Result;
END
GO
