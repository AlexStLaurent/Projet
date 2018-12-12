CREATE DATABASE TATrouvaille
GO
USE TATrouvaille
GO

CREATE TABLE Administrateur (
Username varchar(20) PRIMARY KEY,
MotPasse varchar(15)
)
CREATE TABLE Inventaire(
Titre varchar(50),
Auteur varchar(50),
Prix money,
EstReserver bit
)

CREATE TABLE LivreRechercher(
Titre varchar(50),
Auteur varchar(50)
)

INSERT INTO Administrateur VALUES
('Admin', 'Admin')

Insert INTO LivreRechercher VALUES
('Les dix petits nègres', 'Agathe Christie'),
('Mein Kampf', 'Adolph Hitler'), 
('Tom à la ferme', 'Some guy'),
('Apprendre le Javascript en 5 étape facile', 'Samir Elouasbi')