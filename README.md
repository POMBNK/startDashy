### После запуска контейнера проверим работоспособность через healthcheck

узнаем ID контейнера: 

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