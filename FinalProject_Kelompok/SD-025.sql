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
CREATE OR ALTER PROCEDURE usp_add_electronics
    @ElectronicId INT,
    @ElectronicName VARCHAR(50),
    @ElectronicBrand VARCHAR(50),
    @ElectronicModel VARCHAR(100),
    @SerialNum VARCHAR(50),
    @PurchaseDate DATE,
	@Status VARCHAR(20) = 'Available'
AS
BEGIN
    SET NOCOUNT ON;
	SET @Status = 'Available';

    -- Check if the Electronic ID already exists in tbl_electronics
    IF EXISTS (SELECT 1 FROM tbl_electronics WHERE id = @ElectronicId)
    BEGIN
        SELECT 'Electronic ID already exists' AS Result;
        RETURN;
    END

    -- Insert into tbl_electronics
    INSERT INTO tbl_electronics (id, title, brand, model, serial_num, purchase_date,status)
    VALUES (@ElectronicId, @ElectronicName, @ElectronicBrand, @ElectronicModel, @SerialNum, @PurchaseDate,@Status);

    -- Select the newly inserted electronic item to confirm the correct result
    SELECT *
    FROM tbl_electronics
    WHERE id = @ElectronicId;
END
GO
