USE [db_employee]
GO

/****** Object:  Trigger [dbo].[tr_insert_employee]    Script Date: 16/06/2024 00:13:27 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE OR ALTER TRIGGER [dbo].[tr_insert_employee]
ON [dbo].[tbl_employees]
AFTER INSERT
AS
BEGIN
    SET NOCOUNT ON;

    -- Insert into job_histories for each new employee
    INSERT INTO tbl_job_histories (employee,start_date,end_date, status,job,department)
    SELECT
        inserted.id,
		GETDATE(),
		NULL,
		'Active',
		inserted.job,
		inserted.department

    FROM inserted;
END
GO

ALTER TABLE [dbo].[tbl_employees] ENABLE TRIGGER [tr_insert_employee]
GO


