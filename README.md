# Задание
Поднять в докере dashy.
Имеем linux с установленным git и docker.
Дистрибутив и версия linux неизвестна.
Необходимо написать скрипт (bash), который клонирует с гитхаба
репозиторий dashy (lissy93), собирает docker-image и запускает контейнер с
приложением.
Все необходимые файлы (такие как dockerfile) скрипт создать
самостоятельно.

# Решение
Напишем требуемый bash скрипт *startDashy.sh* . Запуск скрипта происходит командой:
```
bash startDashy.sh
```
### После запуска контейнера проверим работоспособность через healthcheck

Узнаем ID контейнера: 

```docker
docker ps
```

Делаем запрос на health-check

```docker
docker exec -it [container-id] yarn health-check
```

Пример ожидаемого ответа при успешном запуске

```
Running health check...
Status: 200
Request took 0.047 seconds
```