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
CREATE OR ALTER PROCEDURE usp_add_role
    @RoleId INT,
    @RoleName VARCHAR(100)
AS
BEGIN
    SET NOCOUNT ON;

    -- Check if the Role ID already exists in tbl_roles
    IF EXISTS (SELECT 1 FROM tbl_roles WHERE id = @RoleId)
    BEGIN
        SELECT 'Role ID already exists' AS Result;
        RETURN;
    END

    -- Insert into tbl_roles
    INSERT INTO tbl_roles (id, name)
    VALUES (@RoleId, @RoleName);

    -- Select the newly inserted role to confirm the correct result
    SELECT *
    FROM tbl_roles
    WHERE id = @RoleId;
END
GO
