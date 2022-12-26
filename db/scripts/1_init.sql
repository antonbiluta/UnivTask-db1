CREATE SCHEMA IF NOT EXISTS employees;

CREATE TABLE IF NOT EXISTS employees.employee
(
    employee_id       serial PRIMARY KEY,
    first_name        varchar(128) NOT NULL,
    middle_name       varchar(128),
    last_name         varchar(128) NOT NULL,
    data_birth        DATE         NOT NULL,
    employment_record varchar(128),
    passport          varchar(10)  NOT NULL,
    job_id            integer      NOT NULL
);

CREATE TABLE IF NOT EXISTS employees.job
(
    job_id        serial PRIMARY KEY,
    job_name      varchar(128) NOT NULL,
    working_hours int,
    salary        integer
);

CREATE TABLE IF NOT EXISTS employees.shift
(
    employee_id  int       NOT NULL,
    date_shift   timestamp NOT NULL DEFAULT now(),
    hours_start  timestamp NOT NULL DEFAULT now(),
    hours_finish timestamp,
    CONSTRAINT shift_pk PRIMARY KEY ("employee_id", "date_shift")
);

alter table employees.shift
    add constraint shift_employee_employee_id_fk
        foreign key (employee_id) references employees.employee;

CREATE TABLE IF NOT EXISTS employees.employee_status_history
(
    employee_id int  NOT NULL,
    date_esh    date NOT NULL,
    status_esh  varchar(255),
    CONSTRAINT employee_status_history_pk PRIMARY KEY ("employee_id", "date_esh")
);

alter table employees.employee_status_history
    add constraint employee_status_history_employee_employee_id_fk
        foreign key (employee_id) references employees.employee;

alter table employees.employee
    add constraint employee_job_job_id_fk
        foreign key (job_id) references employees.job;



create or replace view employees.employee_statistics_view as
select e.employee_id,
       e.first_name || ' ' || e.middle_name || ' ' || e.last_name                                    as fio,
       s.hours_start::date                                                                           as work_date,
       (s.hours_finish - s.hours_start) between
           make_interval(hours := (j.working_hours)) - '30 minutes'::interval
           and make_interval(hours := (j.working_hours)) + '30 minutes'::interval
                                                                                                     as is_correct_time,
       s.hours_finish - s.hours_start                                                                as fact_working_hours,
       case
           when (s.hours_finish - s.hours_start) > (make_interval(hours := (j.working_hours)) + '30 minutes'::interval)
               then 'extra hour is' || (s.hours_finish - s.hours_start) - make_interval(hours := (j.working_hours))
           when (s.hours_finish - s.hours_start) < (make_interval(hours := (j.working_hours)) - '30 minutes'::interval)
               then 'deficit hour is ' ||
                    make_interval(hours := (j.working_hours)) - (s.hours_finish - s.hours_start) end as status
from employees.shift s
         join employees.employee e on s.employee_id = e.employee_id
         join employees.job j on e.job_id = j.job_id
order by work_date;


create view employees.employee_report_view as
select extract('YEAR' from t.work_date) as year, extract('WEEK' from t.work_date) as week_number, employee_id, json_agg(t) report
from employees.employee_statistics_view t
group by extract('WEEK' from t.work_date), extract('YEAR' from t.work_date), employee_id;



