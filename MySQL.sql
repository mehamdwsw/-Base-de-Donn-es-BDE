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
-- valie--
INSERT INTO Etudiants (nom, prenom, email, role, date_Adhesion) VALUES
('Lamrani', 'Samir', 'samir.l@gmail.com', 'Étudiant', '2023-11-20'),
('Benali', 'Yassine', 'yassine.b@gmail.com', 'Étudiant', '2023-10-01'),
('Cherif', 'Zineb', 'zineb.c@gmail.com', 'Étudiant', '2024-03-15'),
('Idrissi', 'Omar', 'omar.i@gmail.com', 'Étudiant', '2024-01-25'),
('Ouahabi', 'Meryem', 'meryem.o@gmail.com', 'Étudiant', '2023-09-05'),
('Majid', 'Amal', 'amal.m@gmail.com', 'Étudiant', '2023-11-11'),
('Daoudi', 'Wassim', 'wassim.d@gmail.com', 'Étudiant', '2024-02-01'),
('Safi', 'Hiba', 'hiba.s@gmail.com', 'Étudiant', '2023-10-22'),
('Tazi', 'Abdelali', 'abdelali.t@gmail.com', 'Étudiant', '2024-01-05'),
('Chaoui', 'Ghizlane', 'ghizlane.c@gmail.com', 'Étudiant', '2024-04-01'),
('Bounou', 'Zakaria', 'zakaria.b@gmail.com', 'Étudiant', '2023-11-11'),
('Fekri', 'Nouhaila', 'nouhaila.f@gmail.com', 'Étudiant', '2023-09-20'),
('Najim', 'Kamal', 'kamal.n@gmail.com', 'Étudiant', '2024-02-01'),
('Ziani', 'Asmae', 'asmae.z@gmail.com', 'Étudiant', '2024-01-10'),
('Bouzid', 'Bilal', 'bilal.b@gmail.com', 'Étudiant', '2023-10-22'),
('Jamil', 'Hajar', 'hajar.j@gmail.com', 'Étudiant', '2024-03-05'),
('Kadiri', 'Ayoub', 'ayoub.k@gmail.com', 'Étudiant', '2023-12-01'),
('Laghrissi', 'Samira', 'samira.l@gmail.com', 'Étudiant', '2024-02-18'),
('Mekouar', 'Mehdi', 'mehdi.m@gmail.com', 'Étudiant', '2023-10-29'),
('Naji', 'habib', 'lina.n@gmail.com', 'Étudiant', '2024-04-15');

INSERT INTO BDE_etudiants (nom, prenom, email, role, date_Adhesion) VALUES
('Dubois', 'Clara', 'clara.d@gmail.com', 'Présidente', '2023-09-01'),
('Martin', 'Lucas', 'lucas.m@gmail.com', 'Vice-Président', '2023-09-10'),
('Leroy', 'Emma', 'emma.l@gmail.com', 'Trésorière', '2023-10-05'),
('Petit', 'Thomas', 'thomas.p@gmail.com', 'Secrétaire', '2024-01-20'),
('Bernard', 'Sophie', 'sophie.b@gmail.com', 'Membre', '2024-02-14'),
('Robert', 'Antoine', 'antoine.r@gmail.com', 'Membre', '2023-11-20'),
('Richard', 'Manon', 'manon.r@gmail.com', 'Membre', '2023-11-01'),
('Durand', 'Maxime', 'maxime.d@gmail.com', 'Membre', '2024-03-01'),
('Moreau', 'Chloé', 'chloe.m@gmail.com', 'Membre', '2024-03-10'),
('Girard', 'Paul', 'paul.g@gmail.com', 'Membre', '2023-12-12'),
('Fournier', 'Jules', 'jules.f@gmail.com', 'Membre', '2024-02-28'),
('Lambert', 'Alice', 'alice.l@gmail.com', 'Membre', '2023-09-25'),
('David', 'Marc', 'marc.d@gmail.com', 'Membre', '2023-10-15'),
('Mercier', 'Eva', 'eva.m@gmail.com', 'Membre', '2024-01-05'),
('Roux', 'Hugo', 'hugo.r@gmail.com', 'Membre', '2024-04-01'),
('Simon', 'Léa', 'lea.s@gmail.com', 'Membre', '2023-11-11'),
('Perrin', 'Victor', 'victor.p@gmail.com', 'Membre', '2023-09-20'),
('Gauthier', 'Amélie', 'amelie.g@gmail.com', 'Membre', '2024-02-01'),
('Henry', 'Théo', 'theo.h@gmail.com', 'Membre', '2024-01-10'),
('Michel', 'Inès', 'ines.m@gmail.com', 'Membre', '2023-10-22');

INSERT INTO Activites (nom, description, lieu, responsables) VALUES
('Tournoi de Futsal', 'Compétition de football en salle', 'Gymnase Principal', 'Clara Dubois'),
('Atelier Photo', 'Initiation à la photographie numérique', 'Studio du Campus', 'Lucas Martin'),
('Soirée Blind Test', 'Événement social et musical', 'Cafétéria Centrale', 'Emma Leroy'),
('Cours de Python', 'Développement web et initiation à la programmation', 'Salle Informatique A', 'Thomas Petit'),
('Randonnée Forêt', 'Marche découverte dans la forêt avoisinante', 'Forêt Universitaire', 'Sophie Bernard'),
('Concours Échecs', 'Tournoi amical d\'échecs', 'Salle de Jeux', 'Antoine Robert'),
('Atelier Cuisine', 'Apprendre à faire des pâtisseries françaises', 'Espace Cuisine BDE', 'Manon Richard'),
('Débat Environnement', 'Discussion sur l\'écologie et le climat', 'Amphi D', 'Maxime Durand'),
('Exposition Peinture', 'Présentation des œuvres des étudiants artistes', 'Galerie d\'Art', 'Chloé Moreau'),
('Club Cinéma', 'Projection et débat d\'un film classique', 'Salle de Projection', 'Paul Girard'),
('Séminaire Finance', 'Conférence sur les marchés financiers', 'Centre de Conférences', 'Jules Fournier'),
('Atelier Calligraphie', 'Apprentissage de l\'art de la belle écriture', 'Salle des Arts 1', 'Alice Lambert'),
('Séance Yoga', 'Relaxation et pleine conscience', 'Salle de Sport B', 'Marc David'),
('Formation Secours', 'Initiation aux gestes de premiers secours', 'Infirmerie du Campus', 'Eva Mercier'),
('Journée Handicap', 'Sensibilisation au handicap', 'Place Centrale', 'Hugo Roux'),
('Théâtre Improvisé', 'Représentation théâtrale spontanée', 'Studio de Répétition', 'Léa Simon'),
('Club Astronomie', 'Observation du ciel nocturne', 'Toit Observatoire', 'Victor Perrin'),
('Cours d\'Espagnol', 'Initiation à la langue espagnole', 'Salle de Langues 3', 'Amélie Gauthier'),
('Projet Robotique', 'Construction de robots autonomes', 'Atelier de Fabrication', 'Théo Henry'),
('Concours Lecture', 'Compétition de lecture rapide', 'Bibliothèque Centrale', 'Inès Michel');


INSERT INTO sponsors (nom_entreprise, nom_contact, email, numero_tel, montant, budget, responsables) VALUES
('Tech Avancée France', 'Julien Moreau', 'julien.m@techavance.fr', '0145889977', 25000.00, 1000.00, 'Lucas Martin'),
('Librairie Hachette', 'Marie Dupont', 'marie.d@hachette.fr', '0235123456', 3000.00, 300.00, 'Emma Leroy'),
('Boulangerie Paul', 'Franck Petit', 'franck.p@boulangeriepaul.fr', '0388990011', 1500.00, 150.00, 'Thomas Petit'),
('BNP Paribas', 'Alain Robert', 'alain.r@bnpparibas.fr', '0478654321', 50000.00, 2000.00, 'Clara Dubois'),
('Agence Digitale C', 'Nathalie Leroy', 'nathalie.l@agencec.fr', '0610203040', 10000.00, 500.00, 'Sophie Bernard'),
('Startup Innov Ouest', 'Marc Dubois', 'marc.d@innovouest.fr', '0185746352', 7500.00, 400.00, 'Antoine Robert'),
('Cabinet d\'Avocats P&D', 'Caroline Fournier', 'caro.f@cabavocats.fr', '0440302010', 4500.00, 250.00, 'Manon Richard'),
('Restaurant Le Bistrot', 'Jean Simon', 'jean.s@lebistrot.fr', '0321456789', 2500.00, 180.00, 'Maxime Durand'),
('Ferme Bio Picard', 'Patrick Perrin', 'patrick.p@biopicard.fr', '0247998877', 6000.00, 350.00, 'Chloé Moreau'),
('Agence Immobilière Espace', 'Valérie Bernard', 'valerie.b@immoespace.fr', '0130507090', 5500.00, 300.00, 'Paul Girard'),
('Assurance Mutuelle', 'Sophie Girard', 'sophie.g@assurmutuelle.fr', '0560708090', 18000.00, 800.00, 'Jules Fournier'),
('Fournitures Pro', 'Luc Lambert', 'luc.l@fourniturespro.fr', '0677889900', 4000.00, 200.00, 'Alice Lambert'),
('Transports Rapides', 'Denis David', 'denis.d@transpr rapide.fr', '0530405060', 30000.00, 1500.00, 'Marc David'),
('Logiciels Gamma', 'Isabelle Mercier', 'isabelle.m@gamma.fr', '0622334455', 12000.00, 600.00, 'Eva Mercier'),
('Mairie de Paris', 'Georges Garcia', 'georges.g@mairieparis.fr', '0535908070', 20000.00, 900.00, 'Hugo Roux'),
('Restaurant La Tour', 'Louise Rousseau', 'louise.r@latour.fr', '0600102030', 8000.00, 400.00, 'Léa Simon'),
('Centre Commercial Sud', 'Théo Lopez', 'theo.l@ccs.fr', '0522113355', 45000.00, 2200.00, 'Victor Perrin'),
('Société Nettoyage', 'Jeanne Michel', 'jeanne.m@nettoyage.fr', '0630405060', 3500.00, 180.00, 'Amélie Gauthier'),
('Auto-école Z', 'Victor Blanc', 'victor.b@autoez.fr', '0528224466', 5000.00, 250.00, 'Théo Henry'),
('Club Fitness Élite', 'Axel Dupond', 'axel.d@clubelite.fr', '0650403020', 9500.00, 480.00, 'Inès Michel');

INSERT INTO evenements (nom, description, date_evenements, heure_evenements, lieu, budget, responsables, id_BDE_etudiants, id_Etudiants, id_sponsors, id_Activites) VALUES
('Gala de Fin d\'Année', 'Dîner de prestige et soirée dansante', '2025-06-15', '20:30:00', 'Palais des Congrès', 35000.00, 'Comité Gala', 1, 3, 4, 1),
('Journée Portes Ouvertes', 'Visite du campus pour les lycéens', '2025-03-25', '09:00:00', 'Hall Principal', 5000.00, 'Équipe Communication', 2, 5, 2, 3),
('Forum des Métiers', 'Rencontre avec des professionnels', '2025-04-10', '14:00:00', 'Espace Conférences', 15000.00, 'Pôle Carrière', 3, 1, 1, 4),
('Festival de la Musique', 'Concerts en plein air', '2025-06-21', '17:00:00', 'Kiosque du Parc', 8000.00, 'Club Musique', 4, 2, 3, 5),
('Séminaire IA', 'Présentations sur l\'intelligence artificielle', '2025-05-12', '09:30:00', 'Amphithéâtre A', 7000.00, 'Association Scientifique', 5, 4, 5, 2),
('Tournoi de Basket', 'Compétition amicale de basketball', '2025-03-01', '16:00:00', 'Salle de Sport', 4000.00, 'Section Sport', 6, 6, 6, 1),
('Projection Film', 'Séance spéciale avec débat post-film', '2025-01-20', '19:00:00', 'Cinéma du Campus', 2500.00, 'Club Cinéma', 7, 7, 7, 10),
('Atelier Rédaction CV', 'Formation à la rédaction de CV', '2025-02-14', '10:00:00', 'Salle de Formation B', 1500.00, 'Service Carrière', 8, 8, 8, 11),
('Journée Culturelle', 'Célébration des cultures du monde', '2025-04-28', '11:00:00', 'Place de l\'Université', 10000.00, 'Comité Culturel', 9, 9, 9, 13),
('Hackathon Code', 'Compétition de codage de 24h', '2025-05-18', '08:30:00', 'Laboratoire Informatique', 6000.00, 'Club Info', 10, 10, 10, 7),
('Excursion Ville', 'Visite guidée du centre historique', '2025-01-10', '14:00:00', 'Musée d\'Histoire', 3000.00, 'Club Sorties', 11, 11, 11, 9),
('Atelier Marketing', 'Introduction au marketing digital', '2025-03-08', '15:30:00', 'Salle de Cours Design', 4500.00, 'Club Marketing', 12, 12, 12, 12),
('Course Caritative', 'Course à pied pour une œuvre de charité', '2024-12-15', '10:00:00', 'Parc Central', 9000.00, 'Association Caritative', 13, 13, 13, 5),
('Conférence Santé', 'Nutrition et bien-être mental', '2025-01-05', '17:00:00', 'Salle de Conférence C', 1000.00, 'Club Bien-être', 14, 14, 14, 13),
('Tournoi de Poker', 'Compétition amicale de cartes', '2025-02-01', '18:00:00', 'Salle de Jeux BDE', 2000.00, 'Club Jeux', 15, 15, 15, 1),
('Table Ronde Énergie', 'Débat sur la transition énergétique', '2025-04-01', '16:00:00', 'Amphithéâtre B', 7500.00, 'Association Écolo', 16, 16, 16, 16),
('Dégustation Chocolat', 'Découverte des grands crus de chocolat', '2025-03-17', '15:00:00', 'Salon des Étudiants', 3000.00, 'Club Gourmand', 17, 17, 17, 17),
('Atelier Drone', 'Assemblage et pilotage de drones', '2025-05-22', '14:00:00', 'Atelier Technique', 10000.00, 'Club Technique', 18, 18, 18, 19),
('Bourse aux Livres', 'Vente et échange de livres d\'occasion', '2025-04-05', '09:00:00', 'Kiosque Central', 4500.00, 'Club Littéraire', 19, 19, 19, 9),
('Soirée Jeux de Société', 'Jeux de société et convivialité', '2025-01-15', '19:30:00', 'Cafétéria', 2500.00, 'Comité Social', 20, 20, 20, 6);

