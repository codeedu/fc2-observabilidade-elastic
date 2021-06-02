#!/bin/bash

python3 manage.py migrate
gunicorn codeprogress.wsgi:application --bind 0.0.0.0:8000