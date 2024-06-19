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
CREATE OR ALTER PROCEDURE usp_edit_electronics
    @ElectronicId INT,
    @ElectronicName VARCHAR(50),
    @ElectronicBrand VARCHAR(50),
    @ElectronicModel VARCHAR(100),
    @SerialNum VARCHAR(50),
    @PurchaseDate DATE,
	@Status VARCHAR(20)
AS
BEGIN
    SET NOCOUNT ON;

    -- Check if the Electronic ID exists in tbl_electronics
    IF NOT EXISTS (SELECT 1 FROM tbl_electronics WHERE id = @ElectronicId)
    BEGIN
        SELECT 'Electronic ID not found' AS Result;
        RETURN;
    END

    -- Update tbl_electronics with the provided values
    UPDATE tbl_electronics
    SET
        title = @ElectronicName,
        brand = @ElectronicBrand,
        model = @ElectronicModel,
        serial_num = @SerialNum,
        purchase_date = @PurchaseDate,
		status = @Status
    WHERE id = @ElectronicId;

    -- Select the updated electronic item to confirm the correct result
    SELECT *
    FROM tbl_electronics
    WHERE id = @ElectronicId;
END
GO
