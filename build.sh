#!/usr/bin/env bash
# Exit on error
set -o errexit

pip install -r requirements.txt
python manage.py collectstatic --no-input
python manage.py migrate

# Automatically create a superuser if it doesn't already exist
python manage.py shell << END
from django.contrib.auth import get_user_model
User = get_user_model()
if not User.objects.filter(username='AmalXavier').exists():
    User.objects.create_superuser('AmalXavier', 'amalxavier41134@gmail.com', 'ypvp rfkn emrk ioee')
END

python manage.py loaddata data.json