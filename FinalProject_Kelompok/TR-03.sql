USE [db_employee]
GO

/****** Object:  Trigger [dbo].[tr_delete_employee]    Script Date: 16/06/2024 01:03:06 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE OR ALTER TRIGGER [dbo].[tr_delete_employee]
ON [dbo].[tbl_employees]
AFTER DELETE
AS
BEGIN
    SET NOCOUNT ON;

    -- Insert into job_histories for each deleted employee
     INSERT INTO tbl_job_histories (employee,start_date,end_date, status,job,department)
        SELECT
        d.id,
		d.hire_date,
		GETDATE(),
		'RESIGN',
		d.job,
		d.department
        FROM deleted d;

END
GO

ALTER TABLE [dbo].[tbl_employees] ENABLE TRIGGER [tr_delete_employee]
GO


