# Задача по БД: Прием сотрудников на работу и кадровый учет
## Как развернуть локально
1. Убедись, что у тебя в системе имеется docker и git.
    + Git -  https://gitforwindows.org/
    + Docker - https://www.docker.com/
2. Подготовь пространство
    1. Создай папку для проекта в удобном месте
    2. Перейди в неё через терминал:
        `cd <путь в папку>`
        > cd /d/dev/postgresql/evdokimov
    3. Склонируй себе проект `git clone https://github.com/antonbiluta/UnivTask-db1.git`.
    4. Перейди в появившуюся папку `cd UnivTask-db1`.
3. Разворачиваем проект через docker-compose.
    1. Из терминала, находясь в папке проекта, выполните `docker-compose up -d --build`
    2. Дождитесь запуска, после чего вам будет доступен pgAdmin4 по ссылке `localhost:5050`
4. Подключаемся к серверу
    1. Зайдите по ссылке `localhost:5050`
    2. Залогиньтесь под следующими данными:
        - email: **admin@admin.com**
        - password: **root**
    3. В появившемся интерфейсе, слева вызовите контексное меню на Servers и выбирите register > server.
    4. В открывшемся окне, во вкладке GENERAL заполните поле `Name` любым названием (для примера psku).
    5. Далее откройте вкладку CONNECTIONS и введите следующие данные:
        + Host: **host.docker.internal**
        + Port: **5431**
        + Username: **postgres**
        + Password: **postgres**
        + Maintenance database: **db_psku**

5. Переходим в управление базой
    1. Раскройте Servers > Ваше название (psku) > Databases > db_psku
    2. Выберите Query Tool (вверху над Servers кнопка базы со стрелочкой) или вызовите горячими клавишами Alt+Shift+Q.
    3. Введите запрос и нажмите Play (>).

## Успех!