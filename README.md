# Library-management-system
****Aurthor** ** : Nouman khalid
<br>
This project is a database management system for a library, implemented using MySQL as the database management system. It includes tables for storing information about books, users, book copies, loans, and reservations. The database allows librarians to manage book inventory, track loans, and handle user reservations efficiently.

Key Features:
1. Books Table: Stores details about each book, including ISBN, title, author, publisher, and date of publication.
2. Book Copies Table: Tracks individual copies of books available in the library, including their barcode and loan availability status.
3. Loans Table: Records loan transactions, including the user ID, book barcode, issue date, and due date.
4. Users Table: Stores information about library users, such as user ID, name, email, and telephone number.
5. Reservation Table: Manages user reservations for books, including reservation ID, user ID, book barcode, and reservation date.

Tasks Implemented:
	Searching for Books: Implemented search queries to find books by title keywords and author names.
	Checking Availability: Utilized SQL queries to check the availability status of book copies.
	Making Reservations: Added functionality to allow users to reserve books.
	Tracking Loans: Implemented queries to track loans, including user information, book titles, and due dates.

Future Enhancements:
	Implement user authentication and roles for librarian and user access.
	Add functionality for managing book returns and fines for overdue books.
	Enhance the reservation system to handle queue management and notifications.
	Implement a user-friendly interface for interacting with the database.



