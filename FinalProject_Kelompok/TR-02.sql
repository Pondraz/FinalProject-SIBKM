USE [db_employee]
GO

/****** Object:  Trigger [dbo].[tr_update_employee_job]    Script Date: 16/06/2024 00:51:39 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE OR ALTER TRIGGER [dbo].[tr_update_employee_job]
ON [dbo].[tbl_employees]
AFTER UPDATE
AS
BEGIN
    SET NOCOUNT ON;

    -- Insert into job_histories when job column is updated
    IF UPDATE(job)
    BEGIN
        INSERT INTO tbl_job_histories (employee,start_date,end_date, status,job,department)
        SELECT
        inserted.id,
		GETDATE(),
		NULL,
		'HandOver',
		inserted.job,
		inserted.department
        FROM inserted;
    -- Insert statements for trigger here
	  END
END
GO

ALTER TABLE [dbo].[tbl_employees] ENABLE TRIGGER [tr_update_employee_job]
GO


