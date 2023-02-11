-- liquibase formatted sql
-- changeset liquibase:3 runOnChange:true endDelimiter:#
-- preconditions onFail:MARK_RAN onError:MARK_RAN
-- precondition-sql-check expectedResult:0 select count(*) from employee where name = 'Roma Marcell'

insert into employee(name,department_id) values("Roma Marcell", (select d.id from department d where d.name = "Division of Telecommunications Extranet Development"));#
insert into employee(name,department_id) values("Hugo Wess", (select d.id from department d where d.name = "Extranet Multimedia Connectivity and Security Division"));#
insert into employee(name,department_id) values("Kelvin Lahr", (select d.id from department d where d.name = "Branch of Extranet Implementation"));#
insert into employee(name,department_id) values("Janelle Newberg", (select d.id from department d where d.name = "Division of Telecommunications Extranet Development"));#
insert into employee(name,department_id) values("Mellie Lombard", (select d.id from department d where d.name = "Branch of Intranet Computer Maintenance and E-Commerce PC Programming"));#
insert into employee(name,department_id) values("Reita Abshire", (select d.id from department d where d.name = "Wireless Extranet Backup Team"));#
insert into employee(name,department_id) values("Dalila Vickrey", (select d.id from department d where d.name = "Database Programming Branch"));#
insert into employee(name,department_id) values("Idella Dallman", (select d.id from department d where d.name = "Branch of Extranet Implementation"));#
insert into employee(name,department_id) values("Farah Eldridge", (select d.id from department d where d.name = "Hardware Backup Department"));#
insert into employee(name,department_id) values("Lana Montes", (select d.id from department d where d.name = "Hardware Backup Department"));#
insert into employee(name,department_id) values("Leola Thornburg", (select d.id from department d where d.name = "Extranet Multimedia Connectivity and Security Division"));#
insert into employee(name,department_id) values("Marcelo Paris", (select d.id from department d where d.name = "Database Programming Branch"));#
insert into employee(name,department_id) values("Ione Tomlin", (select d.id from department d where d.name = "Multimedia Troubleshooting and Maintenance Team"));#
insert into employee(name,department_id) values("Hilario Masterson", (select d.id from department d where d.name = "Multimedia Troubleshooting and Maintenance Team"));#
insert into employee(name,department_id) values("Janice Skipper", (select d.id from department d where d.name = "Wireless Extranet Backup Team"));#
insert into employee(name,department_id) values("Keren Gillespi", (select d.id from department d where d.name = "Office of Statistical Data Connectivity"));#
insert into employee(name,department_id) values("Linh Leitzel", (select d.id from department d where d.name = "Division of Telecommunications Extranet Development"));#
insert into employee(name,department_id) values("Rosalia Ayoub", (select d.id from department d where d.name = "Division of Application Security"));#
insert into employee(name,department_id) values("Shawna Hood", (select d.id from department d where d.name = "Branch of Intranet Computer Maintenance and E-Commerce PC Programming"));#
insert into employee(name,department_id) values("Wilfredo Stumpf", (select d.id from department d where d.name = "Network Maintenance and Multimedia Implementation Committee"));#
insert into employee(name,department_id) values("Alexandra Brendle", (select d.id from department d where d.name = "Office of Statistical Data Connectivity"));#
insert into employee(name,department_id) values("Luciano Riddell", (select d.id from department d where d.name = "Mainframe PC Development and Practical Source Code Acquisition Team"));#
insert into employee(name,department_id) values("Boyce Perales", (select d.id from department d where d.name = "Network Maintenance and Multimedia Implementation Committee"));#
insert into employee(name,department_id) values("Alissa Perlman", (select d.id from department d where d.name = "Division of Telecommunications Extranet Development"));#
insert into employee(name,department_id) values("Latoyia Kremer", (select d.id from department d where d.name = "Network Maintenance and Multimedia Implementation Committee"));#
insert into employee(name,department_id) values("Tawna Blackmore", (select d.id from department d where d.name = "Wireless Extranet Backup Team"));#
insert into employee(name,department_id) values("Claudine Valderrama", (select d.id from department d where d.name = "Hardware Backup Department"));#
insert into employee(name,department_id) values("Katheryn Lepak", (select d.id from department d where d.name = "Network Maintenance and Multimedia Implementation Committee"));#
insert into employee(name,department_id) values("Sage Bow", (select d.id from department d where d.name = "Multimedia Troubleshooting and Maintenance Team"));#
insert into employee(name,department_id) values("Altha Rudisill", (select d.id from department d where d.name = "Hardware Backup Department"));#
insert into employee(name,department_id) values("Olympia Vien", (select d.id from department d where d.name = "Division of Application Security"));#
insert into employee(name,department_id) values("Olene Pyron", (select d.id from department d where d.name = "PC Maintenance Department"));#
insert into employee(name,department_id) values("Delorse Searle", (select d.id from department d where d.name = "Extranet Multimedia Connectivity and Security Division"));#
insert into employee(name,department_id) values("Greta Quigg", (select d.id from department d where d.name = "Bureau of Business-Oriented PC Backup and Wireless Telecommunications Control"));#
insert into employee(name,department_id) values("Kenneth Bowie", (select d.id from department d where d.name = "Branch of Intranet Computer Maintenance and E-Commerce PC Programming"));#
insert into employee(name,department_id) values("Colton Kranz", (select d.id from department d where d.name = "Hardware Backup Department"));#
insert into employee(name,department_id) values("Kasie Barclay", (select d.id from department d where d.name = "Multimedia Troubleshooting and Maintenance Team"));#
insert into employee(name,department_id) values("Thresa Levins", (select d.id from department d where d.name = "Extranet Multimedia Connectivity and Security Division"));#
insert into employee(name,department_id) values("Diego Hasbrouck", (select d.id from department d where d.name = "Software Technology and Networking Department"));#
insert into employee(name,department_id) values("Tomoko Gale", (select d.id from department d where d.name = "Database Programming Branch"));#