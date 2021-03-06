FROM python:3.9.0

WORKDIR /home/

RUN echo 'adwcwd005'

RUN git clone https://github.com/success899/gis_4ban_1.git

WORKDIR /home/gis_4ban_1/

RUN pip install -r requirements.txt

RUN pip install gunicorn

RUN pip install mysqlclient

EXPOSE 8000

CMD ["bash", "-c", "python manage.py collectstatic --noinput --settings=web_210630.settings.deploy && python manage.py migrate --settings=web_210630.settings.deploy && gunicorn --env DJANGO_SETTINGS_MODULE=web_210630.settings.deploy web_210630.wsgi --bind 0.0.0.0:8000"]