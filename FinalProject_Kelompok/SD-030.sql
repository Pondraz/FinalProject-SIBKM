USE [db_employee]
GO

/****** Object:  StoredProcedure [dbo].[usp_delete_loan]    Script Date: 19/06/2024 23:30:21 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE OR ALTER   PROCEDURE [dbo].[usp_delete_loan]
    @LoanId INT
AS
BEGIN
    SET NOCOUNT ON;

     DECLARE @ElectronicId VARCHAR(10), @Status VARCHAR(20);

    -- Get the electronic_id and status from tbl_loans
    SELECT @ElectronicId = electronics_id
    FROM tbl_loans
    WHERE id = @LoanId;

    -- Check if the Loan ID exists in tbl_loans
    IF @ElectronicId IS NULL
    BEGIN
        SELECT 'Loan ID not found' AS Result;
        RETURN;
    END

    -- Delete the loan from tbl_loans
    DELETE FROM tbl_loans WHERE id = @LoanId;

    -- Update the status of the electronic item to 'Available'
    UPDATE tbl_electronics
    SET status = 'Available'
    WHERE id = @ElectronicId
    

    SELECT 'Loan deleted successfully' AS Result;
END
GO


