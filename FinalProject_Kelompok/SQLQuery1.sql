Use db_employee
GO

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

insert into tbl_job_histories (employee, start_date, end_date, status, job, department) values ('100', '01/13/2001', '07/24/2006', 'work', 'AD_PRES', '90');
insert into tbl_job_histories (employee, start_date, end_date, status, job, department) values ('101', '09/21/1997', '10/27/2001', 'work', 'AD_VP', '90');
insert into tbl_job_histories (employee, start_date, end_date, status, job, department) values ('102', '10/28/2001', '03/15/2005', 'work', 'AD_VP', '90');
insert into tbl_job_histories (employee, start_date, end_date, status, job, department) values ('103', '02/17/2004', '12/19/2007', 'fired', 'IT_PROG', '60');
insert into tbl_job_histories (employee, start_date, end_date, status, job, department) values ('104', '03/24/2006', '12/31/2007', 'work', 'IT_PROG', '60');
insert into tbl_job_histories (employee, start_date, end_date, status, job, department) values ('105', '1/1/2007', '12/31/2007', 'fired', 'IT_PROG', '60');
insert into tbl_job_histories (employee, start_date, end_date, status, job, department) values ('106', '09/17/1995', '06/17/2001', 'work', 'IT_PROG', '60');
insert into tbl_job_histories (employee, start_date, end_date, status, job, department) values ('107', '03/24/2006', '12/31/2006', 'work', 'IT_PROG', '60');
insert into tbl_job_histories (employee, start_date, end_date, status, job, department) values ('108', '1/1/2007', '12/31/2007', 'work', 'FI_MGR', '100');
insert into tbl_job_histories (employee, start_date, end_date, status, job, department) values ('109', '1/7/2002', '12/31/2006', 'work', 'FI_ACCOUNT', '100');
insert into tbl_job_histories (employee, start_date, end_date, status, job, department) values ('110', '01/13/2001', '07/24/2006', 'work', 'FI_ACCOUNT', '100');
insert into tbl_job_histories (employee, start_date, end_date, status, job, department) values ('111', '09/21/1997', '10/27/2001', 'work', 'FI_ACCOUNT', '100');
insert into tbl_job_histories (employee, start_date, end_date, status, job, department) values ('112', '10/28/2001', '03/15/2005', 'work', 'FI_ACCOUNT', '100');
insert into tbl_job_histories (employee, start_date, end_date, status, job, department) values ('113', '02/17/2004', '12/19/2007', 'retired', 'FI_ACCOUNT', '100');
insert into tbl_job_histories (employee, start_date, end_date, status, job, department) values ('114', '03/24/2006', '12/31/2007', 'work', 'PU_MAN', '30');
insert into tbl_job_histories (employee, start_date, end_date, status, job, department) values ('115', '1/1/2007', '12/31/2007', 'work', 'PU_CLERK', '30');
insert into tbl_job_histories (employee, start_date, end_date, status, job, department) values ('116', '09/17/1995', '06/17/2001', 'work', 'PU_CLERK', '30');
insert into tbl_job_histories (employee, start_date, end_date, status, job, department) values ('117', '03/24/2006', '12/31/2006', 'work', 'PU_CLERK', '30');
insert into tbl_job_histories (employee, start_date, end_date, status, job, department) values ('118', '1/1/2007', '12/31/2007', 'work', 'PU_CLERK', '30');
insert into tbl_job_histories (employee, start_date, end_date, status, job, department) values ('119', '1/7/2002', '12/31/2006', 'work', 'PU_CLERK', '30');
insert into tbl_job_histories (employee, start_date, end_date, status, job, department) values ('120', '01/13/2001', '07/24/2006', 'work', 'ST_MAN', '50');
insert into tbl_job_histories (employee, start_date, end_date, status, job, department) values ('121', '09/21/1997', '10/27/2001', 'work', 'ST_MAN', '50');
insert into tbl_job_histories (employee, start_date, end_date, status, job, department) values ('122', '10/28/2001', '03/15/2005', 'retired', 'ST_MAN', '50');
insert into tbl_job_histories (employee, start_date, end_date, status, job, department) values ('123', '02/17/2004', '12/19/2007', 'work', 'ST_MAN', '50');
insert into tbl_job_histories (employee, start_date, end_date, status, job, department) values ('124', '03/24/2006', '12/31/2007', 'work', 'ST_MAN', '50');
insert into tbl_job_histories (employee, start_date, end_date, status, job, department) values ('125', '1/1/2007', '12/31/2007', 'retired', 'ST_CLERK', '50');
insert into tbl_job_histories (employee, start_date, end_date, status, job, department) values ('126', '09/17/1995', '06/17/2001', 'work', 'ST_CLERK', '50');
insert into tbl_job_histories (employee, start_date, end_date, status, job, department) values ('127', '03/24/2006', '12/31/2006', 'work', 'ST_CLERK', '50');
insert into tbl_job_histories (employee, start_date, end_date, status, job, department) values ('128', '1/1/2007', '12/31/2007', 'work', 'ST_CLERK', '50');
insert into tbl_job_histories (employee, start_date, end_date, status, job, department) values ('129', '1/7/2002', '12/31/2006', 'retired', 'ST_CLERK', '50');
insert into tbl_job_histories (employee, start_date, end_date, status, job, department) values ('130', '01/13/2001', '07/24/2006', 'work', 'ST_CLERK', '50');
insert into tbl_job_histories (employee, start_date, end_date, status, job, department) values ('131', '09/21/1997', '10/27/2001', 'fired', 'ST_CLERK', '50');
insert into tbl_job_histories (employee, start_date, end_date, status, job, department) values ('132', '10/28/2001', '03/15/2005', 'work', 'ST_CLERK', '50');
insert into tbl_job_histories (employee, start_date, end_date, status, job, department) values ('133', '02/17/2004', '12/19/2007', 'retired', 'ST_CLERK', '50');
insert into tbl_job_histories (employee, start_date, end_date, status, job, department) values ('134', '03/24/2006', '12/31/2007', 'work', 'ST_CLERK', '50');
insert into tbl_job_histories (employee, start_date, end_date, status, job, department) values ('135', '1/1/2007', '12/31/2007', 'work', 'ST_CLERK', '50');
insert into tbl_job_histories (employee, start_date, end_date, status, job, department) values ('136', '09/17/1995', '06/17/2001', 'work', 'ST_CLERK', '50');
insert into tbl_job_histories (employee, start_date, end_date, status, job, department) values ('137', '03/24/2006', '12/31/2006', 'work', 'ST_CLERK', '50');
insert into tbl_job_histories (employee, start_date, end_date, status, job, department) values ('138', '1/1/2007', '12/31/2007', 'work', 'ST_CLERK', '50');
insert into tbl_job_histories (employee, start_date, end_date, status, job, department) values ('139', '1/7/2002', '12/31/2006', 'work', 'ST_CLERK', '50');
insert into tbl_job_histories (employee, start_date, end_date, status, job, department) values ('140', '01/13/2001', '07/24/2006', 'work', 'ST_CLERK', '50');
insert into tbl_job_histories (employee, start_date, end_date, status, job, department) values ('141', '09/21/1997', '10/27/2001', 'work', 'ST_CLERK', '50');
insert into tbl_job_histories (employee, start_date, end_date, status, job, department) values ('142', '10/28/2001', '03/15/2005', 'work', 'ST_CLERK', '50');
insert into tbl_job_histories (employee, start_date, end_date, status, job, department) values ('143', '02/17/2004', '12/19/2007', 'work', 'ST_CLERK', '50');
insert into tbl_job_histories (employee, start_date, end_date, status, job, department) values ('144', '03/24/2006', '12/31/2007', 'fired', 'ST_CLERK', '50');
insert into tbl_job_histories (employee, start_date, end_date, status, job, department) values ('145', '1/1/2007', '12/31/2007', 'work', 'SA_MAN', '80');
insert into tbl_job_histories (employee, start_date, end_date, status, job, department) values ('146', '09/17/1995', '06/17/2001', 'retired', 'SA_MAN', '80');
insert into tbl_job_histories (employee, start_date, end_date, status, job, department) values ('147', '03/24/2006', '12/31/2006', 'work', 'SA_MAN', '80');
insert into tbl_job_histories (employee, start_date, end_date, status, job, department) values ('148', '1/1/2007', '12/31/2007', 'work', 'SA_MAN', '80');
insert into tbl_job_histories (employee, start_date, end_date, status, job, department) values ('149', '1/7/2002', '12/31/2006', 'work', 'SA_MAN', '80');
insert into tbl_job_histories (employee, start_date, end_date, status, job, department) values ('150', '01/13/2001', '07/24/2006', 'work', 'SA_REP', '80');
insert into tbl_job_histories (employee, start_date, end_date, status, job, department) values ('151', '09/21/1997', '10/27/2001', 'work', 'SA_REP', '80');
insert into tbl_job_histories (employee, start_date, end_date, status, job, department) values ('152', '10/28/2001', '03/15/2005', 'fired', 'SA_REP', '80');
insert into tbl_job_histories (employee, start_date, end_date, status, job, department) values ('153', '02/17/2004', '12/19/2007', 'work', 'SA_REP', '80');
insert into tbl_job_histories (employee, start_date, end_date, status, job, department) values ('154', '03/24/2006', '12/31/2007', 'work', 'SA_REP', '80');
insert into tbl_job_histories (employee, start_date, end_date, status, job, department) values ('155', '1/1/2007', '12/31/2007', 'fired', 'SA_REP', '80');
insert into tbl_job_histories (employee, start_date, end_date, status, job, department) values ('156', '09/17/1995', '06/17/2001', 'work', 'SA_REP', '80');
insert into tbl_job_histories (employee, start_date, end_date, status, job, department) values ('157', '03/24/2006', '12/31/2006', 'work', 'SA_REP', '80');
insert into tbl_job_histories (employee, start_date, end_date, status, job, department) values ('158', '1/1/2007', '12/31/2007', 'retired', 'SA_REP', '80');
insert into tbl_job_histories (employee, start_date, end_date, status, job, department) values ('159', '1/7/2002', '12/31/2006', 'work', 'SA_REP', '80');
insert into tbl_job_histories (employee, start_date, end_date, status, job, department) values ('160', '01/13/2001', '07/24/2006', 'fired', 'SA_REP', '80');
insert into tbl_job_histories (employee, start_date, end_date, status, job, department) values ('161', '09/21/1997', '10/27/2001', 'work', 'SA_REP', '80');
insert into tbl_job_histories (employee, start_date, end_date, status, job, department) values ('162', '10/28/2001', '03/15/2005', 'work', 'SA_REP', '80');
insert into tbl_job_histories (employee, start_date, end_date, status, job, department) values ('163', '02/17/2004', '12/19/2007', 'work', 'SA_REP', '80');
insert into tbl_job_histories (employee, start_date, end_date, status, job, department) values ('164', '03/24/2006', '12/31/2007', 'work', 'SA_REP', '80');
insert into tbl_job_histories (employee, start_date, end_date, status, job, department) values ('165', '1/1/2007', '12/31/2007', 'fired', 'SA_REP', '80');
insert into tbl_job_histories (employee, start_date, end_date, status, job, department) values ('166', '09/17/1995', '06/17/2001', 'work', 'SA_REP', '80');
insert into tbl_job_histories (employee, start_date, end_date, status, job, department) values ('167', '03/24/2006', '12/31/2006', 'work', 'SA_REP', '80');
insert into tbl_job_histories (employee, start_date, end_date, status, job, department) values ('168', '1/1/2007', '12/31/2007', 'work', 'SA_REP', '80');
insert into tbl_job_histories (employee, start_date, end_date, status, job, department) values ('169', '1/7/2002', '12/31/2006', 'work', 'SA_REP', '80');
insert into tbl_job_histories (employee, start_date, end_date, status, job, department) values ('170', '01/13/2001', '07/24/2006', 'work', 'SA_REP', '80');
insert into tbl_job_histories (employee, start_date, end_date, status, job, department) values ('171', '09/21/1997', '10/27/2001', 'work', 'SA_REP', '80');
insert into tbl_job_histories (employee, start_date, end_date, status, job, department) values ('172', '10/28/2001', '03/15/2005', 'work', 'SA_REP', '80');
insert into tbl_job_histories (employee, start_date, end_date, status, job, department) values ('173', '02/17/2004', '12/19/2007', 'work', 'SA_REP', '80');
insert into tbl_job_histories (employee, start_date, end_date, status, job, department) values ('174', '03/24/2006', '12/31/2007', 'work', 'SA_REP', '80');
insert into tbl_job_histories (employee, start_date, end_date, status, job, department) values ('175', '1/1/2007', '12/31/2007', 'work', 'SA_REP', '80');
insert into tbl_job_histories (employee, start_date, end_date, status, job, department) values ('176', '09/17/1995', '06/17/2001', 'work', 'SA_REP', '80');
insert into tbl_job_histories (employee, start_date, end_date, status, job, department) values ('177', '03/24/2006', '12/31/2006', 'work', 'SA_REP', '80');
insert into tbl_job_histories (employee, start_date, end_date, status, job, department) values ('178', '1/1/2007', '12/31/2007', 'work', 'SA_REP', '-');
insert into tbl_job_histories (employee, start_date, end_date, status, job, department) values ('179', '1/7/2002', '12/31/2006', 'work', 'SA_REP', '80');
insert into tbl_job_histories (employee, start_date, end_date, status, job, department) values ('180', '01/13/2001', '07/24/2006', 'work', 'SH_CLERK', '50');
insert into tbl_job_histories (employee, start_date, end_date, status, job, department) values ('181', '09/21/1997', '10/27/2001', 'work', 'SH_CLERK', '50');
insert into tbl_job_histories (employee, start_date, end_date, status, job, department) values ('182', '10/28/2001', '03/15/2005', 'work', 'SH_CLERK', '50');
insert into tbl_job_histories (employee, start_date, end_date, status, job, department) values ('183', '02/17/2004', '12/19/2007', 'work', 'SH_CLERK', '50');
insert into tbl_job_histories (employee, start_date, end_date, status, job, department) values ('184', '03/24/2006', '12/31/2007', 'fired', 'SH_CLERK', '50');
insert into tbl_job_histories (employee, start_date, end_date, status, job, department) values ('185', '1/1/2007', '12/31/2007', 'work', 'SH_CLERK', '50');
insert into tbl_job_histories (employee, start_date, end_date, status, job, department) values ('186', '09/17/1995', '06/17/2001', 'work', 'SH_CLERK', '50');
insert into tbl_job_histories (employee, start_date, end_date, status, job, department) values ('187', '03/24/2006', '12/31/2006', 'work', 'SH_CLERK', '50');
insert into tbl_job_histories (employee, start_date, end_date, status, job, department) values ('188', '1/1/2007', '12/31/2007', 'work', 'SH_CLERK', '50');
insert into tbl_job_histories (employee, start_date, end_date, status, job, department) values ('189', '1/7/2002', '12/31/2006', 'fired', 'SH_CLERK', '50');
insert into tbl_job_histories (employee, start_date, end_date, status, job, department) values ('190', '01/13/2001', '07/24/2006', 'work', 'SH_CLERK', '50');
insert into tbl_job_histories (employee, start_date, end_date, status, job, department) values ('191', '09/21/1997', '10/27/2001', 'work', 'SH_CLERK', '50');
insert into tbl_job_histories (employee, start_date, end_date, status, job, department) values ('192', '10/28/2001', '03/15/2005', 'work', 'SH_CLERK', '50');
insert into tbl_job_histories (employee, start_date, end_date, status, job, department) values ('193', '02/17/2004', '12/19/2007', 'work', 'SH_CLERK', '50');
insert into tbl_job_histories (employee, start_date, end_date, status, job, department) values ('194', '03/24/2006', '12/31/2007', 'work', 'SH_CLERK', '50');
insert into tbl_job_histories (employee, start_date, end_date, status, job, department) values ('195', '1/1/2007', '12/31/2007', 'retired', 'SH_CLERK', '50');
insert into tbl_job_histories (employee, start_date, end_date, status, job, department) values ('196', '09/17/1995', '06/17/2001', 'work', 'SH_CLERK', '50');
insert into tbl_job_histories (employee, start_date, end_date, status, job, department) values ('197', '03/24/2006', '12/31/2006', 'fired', 'SH_CLERK', '50');
insert into tbl_job_histories (employee, start_date, end_date, status, job, department) values ('198', '1/1/2007', '12/31/2007', 'work', 'SH_CLERK', '50');
insert into tbl_job_histories (employee, start_date, end_date, status, job, department) values ('199', '1/7/2002', '12/31/2006', 'work', 'SH_CLERK', '50');
