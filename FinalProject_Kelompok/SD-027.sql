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
CREATE OR ALTER PROCEDURE usp_delete_electronics
    @ElectronicId VARCHAR(10)
AS
BEGIN
    SET NOCOUNT ON;

    -- Check if the Electronic ID exists in tbl_electronics
    IF NOT EXISTS (SELECT 1 FROM tbl_electronics WHERE id = @ElectronicId)
    BEGIN
        SELECT 'Electronic ID not found' AS Result;
        RETURN;
    END

    -- Delete from tbl_electronics
    DELETE FROM tbl_electronics
    WHERE id = @ElectronicId;

    SELECT 'Electronic item deleted successfully' AS Result;
END
GO
