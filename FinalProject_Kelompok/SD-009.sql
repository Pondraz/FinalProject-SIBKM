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
CREATE PROCEDURE usp_delete_department
    @DepartmentId INT
AS
BEGIN
    SET NOCOUNT ON;

    -- Check if the Department ID exists in tbl_departments
    IF NOT EXISTS (SELECT 1 FROM tbl_departments WHERE id = @DepartmentId)
    BEGIN
        SELECT 'Department ID not found' AS Result;
        RETURN;
    END

    -- Delete from tbl_departments
    DELETE FROM tbl_departments
    WHERE id = @DepartmentId;

    SELECT 'Department deleted successfully' AS Result;
END
GO
