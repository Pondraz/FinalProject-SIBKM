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
CREATE OR ALTER PROCEDURE usp_edit_country
    @CountryId char(3),
    @CountryName VARCHAR(100),
	@countryRegion INT
AS
BEGIN
    SET NOCOUNT ON;

    -- Check if the Country ID exists in tbl_countries
    IF NOT EXISTS (SELECT 1 FROM tbl_countries WHERE id = @CountryId)
    BEGIN
        SELECT 'Country ID not found' AS Result;
        RETURN;
    END

    -- Update tbl_countries with the provided values
    UPDATE tbl_countries
    SET
        name = @CountryName,
		region = @countryRegion
    WHERE id = @CountryId;

    -- Select the updated country to confirm the correct result
    SELECT *
    FROM tbl_countries
    WHERE id = @CountryId;
END
GO
