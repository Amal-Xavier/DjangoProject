#!/usr/bin/env bash
# Exit on error
set -o errexit

pip install -r requirements.txt
python manage.py collectstatic --no-input
python manage.py migrate

# Automatically create superuser safely
python -c "
import os, django
os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'django_project.settings')
django.setup()
from django.contrib.auth import get_user_model
User = get_user_model()
if not User.objects.filter(username='AmalXavier').exists():
    User.objects.create_superuser('AmalXavier', 'amalxavier41134@gmail.com', 'YourChosenWebPassword123')
"#!/usr/bin/env bash
# Exit on error
set -o errexit

pip install -r requirements.txt
python manage.py collectstatic --no-input
python manage.py migrate

# Automatically create superuser safely
python -c "
import os, django
os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'django_project.settings')
django.setup()
from django.contrib.auth import get_user_model
User = get_user_model()
if not User.objects.filter(username='AmalXavier').exists():
    User.objects.create_superuser('AmalXavier', 'amalxavier41134@gmail.com', 'YourChosenWebPassword123')
"                                                          
