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
CREATE OR ALTER  PROCEDURE usp_delete_country
    @CountryId CHAR(3)
AS
BEGIN
    SET NOCOUNT ON;

    -- Check if the Country ID exists in tbl_countries
    IF NOT EXISTS (SELECT 1 FROM tbl_countries WHERE id = @CountryId)
    BEGIN
        SELECT 'Country ID not found' AS Result;
        RETURN;
    END

    -- Delete from tbl_countries
    DELETE FROM tbl_countries
    WHERE id = @CountryId;

    SELECT 'Country deleted successfully' AS Result;
END
GO
