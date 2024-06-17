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
CREATE OR ALTER PROCEDURE usp_add_country
    @CountryId char(3),
    @CountryName VARCHAR(100),
	@countryRegion INT
AS
BEGIN
    SET NOCOUNT ON;

    -- Check if the Country ID already exists in tbl_countries
    IF EXISTS (SELECT 1 FROM tbl_countries WHERE id = @CountryId)
    BEGIN
        SELECT 'Country ID already exists' AS Result;
        RETURN;
    END

    -- Insert into tbl_countries
    INSERT INTO tbl_countries (id, name,region)
    VALUES (@CountryId, @CountryName,@countryRegion);

    -- Select the newly inserted country to confirm the correct result
    SELECT *
    FROM tbl_countries
    WHERE id = @CountryId;
END
GO
