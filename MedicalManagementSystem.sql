USE master

CREATE DATABASE MedicalManagementSystem

GO ------------------------------------

USE MedicalManagementSystem

CREATE TABLE MMSUser (
	Username varchar(50) NOT NULL,
	Passwrd varchar(50) NOT NULL,
	SSN varchar(50) NOT NULL UNIQUE,
	FirstName varchar(50) NOT NULL,
	MiddleName varchar(50),
	LastName varchar(50) NOT NULL,
	Phone varchar(50) NOT NULL,
	Email varchar(50) NOT NULL,
	UserType int NOT NULL,
	PRIMARY KEY (Username)
	)

CREATE TABLE Patient (
	PatientID int NOT NULL,
	SSN varchar(50) NOT NULL UNIQUE,
	MailingAddress varchar(100) NOT NULL,
	DateOfBirth date NOT NULL,
	Allergies varchar(50) NOT NULL,
	PCMID int NOT NULL,
	PRIMARY KEY(PatientID)
	)

CREATE TABLE Appointment (
	ApptID int NOT NULL,
	ApptDate date NOT NULL,
	ApptTime time NOT NULL,
	Duration int NOT NULL,
	Description varchar(50) NOT NULL,
	Location varchar(50) NOT NULL,
	PCMID int NOT NULL,
	PatientID int NOT NULL,
	PRIMARY KEY (ApptID)
	)

CREATE TABLE Employee (
	EmployeeID int NOT NULL,
	MedCredentials varchar(50) NOT NULL,
	Specialty varchar(50),
	SSN varchar(50) NOT NULL UNIQUE,
	PRIMARY KEY (EmployeeID)
	)

GO -------------------------------------------

ALTER TABLE MMSUser
ADD FOREIGN KEY (SSN) REFERENCES Patient(SSN)

ALTER TABLE MMSUser
ADD FOREIGN KEY (SSN) REFERENCES Employee(SSN)

ALTER TABLE Patient
ADD FOREIGN KEY (PCMID) REFERENCES Employee(EmployeeID)

ALTER TABLE Appointment
ADD FOREIGN KEY (PCMID) REFERENCES Employee(EmployeeID)

ALTER TABLE Appointment
ADD FOREIGN KEY (PatientID) REFERENCES Patient(PatientID)
