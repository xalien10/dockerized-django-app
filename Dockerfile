# pull the official base image
FROM python:3.6

# Maintainer
MAINTAINER strativdev@localhost

# copy project
COPY . /usr/src/app

# set work directory
WORKDIR /usr/src/app

# set environment variables

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# install dependencies
RUN pip install --upgrade pip
COPY ./requirements.txt /usr/src/app/requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# run database migration commands
#RUN python manage.py makemigrations && python manage.py migrate

# run entrypoint.sh
ENTRYPOINT ["/usr/src/app/entrypoint.sh"]