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
CREATE OR ALTER PROCEDURE usp_add_department
    @DepartmentId INT,
    @DepartmentName VARCHAR(30),
	@DepartmentLocation INT
AS
BEGIN
    SET NOCOUNT ON;

    -- Check if the Department ID already exists in tbl_departments
    IF EXISTS (SELECT 1 FROM tbl_departments WHERE id = @DepartmentId)
    BEGIN
        SELECT 'Department ID already exists' AS Result;
        RETURN;
    END

    -- Insert into tbl_departments
    INSERT INTO tbl_departments (id, name,location)
    VALUES (@DepartmentId, @DepartmentName,@DepartmentLocation);

    -- Select the newly inserted department to confirm the correct result
    SELECT *
    FROM tbl_departments
    WHERE id = @DepartmentId;
END
GO
