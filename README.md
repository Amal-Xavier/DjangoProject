# Django Blog Application

A full-stack, responsive blog web application built with Python and Django. The project features user authentication, profile management with image uploads, full CRUD capabilities for blog posts, and password resets via Gmail SMTP. It is configured for modern cloud deployment on Render using Gunicorn and WhiteNoise.

---

## Features

- **User Authentication:** Registration, login, and logout workflows with custom bootstrap form validation.
- **Profile Management:** User profiles with profile picture upload functionality (powered by Pillow).
- **CRUD Operations for Posts:** Create, read, update, and delete blog posts with author-only permission checks.
- **Pagination & User-Specific Feeds:** Paginated home feed and filtered post lists per author.
- **Password Reset System:** Secure password reset workflow sending tokenized reset links via Gmail SMTP.
- **Production Ready:** Configured with WhiteNoise for static file compression and Gunicorn for WSGI production serving.
- **CI/CD Cloud Deployment:** Automatically builds and deploys from GitHub to Render.

---

## Tech Stack

- **Backend Framework:** Django
- **Database:** SQLite (Development & Default Cloud Instance)
- **Application Server:** Gunicorn
- **Static Asset Management:** WhiteNoise
- **Form Rendering:** Django Crispy Forms & Crispy Bootstrap 4
- **Image Processing:** Pillow
- **Hosting Platform:** Render (PaaS)
- **Version Control:** Git & GitHub

---

## Local Development Setup

### 1. Clone the Repository
```bash
git clone [https://github.com/Amal-Xavier/DjangoProject.git](https://github.com/Amal-Xavier/DjangoProject.git)
cd DjangoProject


DjangoProject/
├── blog/                   # Blog application (models, views, templates, URLs)
├── users/                  # User management, authentication, profile models & views
├── django_project/         # Core settings, WSGI/ASGI configuration, root URLs
├── media/                  # User-uploaded files (profile images)
├── static/                 # Static CSS, JS, and global site assets
├── staticfiles/            # Collected static files for production (generated)
├── build.sh                # Shell script executed during cloud build step
├── manage.py               # Django management utility
├── requirements.txt        # Frozen package dependencies
└── README.md


<Elicitation label="Add a license file (MIT License) to the repository" query="Provide an MIT License template for my Django project GitHub repository."/>
  <Elicitation label="Set up a PostgreSQL database configuration guide for Render" query="Show me how to configure settings.py with dj-database-url to connect PostgreSQL on Render."/>
  <Elicitation label="Add an AWS S3 media storage setup guide to the README" query="Write instructions on how to integrate AWS S3 or Cloudinary for persistent profile image uploads in Django."/>
</ElicitationsGroup>



