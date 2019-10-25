DROP TABLE jouer;
DROP TABLE film;
DROP TABLE genre;
DROP TABLE realisateur;
DROP TABLE acteur;




CREATE TABLE acteur(
	idA NUMERIC(5) PRIMARY KEY, 
	nom CHAR(40) NOT NULL, 
	prenom CHAR(40), 
	nationalite CHARACTER(40)
);

CREATE TABLE realisateur(
	idR NUMERIC(5) PRIMARY KEY, 
	nom CHAR(40) NOT NULL, 
	prenom CHARACTER(40), 
	nationalite CHARACTER(40)
);

CREATE TABLE genre(
	idG NUMERIC(5) PRIMARY KEY,
 	description VARCHAR(40)
 );

CREATE TABLE film(
	idF NUMERIC(5) PRIMARY KEY, 
	titre VARCHAR(40) NOT NULL, 
	annee NUMERIC(4), 
	pays VARCHAR(40), 
	nbspectateur NUMERIC(10) NOT NULL, 
	idRealisateur NUMERIC(5), 
	idGenre NUMERIC(5),
	CONSTRAINT c_num5 FOREIGN KEY (idRealisateur) REFERENCES realisateur(idR),
	CONSTRAINT c_num4 FOREIGN KEY (idGenre) REFERENCES genre(idG)
);

CREATE TABLE jouer( 
	idActeur NUMERIC(5),
	idFilm NUMERIC(5),
	salaire NUMERIC(6) NOT NULL,
	CONSTRAINT c_num3 FOREIGN KEY (idActeur) REFERENCES acteur(idA), 
	CONSTRAINT c_num2 FOREIGN KEY (idFilm) REFERENCES film(idF), 
	CONSTRAINT c_num1 PRIMARY KEY (idActeur, idFilm)
);



