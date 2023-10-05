#!/bin/bash

# Клонируем репозиторий с помощью git clone
git clone https://github.com/lissy93/dashy

# Переходим в директорию dashy
cd dashy

# Собираем Docker Image
docker build -t dashy .

# Запускаем Docker контейнер, используя порт 8080 для хоста
docker run -p 8080:8080 dashy