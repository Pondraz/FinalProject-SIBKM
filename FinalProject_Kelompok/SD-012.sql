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
-- Author:		Dimas Narendra Putra
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE usp_delete_location
    @LocationId INT
AS
BEGIN
    SET NOCOUNT ON;

    -- Check if the Location ID exists in tbl_locations
    IF NOT EXISTS (SELECT 1 FROM tbl_locations WHERE id = @LocationId)
    BEGIN
        SELECT 'Location ID not found' AS Result;
        RETURN;
    END

    -- Delete from tbl_locations
    DELETE FROM tbl_locations
    WHERE id = @LocationId;

    SELECT 'Location deleted successfully' AS Result;
END
GO
