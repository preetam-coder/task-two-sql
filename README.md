📚 Library Management System – Data Insertion & NULL Handling
📌 Task 2: Data Insertion and Handling NULLs
🎯 Objective

The objective of this task was to practice:

Inserting records into database tables

Handling missing values using NULL

Using DEFAULT values

Updating existing records using UPDATE

Deleting records using DELETE

Maintaining referential integrity using Foreign Keys

🛠 Tools Used

PostgreSQL (pgAdmin 4)

DB Fiddle (for testing)

SQL

🗂 Database Structure

The project consists of the following tables:

Authors

Books

Members

Borrow

These tables are connected using Primary Keys and Foreign Keys to maintain relational integrity.

🧱 Table Relationships

Each book is linked to an author.

Each borrow record links a book and a member.

Foreign key constraints ensure data consistency.

🚀 Operations Performed
✅ 1. Data Insertion

Inserted records into all tables.

Demonstrated usage of NULL values.

Used DEFAULT values for price column.

✅ 2. Handling NULL Values

Inserted NULL for unknown country, email, phone, and return date.

Updated missing values using UPDATE.

✅ 3. Updating Data

Updated member email.

Updated return date.

Increased book price dynamically.

✅ 4. Deleting Data

Deleted records using proper WHERE conditions.

Resolved foreign key constraint issues by deleting dependent records first.

Ensured no orphan records remained.

🔐 Data Integrity

Used PRIMARY KEY to ensure unique records.

Used FOREIGN KEY to maintain referential integrity.

Prevented invalid deletion using correct delete order.

Database remains clean and consistent after all operations.

📊 Outcome

✔ Database successfully populated
✔ NULL values handled correctly
✔ Data updated and maintained properly
✔ Foreign key constraints respected
✔ Clean and consistent relational database achieved

📚 Learning Outcomes

Through this task, I learned:

Practical implementation of INSERT, UPDATE, DELETE

Importance of WHERE clause

Handling NULL and DEFAULT values

Understanding Foreign Key constraints

Maintaining Referential Integrity in relational databases
