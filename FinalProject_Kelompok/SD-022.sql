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
CREATE or ALTER PROCEDURE usp_add_permission
    @PermissionId INT,
    @PermissionName VARCHAR(100)
AS
BEGIN
    SET NOCOUNT ON;

    -- Check if the Permission ID already exists in tbl_permissions
    IF EXISTS (SELECT 1 FROM tbl_permissions WHERE id = @PermissionId)
    BEGIN
        SELECT 'Permission ID already exists' AS Result;
        RETURN;
    END

    -- Insert into tbl_permissions
    INSERT INTO tbl_permissions (id, name)
    VALUES (@PermissionId, @PermissionName);

    -- Select the newly inserted permission to confirm the correct result
    SELECT *
    FROM tbl_permissions
    WHERE id = @PermissionId;
END
GO
