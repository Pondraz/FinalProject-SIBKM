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
CREATE OR ALTER PROCEDURE usp_edit_jobs
    @JobId VARCHAR(10),
    @JobTitle VARCHAR(35),
    @minSalary int,
	@maxSalary int
AS
BEGIN
    SET NOCOUNT ON;

    -- Check if the Job ID exists in tbl_jobs
    IF NOT EXISTS (SELECT 1 FROM tbl_jobs WHERE id = @JobId)
    BEGIN
        SELECT 'Job ID not found' AS Result;
        RETURN;
    END

    -- Update tbl_jobs with the provided values
    UPDATE tbl_jobs
    SET
        title = @JobTitle,
        min_salary = @minSalary,
		max_salary = @maxSalary
    WHERE id = @JobId;

    -- Select the updated job to confirm the correct result
    SELECT *
    FROM tbl_jobs
    WHERE id = @JobId;
END
GO
