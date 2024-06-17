Use db_employee
GO



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
