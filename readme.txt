1. docker volume create --name postgres_data
2. docker-compose -f docker-compose.prod.yml up -d --build
3. docker-compose -f docker-compose.prod.yml exec web python manage.py migrate --noinput
4. docker-compose -f docker-compose.prod.yml exec web python manage.py collectstatic --no-input --clear