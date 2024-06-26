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
CREATE OR ALTER PROCEDURE usp_add_jobs
    @JobId VARCHAR(10),
    @JobTitle VARCHAR(100),
    @minSalary int,
	@maxSalary int
AS
BEGIN
    SET NOCOUNT ON;

    -- Check if the Job ID already exists in tbl_jobs
    IF EXISTS (SELECT 1 FROM tbl_jobs WHERE id = @JobId)
    BEGIN
        SELECT 'Job ID already exists' AS Result;
        RETURN;
    END

    -- Insert into tbl_jobs
    INSERT INTO tbl_jobs (id, title, min_salary,max_salary)
    VALUES (@JobId, @JobTitle, @minSalary,@maxSalary);

    SELECT 'Job added successfully' AS Result;
END
GO
