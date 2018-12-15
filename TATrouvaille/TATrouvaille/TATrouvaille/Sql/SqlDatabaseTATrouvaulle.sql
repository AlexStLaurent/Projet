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
Prix money,
EstReserver bit
)

CREATE TABLE LivreRechercher(
Titre varchar(50),
Auteur varchar(50)
)

CREATE TABLE Reservation(
ReservID int PRIMARY KEY IDENTITY,
IDLivre INT FOREIGN KEY REFERENCES Inventaire,
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
('Les dix petits nègres', 'Agathe Christie'),
('Mein Kampf', 'Adolph Hitler'), 
('Tom à la ferme', 'Some guy'),
('Apprendre le Javascript en 5 étape facile', 'Samir Elouasbi')

INSERT INTO Inventaire VALUES
('Comme un Badass', 'Mister Torgue Flexington', 66.66, NULL)

