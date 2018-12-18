CREATE DATABASE TATrouvaille
GO
USE TATrouvaille
GO

CREATE TABLE Administrateur (
Username varchar(20) PRIMARY KEY,
MotPasse varchar(15)
)
CREATE TABLE Inventaire(
IDLivre INT PRIMARY KEY IDENTITY,
Titre varchar(50),
Auteur varchar(50),
Prix money(3,2),
EstReserver bit
)

CREATE TABLE LivreRechercher(
Titre varchar(50),
Auteur varchar(50)
)

CREATE TABLE Reservation(
ReservID int PRIMARY KEY IDENTITY,
IDLivre INT FOREIGN KEY REFERENCES Inventaire ON DELETE CASCADE,
Titre varchar(50),
Nom varchar(40),
Prenom varchar(40),
NumEtudiant varchar(7),
DateRéservation Date,
DateFinReserv Date
)



INSERT INTO Administrateur VALUES
('Admin', 'Admin')

Insert INTO LivreRechercher VALUES
('The Golden Compass', 'Phillip Pullman'),
('Harry Potter et la pierre philosophale','J.K. Rowling'), 
('Tom à la ferme', 'Michel Marc Bouchard'),
('Apprendre le Javascript en 5 étape facile', 'Samir Elouasbi')

INSERT INTO Inventaire VALUES
('Le C# pour les nuls', 'Hasna Hocini', 39, 0)

--USE NORTHWND
--GO
--DROP DATABASE TATrouvaille
--GO