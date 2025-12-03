CREATE TABLE BDE_etudiants (
	id INT AUTO_INCREMENT NOT NULL,
	nom VARCHAR(20),
    prenom VARCHAR(20),
	email VARCHAR(50),
    role VARCHAR(15),
    date_Adhesion DATE,
    PRIMARY KEY (id)
)ENGINE=INNODB;

CREATE TABLE Activites (
	id INT AUTO_INCREMENT NOT NULL,
	nom VARCHAR(20),
    description VARCHAR(100),
	lieu VARCHAR(100),
    responsables VARCHAR(25),
    PRIMARY KEY (id)
)ENGINE=INNODB;

CREATE TABLE Etudiants (
	id INT AUTO_INCREMENT NOT NULL,
	nom VARCHAR(20),
    prenom VARCHAR(20),
	email VARCHAR(50),
    role VARCHAR(15),
    date_Adhesion DATE ,
    PRIMARY KEY (id)
)ENGINE=INNODB;

CREATE TABLE sponsors (
	id INT AUTO_INCREMENT NOT NULL,
	nom_entreprise VARCHAR(100),
    nom_contact VARCHAR(20),
	email VARCHAR(50),
    numero_tel VARCHAR(12),
    montant FLOAT  ,
    budget FLOAT ,
    responsables VARCHAR(100),
    PRIMARY KEY (id)
)ENGINE=INNODB;

CREATE TABLE evenements (
	id INT AUTO_INCREMENT NOT NULL,
	nom VARCHAR(100),
    description VARCHAR(100),
	date_evenements DATE ,
    heure_evenements TIME,
    lieu VARCHAR(100),
    budget FLOAT ,
    responsables VARCHAR(100),
    id_BDE_etudiants INT,
    id_Etudiants INT,
    id_sponsors INT,
    id_Activites INT,
    PRIMARY KEY (id),
    FOREIGN KEY (id_BDE_etudiants) REFERENCES BDE_etudiants(id),
    FOREIGN KEY (id_Etudiants) REFERENCES Etudiants(id),
    FOREIGN KEY (id_sponsors) REFERENCES sponsors(id),
    FOREIGN KEY (id_Activites) REFERENCES Activites(id)
)ENGINE=INNODB;