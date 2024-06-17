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
CREATE OR ALTER PROCEDURE usp_delete_jobs
    @JobId VARCHAR(10)
AS
BEGIN
    SET NOCOUNT ON;

    -- Check if the Job ID exists in tbl_jobs
    IF NOT EXISTS (SELECT 1 FROM tbl_jobs WHERE id = @JobId)
    BEGIN
        SELECT 'Job ID not found' AS Result;
        RETURN;
    END

    -- Delete from tbl_jobs
    DELETE FROM tbl_jobs
    WHERE id = @JobId;

    SELECT 'Job deleted successfully' AS Result;
END
GO
