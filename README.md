# Hospital System Database

## Overview

The Hospital System Database project is designed to manage and store information related to doctors, patients, appointments, medicines, allergies, and specializations within a hospital. This database schema includes tables for doctors, patients, appointments, medicines, allergies, and their respective relationships, providing a comprehensive system for managing hospital operations efficiently.

## Features

- Manage doctor information, including specialties and supervisors
- Store patient information with contact details and assigned doctors
- Record appointments with detailed medical notes and vital signs
- Track medicines prescribed during appointments
- Maintain a record of patient allergies
- Support for multiple specialties and their respective doctors

## Requirements

- MySQL or any other SQL-compatible database system

## Usage

1. **Clone the repository**:
    ```bash
    git clone https://github.com/Mo-Zeini/Hospital-System-Database.git
    ```

2. **Navigate to the project directory**:
    ```bash
    cd Hospital-System-Database
    ```

3. **Create the database and tables**:
    - Open your SQL database management tool (e.g., MySQL Workbench)
    - Execute the SQL script to create the database and tables:
      ```sql
      SOURCE hospitalsystemdatabase.sql;
      ```

4. **Populate the tables with sample data**:
    - Execute the provided SQL insert statements to populate the tables with initial data.

## File Structure

- `hospitalsystemdatabase.sql`: SQL script to create the database schema and tables.
- `Using the SQL DDL to Create and Populate the Tables of the Hospital Schema.docx`: Documentation with detailed SQL statements for creating and populating each table.
- `HospitalSystemDatabase Diagram Screenshot.png`: Entity-Relationship Diagram (ERD) of the database schema.

## ER Diagram

The database schema is represented in the following ER diagram:

![Hospital System Database ER Diagram](HospitalSystemDatabase%20Diagram%20Screenshot.png)

## SQL Tables and Relationships

### Specialty Table
- **Columns**: SpecialtyNumber, SpecialtyName
- **Primary Key**: SpecialtyNumber

### Doctor Table
- **Columns**: DoctorID, FirstName, LastName, Phone, SpecialtyNumber, Supervisor
- **Primary Key**: DoctorID
- **Foreign Key**: SpecialtyNumber references Specialty(SpecialtyNumber)

### Patient Table
- **Columns**: PatientID, FirstName, LastName, Phone, Email, Address, AddedDate, DoctorID
- **Primary Key**: PatientID
- **Foreign Key**: DoctorID references Doctor(DoctorID)

### Appointment Table
- **Columns**: AppointmentID, DoctorID, PatientID, AppointmentDate, BloodPressure, Weight, TreatmentNotes
- **Primary Key**: AppointmentID
- **Foreign Key**: DoctorID references Doctor(DoctorID), PatientID references Patient(PatientID)

### Medicine Table
- **Columns**: MedicineID, MedicineName
- **Primary Key**: MedicineID

### Allergy Table
- **Columns**: AllergyID, AllergyName
- **Primary Key**: AllergyID

### Patient_Medicine Table
- **Columns**: AppointmentID, MedicineID
- **Primary Key**: Combination of AppointmentID and MedicineID
- **Foreign Key**: AppointmentID references Appointment(AppointmentID), MedicineID references Medicine(MedicineID)

### Patient_Allergy Table
- **Columns**: PatientID, AllergyID
- **Primary Key**: Combination of PatientID and AllergyID
- **Foreign Key**: PatientID references Patient(PatientID), AllergyID references Allergy(AllergyID)

## Example Queries

### Retrieve all data from the SPECIALTY table:
```sql
SELECT * FROM SPECIALTY;

### Retrieve all data from the DOCTOR table:
```sql
SELECT * FROM DOCTOR;

### Retrieve all data from the ALLERGY table:
```sql
SELECT * FROM ALLERGY;

### Retrieve all data from the MEDICINE table:
```sql
SELECT * FROM MEDICINE;

### Retrieve all data from the PATIENT table:
```sql
SELECT * FROM PATIENT;

### Retrieve all data from the APPOINTMENT table:
```sql
SELECT * FROM APPOINTMENT;

### Retrieve all data from the PATIENT_MEDICINE table:
```sql
SELECT * FROM PATIENT_MEDICINE;

### Retrieve all data from the PATIENT_ALLERGY table:
```sql
SELECT * FROM PATIENT_ALLERGY;


## License

This project is licensed under the MIT License. See the [LICENSE](https://github.com/Mo-Zeini/Habit-Tracking-App/blob/main/LICENSE.txt) file for details.

## Author

- [Mohamed Elzeini](https://github.com/Mo-Zeini)

## Acknowledgements

- This app was developed as part of a project assigned by the university IU International University of Applied Sciences for the Bachelor of Applied Artificial Intelligence program.
