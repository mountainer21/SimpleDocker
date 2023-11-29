# Simple Docker
## Part 1. Готовый докер

В качестве конечной цели своей небольшой практики вы сразу выбрали написание докер образа для собственного веб сервера, а потому в начале вам нужно разобраться с уже готовым докер образом для сервера.
Ваш выбор пал на довольно простой **nginx**.

**== Задание ==**

#### Взять официальный докер образ с **nginx** и выкачать его при помощи `docker pull`
![docker](screenshots/001.png)
#### Проверить наличие докер образа через `docker images`
![docker](screenshots/002.png)
#### Запустить докер образ через `docker run -d [image_id|repository]`
![docker](screenshots/003.png)
#### Проверить, что образ запустился через `docker ps`
![docker](screenshots/004.png)
#### Посмотреть информацию о контейнере через `docker inspect [container_id|container_name]`
![docker](screenshots/005.png)
#### По выводу команды определить и поместить в отчёт размер контейнера, список замапленных портов и ip контейнера
![docker](screenshots/006.png)
#### Остановить докер образ через `docker stop [container_id|container_name]`
![docker](screenshots/007.png)
#### Проверить, что образ остановился через `docker ps`
![docker](screenshots/008.png)
#### Запустить докер с замапленными портами 80 и 443 на локальную машину через команду *run*
![docker](screenshots/019.png)
#### Проверить, что в браузере по адресу *localhost:80* доступна стартовая страница **nginx**
![docker](screenshots/010.png)
#### Перезапустить докер контейнер через `docker restart [container_id|container_name]`
![docker](screenshots/111.png)
#### Проверить любым способом, что контейнер запустился
![docker](screenshots/012.png)

## Part 2. Операции с контейнером

#### Прочитать конфигурационный файл *nginx.conf* внутри докер образа через команду *exec*
![docker](screenshots/101.png)
#### Создать на локальной машине файл *nginx.conf* и настроить в нем по пути */status* отдачу страницы статуса сервера **nginx**
![docker](screenshots/203.png)
#### Скопировать созданный файл *nginx.conf* внутрь докер образа через команду `docker cp`
![docker](screenshots/104.png)
#### Перезапустить **nginx** внутри докер образа через команду *exec*
![docker](screenshots/105.png)
#### Проверить, что по адресу *localhost:80/status* отдается страничка со статусом сервера **nginx**
![docker](screenshots/106.png)
#### Экспортировать контейнер в файл *container.tar* через команду *export*
![docker](screenshots/107.png)
#### Остановить контейнер
![docker](screenshots/108.png)
#### Удалить образ через `docker rmi [image_id|repository]`, не удаляя перед этим контейнеры
![docker](screenshots/109.png)
#### Импортировать контейнер обратно через команду *import*
![docker](screenshots/110.png)
#### Запустить импортированный контейнер
![docker](screenshots/112.png)
