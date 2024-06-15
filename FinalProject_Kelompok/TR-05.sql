USE [db_employee]
GO

/****** Object:  Trigger [dbo].[trg_UpdateStatusOnReturn]    Script Date: 16/06/2024 01:58:06 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE OR ALTER TRIGGER [dbo].[trg_UpdateStatusOnReturn]
ON [dbo].[tbl_loans]
AFTER UPDATE
AS
BEGIN
    SET NOCOUNT ON;

    -- Update the status of the electronic item to 'Available' if it has been returned
    UPDATE tbl_electronics
    SET Status = 'Available'
    WHERE id IN (SELECT electronics_id FROM inserted WHERE return_date IS NOT NULL);

    -- Update the status of the loan to 'Completed' if it has been returned
    UPDATE tbl_loans
    SET Status = 'Completed'
    WHERE id IN (SELECT id FROM inserted WHERE return_date IS NOT NULL);

END
GO

ALTER TABLE [dbo].[tbl_loans] ENABLE TRIGGER [trg_UpdateStatusOnReturn]
GO


