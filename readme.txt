docker volume create --name postgres_data

для задания по api (с докером)
1. docker-compose -f docker-compose.yml up -d --build
-->http://127.0.0.1:8000/api/v1/movies/

для задания по nginx
1. docker-compose -f docker-compose.prod.yml up -d --build
2. docker-compose -f docker-compose.prod.yml exec web python manage.py migrate --noinput
3. docker-compose -f docker-compose.prod.yml exec web python manage.py collectstatic --no-input --clear
-->http://127.0.0.1/api/v1/movies/