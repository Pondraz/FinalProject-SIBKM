CREATE VIEW [dbo].[vw_employee_details]
AS
SELECT dbo.tbl_employees.*
FROM     dbo.tbl_employees
GO

CREATE VIEW [dbo].[vw_jobs_details]
AS
SELECT dbo.tbl_jobs.*
FROM     dbo.tbl_jobs
GO

CREATE VIEW [dbo].[vw_deparment_details]
AS
SELECT dbo.tbl_departments.*
FROM     dbo.tbl_departments
GO

CREATE VIEW [dbo].[vw_location_details]
AS
SELECT dbo.tbl_locations.*
FROM     dbo.tbl_locations
GO

CREATE VIEW [dbo].[wv_country_details]
AS
SELECT dbo.tbl_countries.*
FROM     dbo.tbl_countries
GO

CREATE VIEW [dbo].[vw_region_details]
AS
SELECT dbo.tbl_regions.*
FROM     dbo.tbl_regions
GO

CREATE VIEW [dbo].[vw_role_details]
AS
SELECT dbo.tbl_roles.*
FROM     dbo.tbl_roles
GO

CREATE VIEW [dbo].[vw_permission_details]
AS
SELECT dbo.tbl_permissions.*
FROM     dbo.tbl_permissions
GO

CREATE VIEW [dbo].[vw_electronic_details]
AS
SELECT dbo.tbl_electronics.*
FROM     dbo.tbl_electronics
GO

CREATE VIEW [dbo].[vw_loan_details]
AS
SELECT dbo.tbl_loans.*
FROM     dbo.tbl_loans
GO