# Python HTTP Server in Docker
## Запуск

Создадим Docker образ с именем `http-server_image`
```bash
docker build -t http-server_image .
```

Создадим и запустим контейнер с именем `http-server_container`
```bash
docker run -d --name http-server_container --restart always -p 8000:8000 http-server_image
```
`-d`: Запуск контейнера в фоновом режиме.

`--name http-server_container`: Указание имени для контейнера.

`--restart always`: Настройка контейнера на автоматический перезапуск в случае сбоя.

`-p 8000:8000`: Проброс порта 8000 с хоста на порт 8000 контейнера.

`simple-http-server`: Имя образа.

## Остановка и удаление

Остановим наш контейнер
```bash
docker stop http-server_container
```

Удалим контейнер
```bash
docker rm http-server_container
```

Удалим образ
```bash
docker rmi http-server_image
```

## Просмотр контейнеров и образов

Посмотрим все работающие контейнеры
```bash
docker ps
```

Посмотрим все контейнеры
```bash
docker ps -a
```

Посмотрим все образа
```bash
docker images
```
