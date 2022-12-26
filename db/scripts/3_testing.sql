INSERT INTO employees.job
VALUES (1, 'Аналитик', 8, 100000),
       (2, 'Разработчик', 8, 225000),
       (3, 'Тестеровщик', 8, 120000),
       (4, 'Садовник', 3, 60000),
       (5, 'Бариста', 2, 45000);

INSERT INTO employees.employee
VALUES (1, 'Anton', 'Andreevich', 'Biluta', '2001-01-05', 'test text', 0312314123, 2),
       (2, 'Adelina', '', 'Savonina', '2001-01-01', 'test2', 32131231, 1),
       (3, 'Tanya', '', 'Slepcova', '2001-01-01', 'test3', 12321312, 3),
       (4, 'Danil', '', 'Udod', '2002-02-02', 'test4', 21312313, 3),
       (5, 'Alexander', 'Alexandrovich', 'Alexandrov', '2005-05-05', 'test5', 1234567890, 5);

-- INSERT INTO employees.shift (employee_id)
-- VALUES (1),
--        (2),
--        (3),
--        (4),
--        (5);

-- UPDATE employees.shift
-- SET hours_finish = NOW() + INTERVAL '7 hour' + INTERVAL '56 minutes'
-- WHERE employee_id = 2;

-- UPDATE employees.shift
-- SET hours_finish = NOW() + INTERVAL '8 hour' + INTERVAL '4 minutes'
-- WHERE employee_id = 3;

-- UPDATE employees.shift
-- SET hours_finish = NOW() + INTERVAL '6 hour'
-- WHERE employee_id = 4;

-- UPDATE employees.shift
-- SET hours_finish = NOW() + INTERVAL '1 hour' + INTERVAL '45 minutes'
-- WHERE employee_id = 5;

INSERT INTO employees.shift (employee_id, date_shift, hours_start) 
VALUES (1, '2022-12-26 00:00:00', '2022-12-26 09:00:00'),
       (1, '2022-12-27 00:00:00', '2022-12-27 09:00:00'),
       (1, '2022-12-28 00:00:00', '2022-12-28 09:00:00'),
       (1, '2022-12-29 00:00:00', '2022-12-29 09:00:00'),
       (1, '2022-12-30 00:00:00', '2022-12-30 09:00:00');

UPDATE employees.shift
SET hours_finish = '2022-12-26 18:06:12.015897'
WHERE employee_id = 1 AND date_shift = '2022-12-26 00:00:00';

UPDATE employees.shift
SET hours_finish = '2022-12-27 17:00:12.015897'
WHERE employee_id = 1 AND date_shift = '2022-12-27 00:00:00';

UPDATE employees.shift
SET hours_finish = '2022-12-28 15:34:00.015897'
WHERE employee_id = 1 AND date_shift = '2022-12-28 00:00:00';

UPDATE employees.shift
SET hours_finish = '2022-12-29 18:06:12.015897'
WHERE employee_id = 1 AND date_shift = '2022-12-29 00:00:00';

UPDATE employees.shift
SET hours_finish = '2022-12-30 18:06:12.015897'
WHERE employee_id = 1 AND date_shift = '2022-12-30 00:00:00';

INSERT INTO employees.shift (employee_id, date_shift, hours_start) 
VALUES (1, '2022-11-26 00:00:00', '2022-11-26 09:00:00'),
       (1, '2022-11-27 00:00:00', '2022-11-27 09:00:00'),
       (1, '2022-11-28 00:00:00', '2022-11-28 09:00:00'),
       (1, '2022-11-29 00:00:00', '2022-11-29 09:00:00'),
       (1, '2022-11-30 00:00:00', '2022-11-30 09:00:00');

UPDATE employees.shift
SET hours_finish = '2022-11-26 18:06:12.015897'
WHERE employee_id = 1 AND date_shift = '2022-11-26 00:00:00';

UPDATE employees.shift
SET hours_finish = '2022-11-27 17:00:12.015897'
WHERE employee_id = 1 AND date_shift = '2022-11-27 00:00:00';

UPDATE employees.shift
SET hours_finish = '2022-11-28 15:34:00.015897'
WHERE employee_id = 1 AND date_shift = '2022-11-28 00:00:00';

UPDATE employees.shift
SET hours_finish = '2022-11-29 18:06:12.015897'
WHERE employee_id = 1 AND date_shift = '2022-11-29 00:00:00';

UPDATE employees.shift
SET hours_finish = '2022-11-30 18:06:12.015897'
WHERE employee_id = 1 AND date_shift = '2022-11-30 00:00:00';

INSERT INTO employees.shift (employee_id, date_shift, hours_start) 
VALUES (2, '2022-12-26 00:00:00', '2022-12-26 09:00:00'),
       (2, '2022-12-27 00:00:00', '2022-12-27 09:00:00'),
       (2, '2022-12-28 00:00:00', '2022-12-28 09:00:00'),
       (2, '2022-12-29 00:00:00', '2022-12-29 09:00:00'),
       (2, '2022-12-30 00:00:00', '2022-12-30 09:00:00');

UPDATE employees.shift
SET hours_finish = '2022-12-26 18:06:12.015897'
WHERE employee_id = 2 AND date_shift = '2022-12-26 00:00:00';

UPDATE employees.shift
SET hours_finish = '2022-12-27 17:00:12.015897'
WHERE employee_id = 2 AND date_shift = '2022-12-27 00:00:00';

UPDATE employees.shift
SET hours_finish = '2022-12-28 15:34:00.015897'
WHERE employee_id = 2 AND date_shift = '2022-12-28 00:00:00';

UPDATE employees.shift
SET hours_finish = '2022-12-29 18:06:12.015897'
WHERE employee_id = 2 AND date_shift = '2022-12-29 00:00:00';

UPDATE employees.shift
SET hours_finish = '2022-12-30 18:06:12.015897'
WHERE employee_id = 2 AND date_shift = '2022-12-30 00:00:00';


INSERT INTO employees.shift (employee_id, date_shift, hours_start) 
VALUES (3, '2022-12-26 00:00:00', '2022-12-26 09:00:00'),
       (3, '2022-12-27 00:00:00', '2022-12-27 09:00:00'),
       (3, '2022-12-28 00:00:00', '2022-12-28 09:00:00'),
       (3, '2022-12-29 00:00:00', '2022-12-29 09:00:00'),
       (3, '2022-12-30 00:00:00', '2022-12-30 09:00:00');

UPDATE employees.shift
SET hours_finish = '2022-12-26 18:06:12.015897'
WHERE employee_id = 3 AND date_shift = '2022-12-26 00:00:00';

UPDATE employees.shift
SET hours_finish = '2022-12-27 17:00:12.015897'
WHERE employee_id = 3 AND date_shift = '2022-12-27 00:00:00';

UPDATE employees.shift
SET hours_finish = '2022-12-28 15:34:00.015897'
WHERE employee_id = 3 AND date_shift = '2022-12-28 00:00:00';

UPDATE employees.shift
SET hours_finish = '2022-12-29 18:06:12.015897'
WHERE employee_id = 3 AND date_shift = '2022-12-29 00:00:00';

UPDATE employees.shift
SET hours_finish = '2022-12-30 18:06:12.015897'
WHERE employee_id = 3 AND date_shift = '2022-12-30 00:00:00';


INSERT INTO employees.shift (employee_id, date_shift, hours_start) 
VALUES (4, '2022-12-26 00:00:00', '2022-12-26 09:00:00'),
       (4, '2022-12-27 00:00:00', '2022-12-27 09:00:00'),
       (4, '2022-12-28 00:00:00', '2022-12-28 09:00:00'),
       (4, '2022-12-29 00:00:00', '2022-12-29 09:00:00'),
       (4, '2022-12-30 00:00:00', '2022-12-30 09:00:00');

UPDATE employees.shift
SET hours_finish = '2022-12-26 18:06:12.015897'
WHERE employee_id = 4 AND date_shift = '2022-12-26 00:00:00';

UPDATE employees.shift
SET hours_finish = '2022-12-27 17:00:12.015897'
WHERE employee_id = 4 AND date_shift = '2022-12-27 00:00:00';

UPDATE employees.shift
SET hours_finish = '2022-12-28 15:34:00.015897'
WHERE employee_id = 4 AND date_shift = '2022-12-28 00:00:00';

UPDATE employees.shift
SET hours_finish = '2022-12-29 18:06:12.015897'
WHERE employee_id = 4 AND date_shift = '2022-12-29 00:00:00';

UPDATE employees.shift
SET hours_finish = '2022-12-30 18:06:12.015897'
WHERE employee_id = 4 AND date_shift = '2022-12-30 00:00:00';


INSERT INTO employees.shift (employee_id, date_shift, hours_start) 
VALUES (5, '2022-12-26 00:00:00', '2022-12-26 09:00:00'),
       (5, '2022-12-27 00:00:00', '2022-12-27 09:00:00'),
       (5, '2022-12-28 00:00:00', '2022-12-28 09:00:00'),
       (5, '2022-12-29 00:00:00', '2022-12-29 09:00:00'),
       (5, '2022-12-30 00:00:00', '2022-12-30 09:00:00');

UPDATE employees.shift
SET hours_finish = '2022-12-26 18:06:12.015897'
WHERE employee_id = 5 AND date_shift = '2022-12-26 00:00:00';

UPDATE employees.shift
SET hours_finish = '2022-12-27 17:00:12.015897'
WHERE employee_id = 5 AND date_shift = '2022-12-27 00:00:00';

UPDATE employees.shift
SET hours_finish = '2022-12-28 15:34:00.015897'
WHERE employee_id = 5 AND date_shift = '2022-12-28 00:00:00';

UPDATE employees.shift
SET hours_finish = '2022-12-29 18:06:12.015897'
WHERE employee_id = 5 AND date_shift = '2022-12-29 00:00:00';

UPDATE employees.shift
SET hours_finish = '2022-12-30 18:06:12.015897'
WHERE employee_id = 5 AND date_shift = '2022-12-30 00:00:00';
