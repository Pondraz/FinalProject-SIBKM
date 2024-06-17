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
CREATE OR ALTER PROCEDURE usp_add_region
    @RegionId INT,
    @RegionName VARCHAR(25)
AS
BEGIN
    SET NOCOUNT ON;

    -- Check if the Region ID already exists in tbl_regions
    IF EXISTS (SELECT 1 FROM tbl_regions WHERE id = @RegionId)
    BEGIN
        SELECT 'Region ID already exists' AS Result;
        RETURN;
    END

    -- Insert into tbl_regions
    INSERT INTO tbl_regions (id, name)
    VALUES (@RegionId, @RegionName);

    -- Select the newly inserted region to confirm the correct result
    SELECT *
    FROM tbl_regions
    WHERE id = @RegionId;
END
GO
