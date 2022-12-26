SELECT
  'DROP TABLE IF EXISTS "' || tablename || '" CASCADE;' 
from
  pg_tables WHERE schemaname = 'public';

CREATE TABLE "public.Employee" (
    employee_id integer PRIMARY KEY,
    first_name varchar(128) NOT NULL,
    middle_name varchar(128),
    last_name varchar(128) NOT NULL,
    data_birth DATE NOT NULL,
    employment_record varchar(128),
    passport varchar(10) NOT NULL,
    job_id integer NOT NULL
);

CREATE TABLE "public.Job" (
    job_id integer NOT NULL PRIMARY KEY,
    job_name varchar(128) NOT NULL,
    working_hours integer,
    salary integer
);

CREATE TABLE "public.Shift" (
    employee_id integer NOT NULL,
    date_shift DATE NOT NULL DEFAULT CURRENT_DATE,
    hours_start integer,
    hours_finish integer,
    CONSTRAINT "Shift_pk" PRIMARY KEY ("employee_id", "date_shift")
);

CREATE TABLE "public.EmployeeStatusHistory" (
    employee_id integer NOT NULL,
    date_esh DATE NOT NULL,
    status_esh varchar(255),
    CONSTRAINT "EmployeeStatusHistory_pk" PRIMARY KEY ("employee_id", "date_esh")
);

ALTER TABLE "Employee" ADD CONSTRAINT "Employee_fk0" FOREIGN KEY ("job_id") REFERENCES "Job"("job_id");

ALTER TABLE "Shift" ADD CONSTRAINT "Shift_fk0" FOREIGN KEY ("employee_id") REFERENCES "Employee"("employee_id");

ALTER TABLE "EmployeeStatusHistory" ADD CONSTRAINT "EmployeeStatusHistory_fk0" FOREIGN KEY ("employee_id") REFERENCES "Employee"("employee_id");

INSERT INTO Job (job_name, working_hours, salary) VALUE ("Аналитик", 8, 100000);
INSERT INTO Job (job_name, working_hours, salary) VALUE ("Разработчик", 8, 225000);
INSERT INTO Job (job_name, working_hours, salary) VALUE ("Тестеровщик", 8, 120000);

INSERT INTO Employee (
    first_name, middle_name, last_name, data_birth, 
    employment_record, passport, job_id) 
    VALUE ('Anton', 'Andreevich', 'Biluta', 2001-01-05, 'test text', 0312314123, 2);



-- CREATE OR REPLACE FUNCTION get_status_shift_fnc()
--     RETURNS TRIGGER AS $$
-- BEGIN
--     INSERT INTO EmployeeStatusHistory VALUES (NEW.employee_id, NEW.date_esh, status_esh)
-- END;
-- $$ LANGUAGE 'plpgsql';

-- CREATE OR REPLACE TRIGGER getStatusEmployee 
--     AFTER UPDATE OF hours_finish ON Shift
--     FOR EACH ROW
--     EXECUTE FUNCTION get_status_shift_fnc();




