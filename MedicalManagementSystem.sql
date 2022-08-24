USE master

CREATE DATABASE MedicalManagementSystem

GO

USE MedicalManagementSystem

CREATE TABLE User {
	Username varchar(50) NOT NULL,
	Passwrd varchar(50) NOT NULL,
	SSN varchar(50) NOT NULL,
	FirstName varchar(50) NOT NULL,
	MiddleName varchar(50),
	LastName varchar(50) NOT NULL,
	Phone varchar(50) NOT NULL,
	Email varchar(50) NOT NULL,
	MailingAddress varchar(100) NOT NULL,
	DateOfBirth date NOT NULL,
	UserType varchar(50) NOT NULL
	}

CREATE TABLE Patient {
	SSN varchar(50) NOT NULL,
	Allergies varchar(50) NOT NULL,
	PCMID int NOT NULL
	}

CREATE TABLE Appointment {
	ApptID int NOT NULL,
	ApptDate date NOT NULL,
	ApptTime time NOT NULL,
	DurationInMinutes int NOT NULL,
	Description varchar(50) NOT NULL,
	Location varchar(50) NOT NULL,
	ProviderID int NOT NULL,
	PatientSSN varchar(50) NOT NULL,
	PRIMARY KEY (ApptID)
	}

CREATE TABLE Provider {
	ProviderID int NOT NULL,
	MedCredentials varchar(50) NOT NULL,
	Specialty varchar(50)
	}
