# dockerized-django-app
Small demo django app with docker

# Docker commands
1. docker-compose -f docker-compose.prod.yml up -d --build

2. docker-compose -f docker-compose.prod.yml down -v

3. docker-compose -f docker-compose.prod.yml exec web python manage.py migrate --no-input

4. docker-compose -f docker-compose.prod.yml exec web python manage.py collectstatic --no-input --clear
