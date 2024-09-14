
# ShareMyRide

ShareMyRide is a ride-sharing web application developed using Django. It allows users to share rides, book trips, chat with other users, manage complaints, and handle payments. The app also has an emergency alert feature, route management, and a rating system for users.

## Features

1. **User Management:**
   - User registration, login, and profile management.
   - Admin and regular user roles.

2. **Booking System:**
   - Users can book rides, check booking statuses, and cancel or approve bookings.
   - Routes are managed via the `Route` model and linked to bookings.

3. **Chat System:**
   - Direct chat between users is enabled, with real-time chat functionalities.

4. **Complaint Handling:**
   - Users can submit complaints and view replies.
   - Admin can manage complaints and post replies.

5. **Emergency Alerts:**
   - Users can store emergency contacts and send alerts in case of an emergency.

6. **Payment Integration:**
   - Payment system linked with bookings to manage transactions and status of payments.

7. **Ratings System:**
   - Users can rate each other based on the ride experience.

## Installation

### Prerequisites

- Python 3.x
- Django 3.0.1 or later
- MySQL (Database configuration in `settings.py`)

### Steps

1. Clone the repository:
   ```bash
   git clone https://github.com/lostdir/sharemyride.git
   cd sharemyride
   ```

2. Install dependencies:
   ```bash
   pip install -r requirements.txt
   ```

3. Set up the MySQL database:
   - Create a MySQL database named `sharemyride`.
   - Update the database settings in `sharemyride/sharemyride/settings.py`:
     ```python
     DATABASES = {
         'default': {
             'ENGINE': 'django.db.backends.mysql',
             'NAME': 'sharemyride',
             'USER': 'root',
             'PASSWORD': '',  # Enter your MySQL password here
             'HOST': 'localhost',
             'PORT': '',
             'OPTIONS': {
                 'init_command': "SET sql_mode='STRICT_TRANS_TABLES'",
                 'charset': 'utf8mb4',
             }
         }
     }
     ```

4. Apply migrations:
   ```bash
   python manage.py migrate
   ```

5. Run the development server:
   ```bash
   python manage.py runserver
   ```

6. Access the application:
   Visit `http://127.0.0.1:8000/` in your browser.

## Usage

- Users can register and log in via the `/login/` page.
- Admin functionalities can be accessed via `/admin/`.
- Users can book rides, chat, and handle payments through the UI.

## Project Structure

- `booking/`: Handles ride bookings and trip management.
- `chat/`: Manages the chat functionality between users.
- `complaint/`: Handles the submission and management of complaints.
- `emergencyno/`: Manages emergency contacts and alerts.
- `login/`: Handles user authentication and profile management.
- `payment/`: Manages the payment system.
- `rating/`: Handles user ratings.
- `route/`: Manages route information for ride-sharing.
- `vehicles/`: Manages user vehicle information.

## Contributing

Feel free to fork this repository and submit pull requests.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
