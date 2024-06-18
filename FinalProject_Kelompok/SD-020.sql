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
CREATE OR ALTER PROCEDURE usp_edit_role
    @RoleId INT,
    @RoleName VARCHAR(100)
AS
BEGIN
    SET NOCOUNT ON;

    -- Check if the Role ID exists in tbl_roles
    IF NOT EXISTS (SELECT 1 FROM tbl_roles WHERE id = @RoleId)
    BEGIN
        SELECT 'Role ID not found' AS Result;
        RETURN;
    END

    -- Update tbl_roles with the provided values
    UPDATE tbl_roles
    SET
        name = @RoleName
    WHERE id = @RoleId;

    -- Select the updated role to confirm the correct result
    SELECT *
    FROM tbl_roles
    WHERE id = @RoleId;
END
GO
