-- CREATE OR REPLACE FUNCTION add_status_history_fnc()
--     RETURNS trigger 
-- AS $$
-- BEGIN
--     INSERT INTO EmployeeStatusHistory(employee_id, date_esh)
--     VALUES (NEW.employee_id, NEW.date_shift);
--     RETURN NULL;
-- END $$ LANGUAGE plpgsql;

-- CREATE OR REPLACE TRIGGER add_status_history_trigger AFTER INSERT
-- ON Shift FOR EACH ROW EXECUTE PROCEDURE add_status_history_fnc();





CREATE OR REPLACE FUNCTION trigger_function()
    RETURNS TRIGGER
    LANGUAGE PLPGSQL
AS
$$
DECLARE
    fact_time  interval;
    need_time  interval;
    emp_status varchar(255);
BEGIN
    emp_status := '';

    select make_interval(hours := j.working_hours)
    into need_time
    from employees.job j
             join employees.employee e on j.job_id = e.job_id
    where e.employee_id = OLD.employee_id;

    select (NEW.hours_finish - s.hours_start)
    into fact_time
    from employees.shift s
    where s.employee_id = OLD.employee_id;

    if ((need_time - fact_time) > '30 minutes'::interval) then
        emp_status := 'deficit hours';
    end if;
    if ((fact_time - need_time) > '30 minutes'::interval) then
        emp_status := 'extra hours';
    end if;

    insert into employees.employee_status_history(employee_id, date_esh, status_esh)
    values (OLD.employee_id::int, OLD.date_shift::timestamp, emp_status);

    return NEW;

END;
$$;

CREATE TRIGGER shift_update
    after UPDATE of hours_finish
    ON employees.shift
    FOR EACH row
EXECUTE FUNCTION trigger_function();