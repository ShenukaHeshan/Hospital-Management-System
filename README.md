# Hospital-Management-System

This is Simple web application for Hospital Management System. This is a java and mysql based system and for this system i used Eclipse IDE.
 
// sql query for create batabase

CREATE DATABASE hospital;

// sql query for create users table

CREATE TABLE users(
   id INT NOT NULL AUTO_INCREMENT,
   name VARCHAR(50) NOT NULL,
   nic VARCHAR(20) NOT NULL,
   tp_no (50) NOT NULL,
   address VARCHAR(100) NOT NULL,
   age VARCHAR(5) NOT NULL,
   gender VARCHAR(50) NOT NULL,
   doctor VARCHAR(70) NOT NULL,
   PRIMARY KEY (id)
);
