# Как меня развернуть

1. У тебя должен быть установлен в системе docker и git
2. Открой терминал
3. перейди в папку, куда загрузишь проект (cd path)
4. git clone https://github.com/antonbiluta/UnivTask-db1.git
5. cd UnivTask-db1
6. docker-compose up -d --build
7. Через минуту перейди в браузере по ссылке localhost:5050
8. залогинься по данным
email: admin@admin.com
pass: root
9. ПКМ по servers и выбери register>server
10. Во вкладке GENERAL в поле Name впиши любое имя сервера
11. Перейди во вкладку Connections
12. В поле Host впиши host.docker.internal
13. В поле port - 5431
14. Username и Password - postgres
15. Maintenance database - db_psku

### Теперь ты подключилась к базе
Слева выбери появившуюся базу > Databases > db_psku. После этого вверху нажми иконку базы со стрелкой (Query Tool) или запусти его через Alt+Shift+Q.
Теперь ты можешь писать запросы и выполнять их