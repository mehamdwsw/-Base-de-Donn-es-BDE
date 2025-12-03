INSERT INTO BDE_etudiants (
	id INT AUTO_INCREMENT NOT NULL,
	nom VARCHAR(20),
    prenom VARCHAR(20),
	email VARCHAR(50),
    role VARCHAR(15),
    date_Adhesion DATA 
)ENGINE=INNODB;

INSERT INTO Activites (
	id INT AUTO_INCREMENT NOT NULL,
	nom VARCHAR(20),
    description CHARA,
	lieu VARCHAR(100),
    responsables VARCHAR(25)
)ENGINE=INNODB;

INSERT INTO Etudiants (
	id INT AUTO_INCREMENT NOT NULL,
	nom VARCHAR(20),
    prenom VARCHAR(20),
	email VARCHAR(50),
    role VARCHAR(15),
    date_Adhesion DATA 
)ENGINE=INNODB;

INSERT INTO sponsors (
	id INT AUTO_INCREMENT NOT NULL,
	nom_entreprise VARCHAR(100),
    nom_contact VARCHAR(20),
	email VARCHAR(50),
    numero_tel VARCHAR(12),
    montant FLOAT  ,
    budget FLOAT ,
    responsables VARCHAR(100),
)ENGINE=INNODB;

INSERT INTO evenements (
	id INT AUTO_INCREMENT NOT null,
	nom VARCHAR(100),
    description VARCHAR(100),
	date_evenements DATA ,
    heure_evenements 
    lieu VARCHAR(100),
    budget FLOAT ,
    responsables VARCHAR(100),
    id_BDE_etudiants INT,
    id_Etudiants INT,
    id_sponsors INT,
    id_Activites INT,
    FOREIGN KEY (id_BDE_etudiants) REFERENCES BDE_etudiants(id),
    FOREIGN KEY (id_Etudiants) REFERENCES Etudiants(id),
    FOREIGN KEY (id_sponsors) REFERENCES sponsors(id),
    FOREIGN KEY (id_Activites) REFERENCES Activites(id)
)ENGINE=INNODB;