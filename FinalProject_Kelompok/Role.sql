USE [db_employee]
GO
CREATE ROLE [superAdmin] AUTHORIZATION [dbo]
GO

CREATE ROLE [admin] AUTHORIZATION [dbo]
GO

CREATE ROLE [manager] AUTHORIZATION [dbo]
GO

CREATE ROLE [employee] AUTHORIZATION [dbo]
GO

use [db_employee]
GO
GRANT ALTER ON [dbo].[usp_add_country] TO [admin]
GO
use [db_employee]
GO
GRANT CONTROL ON [dbo].[usp_add_country] TO [admin]
GO
use [db_employee]
GO
GRANT EXECUTE ON [dbo].[usp_add_country] TO [admin]
GO
use [db_employee]
GO
GRANT VIEW DEFINITION ON [dbo].[usp_add_country] TO [admin]
GO

use [db_employee]
GO
GRANT ALTER ON [dbo].[usp_add_department] TO [admin]
GO
use [db_employee]
GO
GRANT CONTROL ON [dbo].[usp_add_department] TO [admin]
GO
use [db_employee]
GO
GRANT EXECUTE ON [dbo].[usp_add_department] TO [admin]
GO
use [db_employee]
GO
GRANT VIEW DEFINITION ON [dbo].[usp_add_department] TO [admin]
GO

use [db_employee]
GO
GRANT ALTER ON [dbo].[usp_add_electronics] TO [admin]
GO
use [db_employee]
GO
GRANT CONTROL ON [dbo].[usp_add_electronics] TO [admin]
GO
use [db_employee]
GO
GRANT EXECUTE ON [dbo].[usp_add_electronics] TO [admin]
GO
use [db_employee]
GO
GRANT VIEW DEFINITION ON [dbo].[usp_add_electronics] TO [admin]
GO

use [db_employee]
GO
GRANT ALTER ON [dbo].[usp_add_jobs] TO [admin]
GO
use [db_employee]
GO
GRANT CONTROL ON [dbo].[usp_add_jobs] TO [admin]
GO
use [db_employee]
GO
GRANT EXECUTE ON [dbo].[usp_add_jobs] TO [admin]
GO
use [db_employee]
GO

use [db_employee]
GO
GRANT ALTER ON [dbo].[usp_add_loan] TO [admin]
GO
use [db_employee]
GO
GRANT CONTROL ON [dbo].[usp_add_loan] TO [admin]
GO
use [db_employee]
GO
GRANT EXECUTE ON [dbo].[usp_add_loan] TO [admin]
GO
use [db_employee]
GO
GRANT VIEW DEFINITION ON [dbo].[usp_add_loan] TO [admin]
GO

use [db_employee]
GO
GRANT ALTER ON [dbo].[usp_add_location] TO [admin]
GO
use [db_employee]
GO
GRANT CONTROL ON [dbo].[usp_add_location] TO [admin]
GO
use [db_employee]
GO
GRANT EXECUTE ON [dbo].[usp_add_location] TO [admin]
GO
use [db_employee]
GO
GRANT VIEW DEFINITION ON [dbo].[usp_add_location] TO [admin]
GO

GRANT VIEW DEFINITION ON [dbo].[usp_add_jobs] TO [admin]
GO

use [db_employee]
GO
GRANT ALTER ON [dbo].[usp_add_permission] TO [superAdmin]
GO
use [db_employee]
GO
GRANT CONTROL ON [dbo].[usp_add_permission] TO [superAdmin]
GO
use [db_employee]
GO
GRANT EXECUTE ON [dbo].[usp_add_permission] TO [superAdmin]
GO
use [db_employee]
GO
GRANT VIEW DEFINITION ON [dbo].[usp_add_permission] TO [superAdmin]
GO

use [db_employee]
GO
GRANT ALTER ON [dbo].[usp_add_region] TO [admin]
GO
use [db_employee]
GO
GRANT CONTROL ON [dbo].[usp_add_region] TO [admin]
GO
use [db_employee]
GO
GRANT EXECUTE ON [dbo].[usp_add_region] TO [admin]
GO
use [db_employee]
GO
GRANT VIEW DEFINITION ON [dbo].[usp_add_region] TO [admin]
GO
use [db_employee]
GO
GRANT ALTER ON [dbo].[usp_add_region] TO [superAdmin]
GO
use [db_employee]
GO
GRANT CONTROL ON [dbo].[usp_add_region] TO [superAdmin]
GO
use [db_employee]
GO
GRANT EXECUTE ON [dbo].[usp_add_region] TO [superAdmin]
GO
use [db_employee]
GO
GRANT VIEW DEFINITION ON [dbo].[usp_add_region] TO [superAdmin]
GO

use [db_employee]
GO
GRANT ALTER ON [dbo].[usp_add_role] TO [admin]
GO
use [db_employee]
GO
GRANT CONTROL ON [dbo].[usp_add_role] TO [admin]
GO
use [db_employee]
GO
GRANT EXECUTE ON [dbo].[usp_add_role] TO [admin]
GO
use [db_employee]
GO
GRANT VIEW DEFINITION ON [dbo].[usp_add_role] TO [admin]
GO
use [db_employee]
GO
GRANT ALTER ON [dbo].[usp_add_role] TO [superAdmin]
GO
use [db_employee]
GO
GRANT CONTROL ON [dbo].[usp_add_role] TO [superAdmin]
GO
use [db_employee]
GO
GRANT EXECUTE ON [dbo].[usp_add_role] TO [superAdmin]
GO
use [db_employee]
GO
GRANT VIEW DEFINITION ON [dbo].[usp_add_role] TO [superAdmin]
GO

use [db_employee]
GO
GRANT ALTER ON [dbo].[usp_add_loan] TO [admin]
GO
use [db_employee]
GO
GRANT CONTROL ON [dbo].[usp_add_loan] TO [admin]
GO
use [db_employee]
GO
GRANT EXECUTE ON [dbo].[usp_add_loan] TO [admin]
GO
use [db_employee]
GO
GRANT VIEW DEFINITION ON [dbo].[usp_add_loan] TO [admin]
GO
use [db_employee]
GO
GRANT EXECUTE ON [dbo].[usp_add_loan] TO [employee]
GO
use [db_employee]
GO
GRANT EXECUTE ON [dbo].[usp_add_loan] TO [manager]
GO
use [db_employee]
GO
GRANT ALTER ON [dbo].[usp_add_loan] TO [superAdmin]
GO
use [db_employee]
GO
GRANT CONTROL ON [dbo].[usp_add_loan] TO [superAdmin]
GO
use [db_employee]
GO
GRANT EXECUTE ON [dbo].[usp_add_loan] TO [superAdmin]
GO
use [db_employee]
GO
GRANT VIEW DEFINITION ON [dbo].[usp_add_loan] TO [superAdmin]
GO

use [db_employee]
GO
GRANT ALTER ON [dbo].[usp_delete_country] TO [superAdmin]
GO
use [db_employee]
GO
GRANT CONTROL ON [dbo].[usp_delete_country] TO [superAdmin]
GO
use [db_employee]
GO
GRANT EXECUTE ON [dbo].[usp_delete_country] TO [superAdmin]
GO
use [db_employee]
GO
GRANT VIEW DEFINITION ON [dbo].[usp_delete_country] TO [superAdmin]
GO
use [db_employee]
GO
GRANT ALTER ON [dbo].[usp_delete_department] TO [admin]
GO
use [db_employee]
GO
GRANT CONTROL ON [dbo].[usp_delete_department] TO [admin]
GO
use [db_employee]
GO
GRANT EXECUTE ON [dbo].[usp_delete_department] TO [admin]
GO
use [db_employee]
GO
GRANT VIEW DEFINITION ON [dbo].[usp_delete_department] TO [admin]
GO
use [db_employee]
GO
GRANT ALTER ON [dbo].[usp_delete_department] TO [superAdmin]
GO
use [db_employee]
GO
GRANT CONTROL ON [dbo].[usp_delete_department] TO [superAdmin]
GO
use [db_employee]
GO
GRANT EXECUTE ON [dbo].[usp_delete_department] TO [superAdmin]
GO
use [db_employee]
GO
GRANT VIEW DEFINITION ON [dbo].[usp_delete_department] TO [superAdmin]
GO

use [db_employee]
GO
GRANT ALTER ON [dbo].[usp_delete_electronics] TO [admin]
GO
use [db_employee]
GO
GRANT CONTROL ON [dbo].[usp_delete_electronics] TO [admin]
GO
use [db_employee]
GO
GRANT EXECUTE ON [dbo].[usp_delete_electronics] TO [admin]
GO
use [db_employee]
GO
GRANT VIEW DEFINITION ON [dbo].[usp_delete_electronics] TO [admin]
GO
use [db_employee]
GO
GRANT ALTER ON [dbo].[usp_delete_electronics] TO [superAdmin]
GO
use [db_employee]
GO
GRANT CONTROL ON [dbo].[usp_delete_electronics] TO [superAdmin]
GO
use [db_employee]
GO
GRANT EXECUTE ON [dbo].[usp_delete_electronics] TO [superAdmin]
GO
use [db_employee]
GO
GRANT VIEW DEFINITION ON [dbo].[usp_delete_electronics] TO [superAdmin]
GO
