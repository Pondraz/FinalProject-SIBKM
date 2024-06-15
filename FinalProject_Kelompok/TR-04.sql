USE [db_employee]
GO

/****** Object:  Trigger [dbo].[trg_UpdateElectronicsStatusOnLoan]    Script Date: 16/06/2024 01:45:13 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE OR ALTER TRIGGER [dbo].[trg_UpdateElectronicsStatusOnLoan]
ON [dbo].[tbl_loans]
AFTER INSERT
AS
BEGIN
    SET NOCOUNT ON;

    UPDATE tbl_electronics
    SET Status = 'Loaned'
    WHERE id IN (SELECT electronics_id FROM inserted);

END
GO

ALTER TABLE [dbo].[tbl_loans] ENABLE TRIGGER [trg_UpdateElectronicsStatusOnLoan]
GO


