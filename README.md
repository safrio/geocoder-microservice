# Geocoder Microservice

Микросервис Geocoder для курса Ruby Microservices.

# Зависимости

- Ruby `2.6.6`
- Bundler `2.1.4`
- Sinatra `2.0.0`
- Sequel `5.32.0`
- Puma `4.3+`
- PostgreSQL `9.3+`

# Установка и запуск приложения

1. Склонируйте репозиторий:

```
git clone git@github.com:psylone/geocoder-microservice.git && cd geocoder-microservice
```

2. Установите зависимости и создайте базу данных:

```
bundle install

createdb -h localhost -U postgres auth_microservice_development
bin/rake db:migrate

createdb -h localhost -U postgres auth_microservice_test
RACK_ENV=test bin/rake db:migrate
```

3. Запустите приложение:

```
bin/puma
```

# Запуск консоли приложения

```
bin/console
```
