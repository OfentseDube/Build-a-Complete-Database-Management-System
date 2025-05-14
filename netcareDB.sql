-- create database netcareDB;

-- use netcareDB;

-- Database: clinic_booking_system

-- Drop tables if they exist
-- DROP TABLE IF EXISTS appointments;
-- DROP TABLE IF EXISTS patients;
-- DROP TABLE IF EXISTS doctors;
-- DROP TABLE IF EXISTS users;
-- DROP TABLE IF EXISTS roles;


-- Table: roles
-- CREATE TABLE roles (
--     role_id INT AUTO_INCREMENT PRIMARY KEY,
--     role_name VARCHAR(255) NOT NULL UNIQUE
-- );

-- Table: users
-- CREATE TABLE users (
--     user_id INT AUTO_INCREMENT PRIMARY KEY,
--     username VARCHAR(255) NOT NULL UNIQUE,
--     password VARCHAR(255) NOT NULL,
--     role_id INT,
--     FOREIGN KEY (role_id) REFERENCES roles(role_id)
-- );

-- Table: doctors
-- CREATE TABLE doctors (
--     doctor_id INT AUTO_INCREMENT PRIMARY KEY,
--     first_name VARCHAR(255) NOT NULL,
--     last_name VARCHAR(255) NOT NULL,
--     specialization VARCHAR(255),
--     user_id INT,
--     FOREIGN KEY (user_id) REFERENCES users(user_id)
-- );

-- Table: patients
-- CREATE TABLE patients (
--     patient_id INT AUTO_INCREMENT PRIMARY KEY,
--     first_name VARCHAR(255) NOT NULL,
--     last_name VARCHAR(255) NOT NULL,
--     date_of_birth DATE,
--     gender VARCHAR(10),
--     contact_number VARCHAR(20),
--     email VARCHAR(255),
--     user_id INT,
--     FOREIGN KEY (user_id) REFERENCES users(user_id)
-- );

-- Table: appointments
-- CREATE TABLE appointments (
--     appointment_id INT AUTO_INCREMENT PRIMARY KEY,
--     doctor_id INT,
--     patient_id INT,
--     appointment_date DATE NOT NULL,
--     appointment_time TIME NOT NULL,
--     status VARCHAR(20) DEFAULT 'Scheduled',
--     notes TEXT,
--     FOREIGN KEY (doctor_id) REFERENCES doctors(doctor_id),
--     FOREIGN KEY (patient_id) REFERENCES patients(patient_id),
--     UNIQUE KEY (doctor_id, appointment_date, appointment_time) -- Added to prevent double booking
-- );

-- Insert data into roles
-- INSERT INTO roles (role_name) VALUES ('admin'), ('doctor'), ('patient');

-- Insert data into users
-- INSERT INTO users (username, password, role_id) VALUES
-- ('admin_user', '$2a$10$WqJGfM96xJjzT8qRzT8bKuKkMhU5R79r8FvRj4j/Fp9j9PDvO7NMa', 1), -- password: password
-- ('doctor1_user', '$2a$10$drnLqj7fD8x4xKj6g7vObuD9fBB34fDqM/KzTzKKhM32L.z8MCRE.', 2), -- password: doctor1
-- ('doctor2_user', '$2a$10$vT8fCj3tGzLg5G/74l3qAOI8/aM7s9y9DMY3c9X9j9z63mK/jJzW', 2), -- password: doctor2
-- ('patient1_user', '$2a$10$xY8RzG6SADvR8w8FtyA6ZuKk4qUHXw7z8nFZjM2L6WjK.n2FpA6', 3), -- password: patient1
-- ('patient2_user', '$2a$10$bOHK98p59H7xR3g/bKzWVuWhj7.68gXJIH9pZ9e/k8T/Enj5O6Mu', 3); -- password: patient2

-- Insert data into doctors
-- INSERT INTO doctors (first_name, last_name, specialization, user_id) VALUES
-- ('John', 'Smith', 'Cardiology', 2),
-- ('Jane', 'Doe', 'Pediatrics', 3);

-- Insert data into patients
-- INSERT INTO patients (first_name, last_name, date_of_birth, gender, contact_number, email, user_id) VALUES
-- ('Alice', 'Johnson', '1990-05-15', 'Female', '123-456-7890', 'alice.johnson@example.com', 4),
-- ('Bob', 'Williams', '1985-10-22', 'Male', '987-654-3210', 'bob.williams@example.com', 5);

-- Insert data into appointments
-- INSERT INTO appointments (doctor_id, patient_id, appointment_date, appointment_time, status, notes) VALUES
-- (1, 1, '2024-07-10', '10:00:00', 'Scheduled', 'Follow-up appointment'),
-- (2, 2, '2024-07-11', '14:00:00', 'Scheduled', 'Initial consultation'),
-- (1, 2, '2024-07-17', '11:00:00', 'Scheduled', 'Regular checkup');

-- Database: clinic_booking_system

-- Drop tables if they exist
-- DROP TABLE IF EXISTS appointments;
-- DROP TABLE IF EXISTS patients;
-- DROP TABLE IF EXISTS doctors;
-- DROP TABLE IF EXISTS users;
-- DROP TABLE IF EXISTS roles;


-- -- Table: roles
-- CREATE TABLE roles (
--     role_id INT AUTO_INCREMENT PRIMARY KEY,
--     role_name VARCHAR(255) NOT NULL UNIQUE
-- );

-- -- Table: users
-- CREATE TABLE users (
--     user_id INT AUTO_INCREMENT PRIMARY KEY,
--     username VARCHAR(255) NOT NULL UNIQUE,
--     password VARCHAR(255) NOT NULL,
--     role_id INT,
--     FOREIGN KEY (role_id) REFERENCES roles(role_id)
-- );

-- -- Table: doctors
-- CREATE TABLE doctors (
--     doctor_id INT AUTO_INCREMENT PRIMARY KEY,
--     first_name VARCHAR(255) NOT NULL,
--     last_name VARCHAR(255) NOT NULL,
--     specialization VARCHAR(255),
--     user_id INT NOT NULL,
--     FOREIGN KEY (user_id) REFERENCES users(user_id)
-- );

-- -- Table: patients
-- CREATE TABLE patients (
--     patient_id INT AUTO_INCREMENT PRIMARY KEY,
--     first_name VARCHAR(255) NOT NULL,
--     last_name VARCHAR(255) NOT NULL,
--     date_of_birth DATE NOT NULL,
--     gender VARCHAR(10) NOT NULL,
--     contact_number VARCHAR(20) NOT NULL,
--     email VARCHAR(255) NOT NULL,
--     user_id INT NOT NULL,
--     FOREIGN KEY (user_id) REFERENCES users(user_id)
-- );

-- -- Table: appointments
-- CREATE TABLE appointments (
--     appointment_id INT AUTO_INCREMENT PRIMARY KEY,
--     doctor_id INT NOT NULL,
--     patient_id INT NOT NULL,
--     appointment_date DATE NOT NULL,
--     appointment_time TIME NOT NULL,
--     status VARCHAR(20) DEFAULT 'Scheduled' NOT NULL,
--     notes TEXT,
--     FOREIGN KEY (doctor_id) REFERENCES doctors(doctor_id),
--     FOREIGN KEY (patient_id) REFERENCES patients(patient_id),
--     UNIQUE KEY (doctor_id, appointment_date, appointment_time) -- Added to prevent double booking
-- );

-- -- Insert data into roles
-- INSERT INTO roles (role_name) VALUES ('admin'), ('doctor'), ('patient');

-- -- Insert data into users
-- INSERT INTO users (username, password, role_id) VALUES
-- ('admin_user', '$2a$10$WqJGfM96xJjzT8qRzT8bKuKkMhU5R79r8FvRj4j/Fp9j9PDvO7NMa', 1), -- password: password
-- ('doctor1_user', '$2a$10$drnLqj7fD8x4xKj6g7vObuD9fBB34fDqM/KzTzKKhM32L.z8MCRE.', 2), -- password: doctor1
-- ('doctor2_user', '$2a$10$vT8fCj3tGzLg5G/74l3qAOI8/aM7s9y9DMY3c9X9j9z63mK/jJzW', 2), -- password: doctor2
-- ('patient1_user', '$2a$10$xY8RzG6SADvR8w8FtyA6ZuKk4qUHXw7z8nFZjM2L6WjK.n2FpA6', 3), -- password: patient1
-- ('patient2_user', '$2a$10$bOHK98p59H7xR3g/bKzWVuWhj7.68gXJIH9pZ9e/k8T/Enj5O6Mu', 3); -- password: patient2

-- -- Insert data into doctors
-- INSERT INTO doctors (first_name, last_name, specialization, user_id) VALUES
-- ('John', 'Smith', 'Cardiology', 2),
-- ('Jane', 'Doe', 'Pediatrics', 3);

-- -- Insert data into patients
-- INSERT INTO patients (first_name, last_name, date_of_birth, gender, contact_number, email, user_id) VALUES
-- ('Alice', 'Johnson', '1990-05-15', 'Female', '123-456-7890', 'alice.johnson@example.com', 4),
-- ('Bob', 'Williams', '1985-10-22', 'Male', '987-654-3210', 'bob.williams@example.com', 5);

-- -- Insert data into appointments
-- INSERT INTO appointments (doctor_id, patient_id, appointment_date, appointment_time, status, notes) VALUES
-- (1, 1, '2024-07-10', '10:00:00', 'Scheduled', 'Follow-up appointment'),
-- (2, 2, '2024-07-11', '14:00:00', 'Scheduled', 'Initial consultation'),
-- (1, 2, '2024-07-17', '11:00:00', 'Scheduled', 'Regular checkup');

-- Database: clinic_booking_system

-- Drop tables if they exist
-- DROP TABLE IF EXISTS appointments;
-- DROP TABLE IF EXISTS patients;
-- DROP TABLE IF EXISTS doctors;
-- DROP TABLE IF EXISTS users;
-- DROP TABLE IF EXISTS roles;


-- -- Table: roles
-- CREATE TABLE roles (
--     role_id INT AUTO_INCREMENT PRIMARY KEY,
--     role_name VARCHAR(255) NOT NULL UNIQUE
-- );

-- -- Table: users
-- CREATE TABLE users (
--     user_id INT AUTO_INCREMENT PRIMARY KEY,
--     username VARCHAR(255) NOT NULL UNIQUE,
--     password VARCHAR(255) NOT NULL,
--     role_id INT,
--     FOREIGN KEY (role_id) REFERENCES roles(role_id)
-- );

-- -- Table: doctors
-- CREATE TABLE doctors (
--     doctor_id INT AUTO_INCREMENT PRIMARY KEY,
--     first_name VARCHAR(255) NOT NULL,
--     last_name VARCHAR(255) NOT NULL,
--     specialization VARCHAR(255),
--     user_id INT NOT NULL,
--     FOREIGN KEY (user_id) REFERENCES users(user_id)
-- );

-- -- Table: patients
-- CREATE TABLE patients (
--     patient_id INT AUTO_INCREMENT PRIMARY KEY,
--     first_name VARCHAR(255) NOT NULL,
--     last_name VARCHAR(255) NOT NULL,
--     date_of_birth DATE NOT NULL,
--     gender VARCHAR(10) NOT NULL,
--     contact_number VARCHAR(20) NOT NULL,
--     email VARCHAR(255) NOT NULL,
--     user_id INT NOT NULL,
--     FOREIGN KEY (user_id) REFERENCES users(user_id)
-- );

-- -- Table: appointments
-- CREATE TABLE appointments (
--     appointment_id INT AUTO_INCREMENT PRIMARY KEY,
--     doctor_id INT NOT NULL,
--     patient_id INT NOT NULL,
--     appointment_date DATE NOT NULL,
--     appointment_time TIME NOT NULL,
--     status VARCHAR(20) DEFAULT 'Scheduled' NOT NULL,
--     notes TEXT,
--     FOREIGN KEY (doctor_id) REFERENCES doctors(doctor_id),
--     FOREIGN KEY (patient_id) REFERENCES patients(patient_id),
--     UNIQUE KEY (doctor_id, appointment_date, appointment_time) -- Added to prevent double booking
-- );

-- -- Insert data into roles
-- INSERT INTO roles (role_name) VALUES ('admin'), ('doctor'), ('patient');

-- -- Insert data into users
-- INSERT INTO users (username, password, role_id) VALUES
-- ('admin_user', '$2a$10$WqJGfM96xJjzT8qRzT8bKuKkMhU5R79r8FvRj4j/Fp9j9PDvO7NMa', 1), -- password: password
-- ('doctor1_user', '$2a$10$drnLqj7fD8x4xKj6g7vObuD9fBB34fDqM/KzTzKKhM32L.z8MCRE.', 2), -- password: doctor1
-- ('doctor2_user', '$2a$10$vT8fCj3tGzLg5G/74l3qAOI8/aM7s9y9DMY3c9X9j9z63mK/jJzW', 2), -- password: doctor2
-- ('patient1_user', '$2a$10$xY8RzG6SADvR8w8FtyA6ZuKk4qUHXw7z8nFZjM2L6WjK.n2FpA6', 3), -- password: patient1
-- ('patient2_user', '$2a$10$bOHK98p59H7xR3g/bKzWVuWhj7.68gXJIH9pZ9e/k8T/Enj5O6Mu', 3); -- password: patient2

-- -- Insert data into doctors
-- INSERT INTO doctors (first_name, last_name, specialization, user_id) VALUES
-- ('John', 'Smith', 'Cardiology', 2),
-- ('Jane', 'Doe', 'Pediatrics', 3);

-- -- Insert data into patients
-- INSERT INTO patients (first_name, last_name, date_of_birth, gender, contact_number, email, user_id) VALUES
-- ('Alice', 'Johnson', '1990-05-15', 'Female', '123-456-7890', 'alice.johnson@example.com', 4),
-- ('Bob', 'Williams', '1985-10-22', 'Male', '987-654-3210', 'bob.williams@example.com', 5);

-- -- Insert data into appointments
-- INSERT INTO appointments (doctor_id, patient_id, appointment_date, appointment_time, status, notes) VALUES
-- (1, 1, '2024-07-10', '10:00:00', 'Scheduled', 'Follow-up appointment'),
-- (2, 2, '2024-07-11', '14:00:00', 'Scheduled', 'Initial consultation'),
-- (1, 2, '2024-07-17', '11:00:00', 'Scheduled', 'Regular checkup');

