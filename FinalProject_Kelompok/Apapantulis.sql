Use db_employee
GO

EXEC usp_return_loan
	@loanid = 30

--EXEC usp_delete_loan
--	@loanid = 30

--EXEC usp_add_loan
--	@loanid = 30,
--	@employeeid = 104,
--	@electronicid = 38

--EXEC usp_delete_electronics
--	@ElectronicId = 54

--EXEC usp_add_electronics
--	@ElectronicId = 54,
--    @ElectronicName = 'TEST',
--    @ElectronicBrand = 'TEST',
--    @ElectronicModel = 'TEST',
--    @SerialNum = 'daojwb1213',
--    @PurchaseDate = '2023-01-01'


--EXEC usp_delete_permission
--	@PermissionId =5

--exec usp_add_permission
--	@PermissionId =5,
--    @PermissionName = 'TEST'

--EXEC usp_delete_role
--	@roleid= 5

--exec usp_edit_role
--	@roleID = 5,
--	@rolename = 'TESTING'

--EXEC usp_edit_region
--    @RegionId = 5,
--    @RegionName = 'Antartica'

--EXEC usp_delete_country
--	@Countryid ='TH'

--EXEC usp_edit_country
--	@Countryid ='TH',
--	@countryname = 'Thai',
--	@countryRegion = 2
	

--EXEC usp_Delete_location
--	@locationid = 3300

--EXEC usp_edit_location
--	@LocationId = 3300,
--	@Address = 'jalan bromo',
--	@PostalCode= '13221',
--	@City = 'jakarta',
--	@state= 'jakarta barat',
--    @country = 'ID'

--EXEC usp_edit_department
--	 @DepartmentId = 260,
--    @DepartmentName = 'SATPAM',
--	@DepartmentLocation = 1700

--EXEC usp_edit_jobs
--	 @JobId = 'IT_SUP',
--    @JobTitle ='IT SUPPORT',
--    @minSalary = 3000,
--	@maxSalary = 6000


--SELECT dbo.func_salary('AD_VP', 16000)
--EXEC usp_edit_employee
--    @EmployeeID = 103,
--    @FirstName = 'Alan',
--    @LastName = 'Walker',
--	@gender = 'male',
--    @Email ='test2@example.com',
--	@phone ='123-456-789',
--	@hiredate = '2024-05-17',
--	@salary = 18000,
--	@manager = 100,
--	@job ='AD_VP',
--	@department = 90,
--    @Username ='213Untuksv',
--    @Password ='Ibab@42069';

--EXEC usp_edit_employee
 --   @EmployeeID = 101,
  --  @FirstName = 'Alan';

--EXEC usp_generate_otp
   -- @Email = 'kbednall1@yellowbook.com';

--EXEC usp_forgot_password
  --  @Email = 'kbednall1@yellowbook.com',
    --@NewPassword = 'Ibab@42069',
    --@ConfirmPassword = 'Ibab@42069',
    --@Otp = '67467';

--EXEC usp_login
  --  @Email = 'kbednall1@yellowbook.com',
    --@Username = 'pstraneo1',
    --@Password = 'aN8`I>aB#z';

--SELECT dbo.func_password_policy('xJ8|Y3J+XjTD?') AS IsValidEmail;

--SELECT dbo.func_email_format('dimasnarendraputra@gmail.com') AS IsValidEmail;

--INSERT INTO tbl_role_permissions
--SELECT role_permissions.*
--FROM     role_permissions

--role
--locations
--departments
--acc_roles
--acc
--countries
--electronics
--employee
--job_history
--jobs
--loans
--permission
--reggions
--role_permissions

--truncate table tbl_job_histories
