-- liquibase formatted sql
-- changeset liquibase:1 runOnChange:true endDelimiter:#
-- preconditions onFail:MARK_RAN onError:MARK_RAN
-- precondition-sql-check expectedResult:0 select count(*) FROM information_schema.tables where table_schema = DATABASE() AND table_name = "department";

create table department (id bigint not null auto_increment, name varchar(255), primary key (id));#
create table employee (id bigint not null auto_increment, name varchar(500), department_id bigint, primary key (id));#
create table incident (id bigint not null auto_increment, created_date datetime(6), description varchar(2000), name varchar(500), department_id bigint, requested_by bigint, primary key (id));#
alter table employee add constraint FKbejtwvg9bxus2mffsm3swj3u9 foreign key (department_id) references department (id);#
alter table incident add constraint FKg6cssslg0m5b086o9ka74bguk foreign key (department_id) references department (id);#
alter table incident add constraint FKoveajwkgmq0yo6vbw02f5efaj foreign key (requested_by) references employee (id);#