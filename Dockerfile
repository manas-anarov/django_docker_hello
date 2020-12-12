FROM python:3.7-slim
MAINTAINER Django Author
WORKDIR /app
RUN pip install pipenv
COPY . /app
RUN pipenv install --system
EXPOSE 8000
CMD [ "python", "./manage.py", "runserver", "0.0.0.0:8000"]