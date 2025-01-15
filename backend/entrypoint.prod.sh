#!/bin/bash

# Запуск миграций
python manage.py migrate 
# Сборка статики 
python manage.py collectstatic --noinput
# Копирование собранной статики
cp -r /app/collected_static/. /backend_static/static/

exec "$@"