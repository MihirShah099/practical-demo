-- liquibase formatted sql
-- changeset liquibase:2 runOnChange:true endDelimiter:#
-- preconditions onFail:MARK_RAN onError:MARK_RAN
-- precondition-sql-check expectedResult:0 select count(*) from department where name = 'Division of Telecommunications Extranet Development'

insert into department(name) values("Division of Telecommunications Extranet Development");#
insert into department(name) values("Extranet Multimedia Connectivity and Security Division");#
insert into department(name) values("Branch of Extranet Implementation");#
insert into department(name) values("Branch of Intranet Computer Maintenance and E-Commerce PC Programming");#
insert into department(name) values("Wireless Extranet Backup Team");#
insert into department(name) values("Database Programming Branch");#
insert into department(name) values("Hardware Backup Department");#
insert into department(name) values("Multimedia Troubleshooting and Maintenance Team");#
insert into department(name) values("Office of Statistical Data Connectivity");#
insert into department(name) values("Division of Application Security");#
insert into department(name) values("Network Maintenance and Multimedia Implementation Committee");#
insert into department(name) values("PC Maintenance Department");#
insert into department(name) values("Bureau of Business-Oriented PC Backup and Wireless Telecommunications Control");#
insert into department(name) values("Software Technology and Networking Department");#
insert into department(name) values("Mainframe PC Development and Practical Source Code Acquisition Team");#