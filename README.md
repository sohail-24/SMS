# School Management System

A comprehensive web-based school management system built with Django.

## Features

- **User Management**: Admin, Teacher, and Student accounts
- **Course Management**: Create and manage courses, subjects, and class schedules
- **Attendance Tracking**: Record and monitor student attendance
- **Grade Management**: Track student grades and academic performance
- **Fee Management**: Handle fee payments and generate invoices
- **Reports**: Generate various academic and financial reports
- **Communication**: Announcements, messages, and notifications
- **Calendar**: Event scheduling and timetable management

## Quick Start

### Option 1: Automated Setup (Recommended)

**For Windows:**
```bash
# Double-click setup.bat or run in command prompt:
setup.bat
```

**For macOS/Linux:**
```bash
# Make executable and run:
chmod +x setup.sh
./setup.sh
```

### Option 2: Manual Setup

1. **Install Python 3.8+** from https://python.org
2. **Create virtual environment:**
   ```bash
   python -m venv venv
   venv\Scripts\activate  # Windows
   source venv/bin/activate  # macOS/Linux
   ```
3. **Install dependencies:**
   ```bash
   pip install -r requirements.txt
   ```
4. **Setup database:**
   ```bash
   python manage.py migrate
   python manage.py update_admin_credentials
   ```
5. **Run server:**
   ```bash
   python manage.py runserver
   ```

## Access the Application

- **URL**: http://127.0.0.1:8000/
- **Admin Username**: `admin`
- **Admin Password**: `admin123`

## System Requirements

### Minimum Requirements:
- Python 3.8+
- 2GB RAM
- 500MB storage
- Modern web browser

### Recommended:
- Python 3.9+
- 4GB+ RAM
- 1GB+ storage
- Chrome/Firefox/Safari

## Required Libraries

The following Python packages are automatically installed:

- **Django 4.2.1** - Web framework
- **Pillow 10.0.0** - Image processing
- **reportlab 4.0.4** - PDF generation
- **openpyxl 3.1.2** - Excel export
- **xlsxwriter 3.1.2** - Advanced Excel features

## Frontend Dependencies (CDN)

No installation required - loaded from CDN:
- Bootstrap 5.3.0
- Font Awesome 6.0.0
- Chart.js
- FullCalendar 5.11.3
- Cropper.js 1.5.13

## File Structure

```
SMS/
├── accounts/           # Main application
├── media/             # User uploads
├── staticfiles/       # Static files
├── templates/         # HTML templates
├── SMS/              # Project settings
├── db.sqlite3        # Database
├── manage.py         # Django management
├── requirements.txt  # Dependencies
└── README.md         # This file
```

## Network Access

To access from other devices on your network:

1. Find your computer's IP address
2. Update `ALLOWED_HOSTS` in `SMS/settings.py`
3. Run: `python manage.py runserver 0.0.0.0:8000`
4. Access via: `http://YOUR_IP:8000`

## Troubleshooting

### Common Issues:

1. **Python not found**: Ensure Python is installed and in PATH
2. **Permission errors**: Run as administrator/sudo
3. **Database errors**: Delete `db.sqlite3` and run migrations again
4. **Port in use**: Use different port: `python manage.py runserver 8080`

### Support:
- Django docs: https://docs.djangoproject.com/
- Python docs: https://docs.python.org/

## Default Accounts

After setup, default accounts are available:
- **Admin**: admin / admin123
- Additional test accounts can be created via admin panel

## License

This project is for educational purposes.

---

**Note**: For production use, configure proper database, disable debug mode, and set up appropriate security measures.


