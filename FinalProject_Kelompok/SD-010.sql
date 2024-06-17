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
CREATE OR ALTER PROCEDURE usp_add_location
    @LocationId INT,
	@Address VARCHAR(255),
	@PostalCode VARCHAR(20),
	@City VARCHAR(100),
	@state VARCHAR(30),
    @country CHAR(3)
    
    
    
AS
BEGIN
    SET NOCOUNT ON;

    -- Check if the Location ID already exists in tbl_locations
    IF EXISTS (SELECT 1 FROM tbl_locations WHERE id = @LocationId)
    BEGIN
        SELECT 'Location ID already exists' AS Result;
        RETURN;
    END

    -- Insert into tbl_locations
    INSERT INTO tbl_locations (id, street_address, postal_code, city,state_province, country)
    VALUES (@LocationId, @Address, @PostalCode, @City,@state, @country);

    -- Select the newly inserted location to confirm the correct result
    SELECT *
    FROM tbl_locations
    WHERE id = @LocationId;
END
GO
