/* Pharmacy */

INSERT INTO F23_S003_T1_Pharmacy (ph_name, ph_id) VALUES
("Pharmacy1", 1), ('Pharmacy2', 2), ('Pharmacy3', 3), ('Pharmacy4', 4), ('Pharmacy5', 5), ('Pharmacy6', 6), ('Pharmacy7', 7);


/* Hospital Branch */

INSERT INTO F23_S003_T1_Hospital_Branch  (hos_id, name, st_address, city, state, country, zip, pharmacy_id) VALUES
(1, 'HospitalBranch1', '123 Main St', 'City1', 'Texas', 'USA', '12345', 1),
(2, 'HospitalBranch2', '456 Oak St', 'City2', 'Texas', 'USA', '23456', 2),
(3, 'HospitalBranch3', '789 Pine St', 'City3', 'Texas', 'USA', '34567', 3),
(4, 'HospitalBranch4', '101 Elm St', 'City4', 'Texas', 'USA', '45678', 4),
(5, 'HospitalBranch5', '202 Maple St', 'City5', 'Texas', 'USA', '56789', 5),
(6, 'HospitalBranch6', '303 Birch St', 'City6', 'Texas', 'USA', '67890', 6),
(7, 'HospitalBranch7', '404 Cedar St', 'City7', 'Texas', 'USA', '78901', 7);


/*Hospital Services*/

INSERT INTO F23_S003_T1_Hosp_services (hos_id, service_name, cost) VALUES
-- Hospital 1 (8 services)
(1, 'Emergency Room', 500),
(1, 'X-ray', 150),
(1, 'MRI Scan', 800),
(1, 'Blood Test', 75),
(1, 'Physical Therapy', 200),
(1, 'Maternity Care', 1000),
(1, 'Cardiology Consultation', 300),
(1, 'Orthopedic Surgery', 1500),

-- Hospital 2 (7 services)
(2, 'Emergency Room', 550),
(2, 'X-ray', 150),
(2, 'MRI Scan', 800),
(2, 'Blood Test', 75),
(2, 'Physical Therapy', 200),
(2, 'Maternity Care', 1000),
(2, 'Cardiology Consultation', 300),

-- Hospital 3 (9 services)
(3, 'Emergency Room', 520),
(3, 'X-ray', 150),
(3, 'MRI Scan', 800),
(3, 'Blood Test', 75),
(3, 'Physical Therapy', 200),
(3, 'Maternity Care', 1000),
(3, 'Cardiology Consultation', 300),
(3, 'Orthopedic Surgery', 1500),
(3, 'Psychiatry Consultation', 250),

-- Hospital 4 (7 services)
(4, 'Emergency Room', 530),
(4, 'X-ray', 150),
(4, 'MRI Scan', 800),
(4, 'Blood Test', 75),
(4, 'Physical Therapy', 200),
(4, 'Maternity Care', 1000),
(4, 'Cardiology Consultation', 300),

-- Hospital 5 (8 services)
(5, 'Emergency Room', 480),
(5, 'X-ray', 150),
(5, 'MRI Scan', 800),
(5, 'Blood Test', 75),
(5, 'Physical Therapy', 200),
(5, 'Maternity Care', 1000),
(5, 'Cardiology Consultation', 300),
(5, 'Orthopedic Surgery', 1500),

-- Hospital 6 (10 services)
(6, 'Emergency Room', 600),
(6, 'X-ray', 150),
(6, 'MRI Scan', 800),
(6, 'Blood Test', 75),
(6, 'Physical Therapy', 200),
(6, 'Maternity Care', 1000),
(6, 'Cardiology Consultation', 300),
(6, 'Orthopedic Surgery', 1500),
(6, 'Psychiatry Consultation', 250),
(6, 'Dental Services', 120),

-- Hospital 7 (6 services)
(7, 'Emergency Room', 550),
(7, 'X-ray', 150),
(7, 'MRI Scan', 800),
(7, 'Blood Test', 75),
(7, 'Physical Therapy', 200),
(7, 'Maternity Care', 1000);


/*Medicines*/

INSERT INTO F23_S003_T1_Medicines (m_id, manufacturing_company, name, cost, supplier) VALUES
-- 1 to 26: Real medicines
(1, 'Pfizer', 'Ibuprofen', 10, 'MedSupply Inc.'),
(2, 'Johnson & Johnson', 'Paracetamol', 8, 'PharmaConnections'),
(3, 'Novartis', 'Aspirin', 7, 'GlobalHealth Supplies'),
(4, 'AstraZeneca', 'Lisinopril', 15, 'MediTrade Co.'),
(5, 'GlaxoSmithKline', 'Atorvastatin', 20, 'HealthLink Pharma'),
(6, 'Merck', 'Metformin', 12, 'MedRx Distributors'),
(7, 'Bayer', 'Omeprazole', 18, 'PharmaHub Services'),
(8, 'Sanofi', 'Amoxicillin', 15, 'MediCare Distributors'),
(9, 'Roche', 'Simvastatin', 22, 'GlobalMed Solutions'),
(10, 'MegaPharm', 'Clopidogrel', 25, 'MediSupply Network'),
(11, 'BioHealth', 'Ciprofloxacin', 14, 'PharmaDirect Ltd.'),
(12, 'MediCo', 'Duloxetine', 30, 'HealthLine Distributors'),
(13, 'HealthMasters', 'Levothyroxine', 13, 'MediServe Pharma'),
(14, 'MediLabs', 'Losartan', 17, 'PharmaConnect Solutions'),
(15, 'CarePharma', 'Diazepam', 11, 'MediLink Pharma'),
(16, 'WellnessRUs', 'Rosuvastatin', 23, 'HealthWave Distributors'),
(17, 'GlobalCure', 'Fluoxetine', 19, 'PharmaNet Services'),
(18, 'PharmaGlobe', 'Warfarin', 16, 'MediTrade Co.'),
(19, 'HealthVista', 'Metoprolol', 14, 'MediRx Distributors'),
(20, 'PharmaPlus', 'Cetirizine', 9, 'PharmaHub Services'),
(21, 'MediCure', 'Hydrochlorothiazide', 12, 'MediCare Distributors'),
(22, 'GloPharm', 'Prednisone', 18, 'GlobalMed Solutions'),
(23, 'MediLife', 'Sertraline', 16, 'MediSupply Network'),
(24, 'DirectMeds', 'Albuterol', 25, 'PharmaDirect Ltd.'),
(25, 'HealthLine', 'Furosemide', 15, 'HealthLine Distributors'),
(26, 'PharmaNetic', 'Gabapentin', 20, 'MediServe Pharma'),

-- 27 to 52: Random medicines and names
(27, 'MediHealth', 'Ranitidine', 10, 'PharmaSolutions'),
(28, 'PharmaPower', 'Methylphenidate', 15, 'MediConnect'),
(29, 'GlobalMeds', 'Celecoxib', 12, 'PharmaLink Solutions'),
(30, 'HealthPulse', 'Esomeprazole', 18, 'GlobalHealth Pharma'),
(31, 'LifeCure', 'Venlafaxine', 14, 'MediPro Distributors'),
(32, 'PharmaWise', 'Hydroxyzine', 22, 'HealthWise Pharma'),
(33, 'HealthExpress', 'Meloxicam', 20, 'MediExpress'),
(34, 'WellCare', 'Cephalexin', 9, 'PharmaWorld Distributors'),
(35, 'MediCraze', 'Amlodipine', 16, 'GlobalMedicare'),
(36, 'PharmaEase', 'Escitalopram', 13, 'MediPharm Connect'),
(37, 'HealthSupply', 'Trazodone', 18, 'PharmaSupplies'),
(38, 'MediSource', 'Carvedilol', 14, 'GlobalPharma Services'),
(39, 'PharmaLogistics', 'Olanzapine', 25, 'MediLogistics'),
(40, 'ExpressHealth', 'Clonidine', 11, 'PharmaExpress Solutions'),
(41, 'HealthCareHub', 'Pioglitazone', 20, 'HealthCare Distributors'),
(42, 'MediDirect', 'Loratadine', 8, 'MediDirect Services'),
(43, 'PharmaSolutions', 'Mirtazapine', 16, 'PharmaConnect Solutions'),
(44, 'MediConnect Pharma', 'Doxycycline', 12, 'MediConnect Pharma'),
(45, 'HealthLink Distributors', 'Sildenafil', 22, 'HealthLine Distributors'),
(46, 'MediLink Pharma', 'Bupropion', 17, 'MediLink Pharma'),
(47, 'PharmaTrade Solutions', 'Amitriptyline', 14, 'PharmaTrade Solutions'),
(48, 'HealthNet Pharma', 'Risperidone', 19, 'HealthNet Pharma'),
(49, 'MediSupply Network', 'Tramadol', 15, 'MediSupply Network'),
(50, 'PharmaHub Services', 'Dulcolax', 10, 'PharmaHub Services'),
(51, 'MediCare Distributors', 'Valsartan', 18, 'MediCare Distributors'),
(52, 'GlobalMed Solutions', 'Lisinopril', 15, 'GlobalMed Solutions');


/*Sells*/

INSERT INTO F23_S003_T1_Sells (Pharmacy_id, Medicine_id) VALUES
-- Pharmacy 1
(1, 1), (1, 9), (1, 13), (1, 22), (1, 25), (1, 28), (1, 33), (1, 37), (1, 39), (1, 40),
(1, 43), (1, 44), (1, 47), (1, 2), (1, 3), (1, 4), (1, 5), (1, 6), (1, 7), (1, 8),
(1, 10), (1, 11), (1, 12), (1, 14), (1, 15), (1, 16), (1, 17), (1, 18), (1, 19), (1, 20),
(1, 21), (1,2), (1,4), (1,6), (1,8), (1,10), (1,14), (1,18), (1,21),

-- Pharmacy 2
(2, 27), (2, 28), (2, 29), (2, 30), (2, 31), (2, 32), (2, 33), (2, 34), (2, 35), (2, 36),
(2, 37), (2, 38), (2, 39), (2, 40), (2, 41), (2, 42), (2, 43), (2, 44), (2, 45), (2, 46),
(2, 47), (2, 48), (2, 49), (2, 50), (2, 51), (2, 52), (2, 24), (2, 30), (2, 32), (2, 36), 
(2, 42), (2, 45),

-- Pharmacy 3
(3, 26), (3, 1), (3, 3), (3, 5), (3, 7), (3, 9), (3, 11), (3, 13), (3, 15), (3, 17),
(3, 19), (3, 21), (3, 23), (3, 25), (3, 27), (3, 29), (3, 31), (3, 33), (3, 35), (3, 37),
(3, 39), (3,2), (3,4), (3,6), (3,8), (3,10), (3,14), (3,18), (3,21),

-- Pharmacy 4
(4, 46), (4, 43), (4, 50), (4, 1), (4, 15), (4, 23), (4, 19), (4, 26), (4, 48), (4, 5),
(4, 14), (4, 21), (4, 9), (4, 25), (4, 38), (4, 35), (4, 20), (4, 51), (4, 10), (4, 40),
(4, 41), (4,2), (4,4), (4,6), (4,8), (4,10), (4,14), (4,18), (4,21),

-- Pharmacy 5
(5, 12), (5, 22), (5, 16), (5, 29), (5, 31), (5, 43), (5, 39), (5, 37), (5, 1), (5, 50),
(5, 7), (5, 24), (5, 25), (5, 51), (5, 19), (5, 46), (5, 28), (5, 30), (5, 34), (5, 15),
(5, 35), (5,2), (5,4), (5,6), (5,8), (5,10), (5,14), (5,18), (5,21),

-- Pharmacy 6
(6, 3), (6, 4), (6, 5), (6, 6), (6, 9), (6, 11), (6, 20), (6, 25), (6, 27), (6, 38),
(6, 1), (6, 26), (6, 18), (6, 50), (6, 29), (6, 19), (6, 16), (6, 40), (6, 28), (6, 2),
(6, 35), (2, 24), (2, 30), (2, 32), (2, 36), (2, 42), (2, 45),

-- Pharmacy 7
(7, 49), (7, 8), (7, 35), (7, 47), (7, 25), (7, 32), (7, 23), (7, 38), (7, 17), (7, 31),
(7, 9), (7, 50), (7, 1), (7, 4), (7, 29), (7, 14), (7, 42), (7, 41), (7, 24), (7, 22),
(7, 11), (2, 24), (2, 30), (2, 32), (2, 36), (2, 42), (2, 45);


/*Employees*/

INSERT INTO F23_S003_T1_Employees (e_id, fname, mname, lname, designation, work_hours, salary, dob, h_id) VALUES
-- Hospital 1
(1, 'Alice', 'M.', 'Johnson', 'Nurse', 40, 5000, '1990-05-15', 1),
(2, 'Bob', 'S.', 'Smith', 'Support Staff', 35, 4500, '1988-09-21', 1),
(3, 'Catherine', 'R.', 'Williams', 'Administrative Staff', 40, 5500, '1985-12-03', 1),
(4, 'David', 'L.', 'Brown', 'Receptionist', 30, 4000, '1993-07-10', 1),
(5, 'Emily', 'A.', 'Davis', 'Security Personnel', 35, 4800, '1987-03-28', 1),
(6, 'Frank', 'P.', 'Jones', 'Nurse', 40, 5000, '1992-11-14', 1),
(7, 'Grace', 'E.', 'Clark', 'Support Staff', 35, 4500, '1989-04-08', 1),
-- Hospital 2
(8, 'Henry', 'D.', 'Wilson', 'Administrative Staff', 40, 5500, '1984-08-18', 2),
(9, 'Ivy', 'K.', 'Taylor', 'Receptionist', 30, 4000, '1995-02-25', 2),
(10, 'Jack', 'M.', 'Moore', 'Security Personnel', 35, 4800, '1991-06-17', 2),
(11, 'Karen', 'N.', 'Johnson', 'Nurse', 40, 5000, '1986-10-05', 2),
(12, 'Leo', 'C.', 'White', 'Support Staff', 35, 4500, '1994-01-12', 2),
-- Hospital 3
(13, 'Mia', 'J.', 'Turner', 'Administrative Staff', 40, 5500, '1983-04-30', 3),
(14, 'Noah', 'B.', 'Anderson', 'Receptionist', 30, 4000, '1996-08-07', 3),
(15, 'Olivia', 'S.', 'Wright', 'Security Personnel', 35, 4800, '1990-12-22', 3),
(16, 'Peter', 'Q.', 'Harris', 'Nurse', 40, 5000, '1987-02-14', 3),
(17, 'Quinn', 'R.', 'Perez', 'Support Staff', 35, 4500, '1993-09-28', 3),
-- Hospital 4
(18, 'Rachel', 'F.', 'Scott', 'Administrative Staff', 40, 5500, '1986-01-09', 4),
(19, 'Samuel', 'G.', 'Miller', 'Receptionist', 30, 4000, '1991-05-26', 4),
(20, 'Sophia', 'H.', 'Martin', 'Security Personnel', 35, 4800, '1988-10-12', 4),
(21, 'Thomas', 'I.', 'Garcia', 'Nurse', 40, 5000, '1985-03-18', 4),
-- Hospital 5
(22, 'Uma', 'L.', 'Lopez', 'Support Staff', 35, 4500, '1992-07-03', 5),
(23, 'Vincent', 'M.', 'Ward', 'Administrative Staff', 40, 5500, '1989-11-20', 5),
(24, 'Wendy', 'N.', 'King', 'Receptionist', 30, 4000, '1994-04-05', 5),
(25, 'Xavier', 'O.', 'Baker', 'Security Personnel', 35, 4800, '1987-08-21', 5),
-- Hospital 6
(26, 'Yvonne', 'P.', 'Evans', 'Nurse', 40, 5000, '1984-12-07', 6),
(27, 'Zachary', 'Q.', 'Turner', 'Support Staff', 35, 4500, '1990-04-24', 6),
(28, 'Abigail', 'R.', 'Rivera', 'Administrative Staff', 40, 5500, '1987-09-10', 6),
(29, 'Benjamin', 'S.', 'Collins', 'Receptionist', 30, 4000, '1993-01-27', 6),
(30, 'Charlotte', 'T.', 'Barnes', 'Security Personnel', 35, 4800, '1988-06-13', 6),
-- Hospital 7
(31, 'Daniel', 'U.', 'Hill', 'Nurse', 40, 5000, '1985-10-30', 7),
(32, 'Elaine', 'V.', 'Mitchell', 'Support Staff', 35, 4500, '1992-02-16', 7),
(33, 'Felix', 'W.', 'Stewart', 'Administrative Staff', 40, 5500, '1989-06-03', 7),
(34, 'Gemma', 'X.', 'Jones', 'Receptionist', 30, 4000, '1994-11-19', 7),
(35, 'Harold', 'Y.', 'Cooper', 'Security Personnel', 35, 4800, '1986-03-07', 7),
-- Additional employees for missing medicine IDs
(36, 'Isabella', 'Z.', 'Wright', 'Nurse', 40, 5000, '1992-04-12', 1),
(37, 'James', 'A.', 'Baker', 'Support Staff', 35, 4500, '1987-08-18', 2),
(38, 'Katherine', 'B.', 'Cruz', 'Administrative Staff', 40, 5500, '1984-12-25', 3),
(39, 'Liam', 'C.', 'Gomez', 'Receptionist', 30, 4000, '1995-05-31', 4),
(40, 'Madison', 'D.', 'Torres', 'Security Personnel', 35, 4800, '1990-09-15', 5),
(41, 'Nathan', 'E.', 'Hall', 'Nurse', 40, 5000, '1986-01-22', 6),
(42, 'Oliver', 'F.', 'Ramirez', 'Support Staff', 35, 4500, '1993-06-07', 7),
(43, 'Penelope', 'G.', 'Fisher', 'Administrative Staff', 40, 5500, '1989-10-24', 1),
(44, 'Quincy', 'H.', 'Howard', 'Receptionist', 30, 4000, '1994-03-11', 2),
(45, 'Rose', 'I.', 'Coleman', 'Security Personnel', 35, 4800, '1987-07-28', 3),
(46, 'Sebastian', 'J.', 'Barnes', 'Nurse', 40, 5000, '1985-11-14', 4),
(47, 'Tessa', 'K.', 'Gordon', 'Support Staff', 35, 4500, '1992-04-29', 5),
(48, 'Ulysses', 'L.', 'Owens', 'Administrative Staff', 40, 5500, '1989-09-15', 6),
(49, 'Violet', 'M.', 'Hayes', 'Receptionist', 30, 4000, '1994-01-31', 7),
(50, 'William', 'N.', 'Harrison', 'Security Personnel', 35, 4800, '1987-06-17', 1),
(51, 'Xander', 'O.', 'Marshall', 'Nurse', 40, 5000, '1985-10-04', 2),
(52, 'Yasmine', 'P.', 'Nguyen', 'Support Staff', 35, 4500, '1992-01-21', 3),
(53, 'Zane', 'Q.', 'Larson', 'Administrative Staff', 40, 5500, '1989-05-08', 4),
(54, 'Ava', 'R.', 'Powell', 'Receptionist', 30, 4000, '1994-09-24', 5);



/*Employee_Contact*/

INSERT INTO F23_S003_T1_Employee_contact  (e_id, contact_no) VALUES
-- Employee 1
(1, '123-456-7890'),
(1, '987-654-3210'),
-- Employee 2
(2, '234-567-8901'),
(2, '876-543-2109'),
-- Employee 3
(3, '345-678-9012'),
-- Employee 4
(4, '456-789-0123'),
(4, '765-432-1098'),
-- Employee 5
(5, '567-890-1234'),
-- Employee 6
(6, '678-901-2345'),
(6, '876-543-2109'),
-- Employee 7
(7, '789-012-3456'),
-- Employee 8
(8, '890-123-4567'),
(8, '987-654-3210'),
-- Employee 9
(9, '901-234-5678'),
-- Employee 10
(10, '123-456-7890'),
(10, '234-567-8901'),
-- Employee 11
(11, '345-678-9012'),
(11, '456-789-0123'),
-- Employee 12
(12, '567-890-1234'),
-- Employee 13
(13, '678-901-2345'),
(13, '789-012-3456'),
-- Employee 14
(14, '890-123-4567'),
(14, '901-234-5678'),
-- Employee 15
(15, '123-456-7890'),
-- Employee 16
(16, '234-567-8901'),
(16, '345-678-9012'),
-- Employee 17
(17, '456-789-0123'),
(17, '567-890-1234'),
-- Employee 18
(18, '678-901-2345'),
-- Employee 19
(19, '789-012-3456'),
(19, '890-123-4567'),
-- Employee 20
(20, '901-234-5678'),
-- Employee 21
(21, '123-456-7890'),
(21, '234-567-8901'),
-- Employee 22
(22, '345-678-9012'),
(22, '456-789-0123'),
-- Employee 23
(23, '567-890-1234'),
-- Employee 24
(24, '678-901-2345'),
(24, '789-012-3456'),
-- Employee 25
(25, '890-123-4567'),
-- Employee 26
(26, '901-234-5678'),
(26, '123-456-7890'),
-- Employee 27
(27, '234-567-8901'),
-- Employee 28
(28, '345-678-9012'),
(28, '456-789-0123'),
-- Employee 29
(29, '567-890-1234'),
(29, '678-901-2345'),
-- Employee 30
(30, '789-012-3456'),
-- Employee 31
(31, '890-123-4567'),
(31, '901-234-5678'),
-- Employee 32
(32, '123-456-7890'),
(32, '234-567-8901'),
-- Employee 33
(33, '345-678-9012'),
-- Employee 34
(34, '456-789-0123'),
(34, '567-890-1234'),
-- Employee 35
(35, '678-901-2345'),
-- Employee 36
(36, '789-012-3456'),
(36, '890-123-4567'),
-- Employee 37
(37, '901-234-5678'),
-- Employee 38
(38, '123-456-7890'),
(38, '234-567-8901'),
-- Employee 39
(39, '345-678-9012'),
(39, '456-789-0123'),
-- Employee 40
(40, '567-890-1234'),
-- Employee 41
(41, '678-901-2345'),
(41, '789-012-3456'),
-- Employee 42
(42, '890-123-4567'),
-- Employee 43
(43, '901-234-5678'),
(43, '123-456-7890'),
-- Employee 44
(44, '234-567-8901'),
-- Employee 45
(45, '345-678-9012'),
(45, '456-789-0123'),
-- Employee 46
(46, '567-890-1234'),
(46, '678-901-2345'),
-- Employee 47
(47, '789-012-3456'),
-- Employee 48
(48, '890-123-4567'),
(48, '901-234-5678'),
-- Employee 49
(49, '123-456-7890'),
(49, '234-567-8901'),
-- Employee 50
(50, '345-678-9012'),
(50, '456-789-0123'),
-- Employee 51
(51, '567-890-1234'),
-- Employee 52
(52, '678-901-2345'),
(52, '789-012-3456'),
-- Employee 53
(53, '890-123-4567'),
-- Employee 54
(54, '901-234-5678'),
(54, '123-456-7890');


/*Doctors*/

INSERT INTO F23_S003_T1_Doctors (d_id, fname, mname, lname, dob, work_location, specialty, salary, hos_id) VALUES
-- Hospital 1
(1, 'Adam', 'A.', 'Anderson', '1980-04-15', 1, 'Cardiology', 8000, 1),
(2, 'Bella', 'B.', 'Brown', '1975-09-21', 1, 'Orthopedics', 8500, 1),
(3, 'Charlie', 'C.', 'Clark', '1972-12-03', 1, 'Pediatrics', 9000, 1),
(4, 'Daisy', 'D.', 'Davis', '1985-07-10', 1, 'Neurology', 9500, 1),
(5, 'Edward', 'E.', 'Evans', '1978-03-28', 1, 'Cardiology', 8000, 1),
(6, 'Fiona', 'F.', 'Fisher', '1987-11-14', 1, 'Orthopedics', 8500, 1),
(7, 'George', 'G.', 'Garcia', '1974-04-08', 1, 'Pediatrics', 9000, 1),
-- Hospital 2
(8, 'Hannah', 'H.', 'Hill', '1968-08-18', 2, 'Neurology', 9500, 2),
(9, 'Ian', 'I.', 'Irwin', '1992-02-25', 2, 'Cardiology', 8000, 2),
(10, 'Julia', 'J.', 'Jackson', '1977-06-17', 2, 'Orthopedics', 8500, 2),
(11, 'Kyle', 'K.', 'King', '1983-10-05', 2, 'Pediatrics', 9000, 2),
(12, 'Lily', 'L.', 'Lee', '1996-01-12', 2, 'Neurology', 9500, 2),
-- Hospital 3
(13, 'Mason', 'M.', 'Mitchell', '1965-04-30', 3, 'Cardiology', 8000, 3),
(14, 'Nina', 'N.', 'Nguyen', '1998-08-07', 3, 'Orthopedics', 8500, 3),
(15, 'Oliver', 'O.', 'Owens', '1982-12-22', 3, 'Pediatrics', 9000, 3),
(16, 'Penelope', 'P.', 'Perez', '1979-02-14', 3, 'Neurology', 9500, 3),
(17, 'Quinn', 'Q.', 'Quinn', '1986-09-28', 3, 'Cardiology', 8000, 3),
-- Hospital 4
(18, 'Ryan', 'R.', 'Rivera', '1979-01-09', 4, 'Orthopedics', 8500, 4),
(19, 'Sophia', 'S.', 'Stewart', '1984-05-26', 4, 'Pediatrics', 9000, 4),
(20, 'Tyler', 'T.', 'Taylor', '1991-10-12', 4, 'Neurology', 9500, 4),
(21, 'Ursula', 'U.', 'Upton', '1987-03-18', 4, 'Cardiology', 8000, 4),
-- Hospital 5
(22, 'Victor', 'V.', 'Vega', '1992-07-03', 5, 'Orthopedics', 8500, 5),
(23, 'Wendy', 'W.', 'Ward', '1989-11-20', 5, 'Pediatrics', 9000, 5),
(24, 'Xander', 'X.', 'Xu', '1994-04-05', 5, 'Neurology', 9500, 5),
(25, 'Yvonne', 'Y.', 'Young', '1987-08-21', 5, 'Cardiology', 8000, 5),
-- Hospital 6
(26, 'Zane', 'Z.', 'Zhang', '1984-12-07', 6, 'Orthopedics', 8500, 6),
(27, 'Alice', 'A.', 'Allen', '1990-04-24', 6, 'Pediatrics', 9000, 6),
(28, 'Ben', 'B.', 'Barnes', '1987-09-10', 6, 'Neurology', 9500, 6),
(29, 'Cara', 'C.', 'Cruz', '1993-01-27', 6, 'Cardiology', 8000, 6),
(30, 'David', 'D.', 'Diaz', '1988-06-13', 6, 'Orthopedics', 8500, 6),
-- Hospital 7
(31, 'Emma', 'E.', 'Ellis', '1985-10-30', 7, 'Pediatrics', 9000, 7),
(32, 'Felix', 'F.', 'Ferguson', '1992-02-16', 7, 'Neurology', 9500, 7),
(33, 'Grace', 'G.', 'Gomez', '1989-06-03', 7, 'Cardiology', 8000, 7),
(34, 'Henry', 'H.', 'Harrison', '1994-11-19', 7, 'Orthopedics', 8500, 7),
(35, 'Isabel', 'I.', 'Irwin', '1986-03-07', 7, 'Pediatrics', 9000, 7),
-- Additional Doctors
(36, 'James', 'J.', 'Johnson', '1970-05-15', 1, 'Neurology', 9500, 1),
(37, 'Katherine', 'K.', 'Kennedy', '1995-05-31', 4, 'Cardiology', 8000, 4),
(38, 'Liam', 'L.', 'Lopez', '1980-09-15', 7, 'Orthopedics', 8500, 7),
(39, 'Mia', 'M.', 'Miller', '1976-01-22', 2, 'Pediatrics', 9000, 2),
(40, 'Nathan', 'N.', 'Nguyen', '1993-06-07', 5, 'Neurology', 9500, 5),
(41, 'Olivia', 'O.', 'Owens', '1988-10-24', 3, 'Cardiology', 8000, 3),
(42, 'Peter', 'P.', 'Perez', '1994-03-11', 6, 'Orthopedics', 8500, 6),
(43, 'Quincy', 'Q.', 'Quinn', '1972-10-24', 1, 'Pediatrics', 9000, 1),
(44, 'Rachel', 'R.', 'Rivera', '1988-03-11', 2, 'Neurology', 9500, 2),
(45, 'Samuel', 'S.', 'Stewart', '1994-07-28', 3, 'Cardiology', 8000, 3),
(46, 'Tessa', 'T.', 'Taylor', '1975-11-14', 4, 'Orthopedics', 8500, 4),
(47, 'Ulysses', 'U.', 'Upton', '1982-04-29', 5, 'Pediatrics', 9000, 5),
(48, 'Violet', 'V.', 'Vega', '1989-09-15', 6, 'Neurology', 9500, 6),
(49, 'William', 'W.', 'Ward', '1994-01-31', 7, 'Cardiology', 8000, 7),
(50, 'Xander', 'X.', 'Xu', '1977-06-17', 1, 'Orthopedics', 8500, 1),
(51, 'Yasmine', 'Y.', 'Young', '1983-10-04', 2, 'Pediatrics', 9000, 2),
(52, 'Zane', 'Z.', 'Zhang', '1992-01-21', 3, 'Neurology', 9500, 3),
(53, 'Ava', 'A.', 'Allen', '1978-05-08', 4, 'Cardiology', 8000, 4),
(54, 'Benjamin', 'B.', 'Barnes', '1989-09-24', 5, 'Orthopedics', 8500, 5),
(55, 'Charlotte', 'C.', 'Cruz', '1986-01-31', 6, 'Pediatrics', 9000, 6),
(56, 'Daniel', 'D.', 'Diaz', '1990-06-17', 7, 'Neurology', 9500, 7);


/*Doc_Contact*/

INSERT INTO F23_S003_T1_Doc_contact (d_id, contact_no) VALUES
-- Doctor 1
(1, '123-456-7890'),
(1, '987-654-3210'),
-- Doctor 2
(2, '234-567-8901'),
(2, '876-543-2109'),
-- Doctor 3
(3, '345-678-9012'),
-- Doctor 4
(4, '456-789-0123'),
(4, '765-432-1098'),
-- Doctor 5
(5, '567-890-1234'),
-- Doctor 6
(6, '678-901-2345'),
(6, '876-543-2109'),
-- Doctor 7
(7, '789-012-3456'),
-- Doctor 8
(8, '890-123-4567'),
(8, '987-654-3210'),
-- Doctor 9
(9, '901-234-5678'),
-- Doctor 10
(10, '123-456-7890'),
(10, '234-567-8901'),
-- Doctor 11
(11, '345-678-9012'),
(11, '456-789-0123'),
-- Doctor 12
(12, '567-890-1234'),
-- Doctor 13
(13, '678-901-2345'),
(13, '789-012-3456'),
-- Doctor 14
(14, '890-123-4567'),
(14, '901-234-5678'),
-- Doctor 15
(15, '123-456-7890'),
-- Doctor 16
(16, '234-567-8901'),
(16, '345-678-9012'),
-- Doctor 17
(17, '456-789-0123'),
(17, '567-890-1234'),
-- Doctor 18
(18, '678-901-2345'),
-- Doctor 19
(19, '789-012-3456'),
(19, '890-123-4567'),
-- Doctor 20
(20, '901-234-5678'),
-- Doctor 21
(21, '123-456-7890'),
(21, '234-567-8901'),
-- Doctor 22
(22, '345-678-9012'),
(22, '456-789-0123'),
-- Doctor 23
(23, '567-890-1234'),
-- Doctor 24
(24, '678-901-2345'),
(24, '789-012-3456'),
-- Doctor 25
(25, '890-123-4567'),
-- Doctor 26
(26, '901-234-5678'),
(26, '123-456-7890'),
-- Doctor 27
(27, '234-567-8901'),
-- Doctor 28
(28, '345-678-9012'),
(28, '456-789-0123'),
-- Doctor 29
(29, '567-890-1234'),
(29, '678-901-2345'),
-- Doctor 30
(30, '789-012-3456'),
-- Doctor 31
(31, '890-123-4567'),
(31, '901-234-5678'),
-- Doctor 32
(32, '123-456-7890'),
(32, '234-567-8901'),
-- Doctor 33
(33, '345-678-9012'),
-- Doctor 34
(34, '456-789-0123'),
(34, '567-890-1234'),
-- Doctor 35
(35, '678-901-2345'),
-- Doctor 36
(36, '789-012-3456'),
(36, '890-123-4567'),
-- Doctor 37
(37, '901-234-5678'),
-- Doctor 38
(38, '123-456-7890'),
(38, '234-567-8901'),
-- Doctor 39
(39, '345-678-9012'),
(39, '456-789-0123'),
-- Doctor 40
(40, '567-890-1234'),
-- Doctor 41
(41, '678-901-2345'),
(41, '789-012-3456'),
-- Doctor 42
(42, '890-123-4567'),
-- Doctor 43
(43, '901-234-5678'),
(43, '123-456-7890'),
-- Doctor 44
(44, '234-567-8901'),
-- Doctor 45
(45, '345-678-9012'),
(45, '456-789-0123'),
-- Doctor 46
(46, '567-890-1234'),
(46, '678-901-2345'),
-- Doctor 47
(47, '789-012-3456'),
-- Doctor 48
(48, '890-123-4567'),
(48, '901-234-5678'),
-- Doctor 49
(49, '123-456-7890'),
(49, '234-567-8901'),
-- Doctor 50
(50, '345-678-9012'),
(50, '456-789-0123'),
-- Doctor 51
(51, '567-890-1234'),
-- Doctor 52
(52, '678-901-2345'),
(52, '789-012-3456'),
-- Doctor 53
(53, '890-123-4567'),
-- Doctor 54
(54, '901-234-5678'),
(54, '123-456-7890'),
-- Doctor 55
(55, '234-567-8901'),
-- Doctor 56
(56, '345-678-9012'),
(56, '456-789-0123');

/*Prescribes*/

INSERT INTO F23_S003_T1_Prescribes (doctor_id, medicine_id, pres_date, frequency, dosage) VALUES
-- Doctor 1
(1, 1, '2023-01-15', 'Once a day', '10mg'),
(1, 3, '2023-02-20', 'Twice a day', '20mg'),
-- Doctor 2
(2, 2, '2023-03-10', 'Once a day', '15mg'),
(2, 4, '2023-04-25', 'Once a day', '10mg'),
-- Doctor 3
(3, 3, '2023-05-18', 'Twice a day', '25mg'),
(3, 5, '2023-06-30', 'Once a day', '30mg'),
-- Doctor 4
(4, 4, '2023-07-15', 'Twice a day', '20mg'),
(4, 6, '2023-08-22', 'Once a day', '15mg'),
-- Doctor 5
(5, 5, '2023-09-05', 'Once a day', '10mg'),
-- Doctor 6
(6, 6, '2023-10-12', 'Twice a day', '25mg'),
(6, 8, '2023-11-28', 'Once a day', '30mg'),
-- Doctor 7
(7, 7, '2023-12-05', 'Once a day', '10mg'),
(7, 9, '2024-01-19', 'Twice a day', '20mg'),
-- Doctor 8
(8, 8, '2024-02-14', 'Once a day', '15mg'),
(8, 10, '2024-03-30', 'Once a day', '10mg'),
-- Doctor 9
(9, 9, '2024-04-10', 'Twice a day', '25mg'),
-- Doctor 10
(10, 10, '2024-05-15', 'Once a day', '30mg'),
(10, 12, '2024-06-22', 'Twice a day', '20mg'),
-- Doctor 11
(11, 11, '2024-07-08', 'Once a day', '15mg'),
(11, 13, '2024-08-14', 'Once a day', '10mg'),
-- Doctor 12
(12, 12, '2024-09-18', 'Twice a day', '25mg'),
-- Doctor 13
(13, 13, '2024-10-25', 'Once a day', '30mg'),
(13, 15, '2024-11-30', 'Twice a day', '20mg'),
-- Doctor 14
(14, 14, '2025-01-05', 'Once a day', '15mg'),
(14, 16, '2025-02-22', 'Once a day', '10mg'),
-- Doctor 15
(15, 15, '2025-03-15', 'Twice a day', '25mg'),
-- Doctor 16
(16, 16, '2025-04-20', 'Once a day', '30mg'),
(16, 18, '2025-05-28', 'Once a day', '10mg'),
-- Doctor 17
(17, 17, '2025-06-10', 'Twice a day', '20mg'),
(17, 19, '2025-07-19', 'Twice a day', '15mg'),
-- Doctor 18
(18, 18, '2025-08-30', 'Once a day', '10mg'),
(18, 20, '2025-09-14', 'Once a day', '25mg'),
-- Doctor 19
(19, 19, '2025-10-18', 'Twice a day', '30mg'),
-- Doctor 20
(20, 20, '2025-11-25', 'Once a day', '10mg'),
(20, 22, '2026-01-01', 'Once a day', '20mg'),
-- Doctor 21
(21, 21, '2026-02-08', 'Twice a day', '15mg'),
(21, 23, '2026-03-15', 'Twice a day', '10mg'),
-- Doctor 22
(22, 22, '2026-04-20', 'Once a day', '25mg'),
-- Doctor 23
(23, 23, '2026-05-28', 'Once a day', '30mg'),
(23, 25, '2026-06-10', 'Twice a day', '20mg'),
-- Doctor 24
(24, 24, '2026-07-19', 'Once a day', '15mg'),
(24, 26, '2026-08-30', 'Once a day', '10mg'),
-- Doctor 25
(25, 25, '2026-09-14', 'Twice a day', '25mg'),
-- Doctor 26
(26, 26, '2026-10-18', 'Once a day', '30mg'),
(26, 28, '2026-11-25', 'Twice a day', '10mg'),
-- Doctor 27
(27, 27, '2027-01-01', 'Once a day', '20mg'),
(27, 29, '2027-02-08', 'Once a day', '15mg'),
-- Doctor 28
(28, 28, '2027-03-15', 'Twice a day', '10mg'),
-- Doctor 29
(29, 29, '2027-04-20', 'Once a day', '25mg'),
(29, 31, '2027-05-28', 'Once a day', '30mg'),
-- Doctor 30
(30, 30, '2027-06-10', 'Twice a day', '20mg'),
(30, 32, '2027-07-19', 'Twice a day', '15mg'),
-- Doctor 31
(31, 31, '2027-08-30', 'Once a day', '10mg'),
(31, 33, '2027-09-14', 'Once a day', '25mg'),
-- Doctor 32
(32, 32, '2027-10-18', 'Twice a day', '30mg'),
-- Doctor 33
(33, 33, '2027-11-25', 'Once a day', '10mg'),
(33, 35, '2028-01-01', 'Once a day', '20mg'),
-- Doctor 34
(34, 34, '2028-02-08', 'Twice a day', '15mg'),
(34, 36, '2028-03-15', 'Twice a day', '10mg'),
-- Doctor 35
(35, 35, '2028-04-20', 'Once a day', '25mg'),
-- Doctor 36
(36, 36, '2028-05-28', 'Once a day', '30mg'),
(36, 38, '2028-06-10', 'Twice a day', '20mg'),
-- Doctor 37
(37, 37, '2028-07-19', 'Once a day', '15mg'),
(37, 39, '2028-08-30', 'Once a day', '10mg'),
-- Doctor 38
(38, 38, '2028-09-14', 'Twice a day', '25mg'),
-- Doctor 39
(39, 39, '2028-10-18', 'Once a day', '30mg'),
(39, 41, '2028-11-25', 'Twice a day', '10mg'),
-- Doctor 40
(40, 40, '2029-01-01', 'Once a day', '20mg'),
(40, 42, '2029-02-08', 'Once a day', '15mg'),
-- Doctor 41
(41, 41, '2029-03-15', 'Twice a day', '10mg'),
-- Doctor 42
(42, 42, '2029-04-20', 'Once a day', '25mg'),
(42, 44, '2029-05-28', 'Once a day', '30mg'),
-- Doctor 43
(43, 43, '2029-06-10', 'Twice a day', '20mg'),
(43, 45, '2029-07-19', 'Twice a day', '15mg'),
-- Doctor 44
(44, 44, '2029-08-30', 'Once a day', '10mg'),
(44, 46, '2029-09-14', 'Once a day', '25mg'),
-- Doctor 45
(45, 45, '2029-10-18', 'Twice a day', '30mg'),
-- Doctor 46
(46, 46, '2029-11-25', 'Once a day', '10mg'),
(46, 48, '2030-01-01', 'Once a day', '20mg'),
-- Doctor 47
(47, 47, '2030-02-08', 'Twice a day', '15mg'),
(47, 49, '2030-03-15', 'Twice a day', '10mg'),
-- Doctor 48
(48, 48, '2030-04-20', 'Once a day', '25mg'),
-- Doctor 49
(49, 49, '2030-05-28', 'Once a day', '30mg'),
(49, 51, '2030-06-10', 'Twice a day', '20mg'),
-- Doctor 50
(50, 50, '2030-07-19', 'Once a day', '15mg'),
(50, 52, '2030-08-30', 'Once a day', '10mg'),
-- Doctor 51
(51, 51, '2030-09-14', 'Twice a day', '25mg'),
-- Doctor 52
(52, 52, '2030-10-18', 'Once a day', '30mg'),
(52, 54, '2030-11-25', 'Once a day', '10mg'),
-- Doctor 53
(53, 53, '2031-01-01', 'Twice a day', '20mg'),
(53, 55, '2031-02-08', 'Once a day', '15mg'),
-- Doctor 54
(54, 54, '2031-03-15', 'Once a day', '10mg'),
-- Doctor 55
(55, 55, '2031-04-20', 'Twice a day', '25mg'),
(55, 56, '2031-05-28', 'Twice a day', '30mg'),
-- Doctor 56
(56, 56, '2031-06-10', 'Once a day', '20mg');


/* Patients */



INSERT INTO F23_S003_T1_Patients (pt_id, fname, mname, lname, dob, purpose_of_visiting, insurance_id, insurance_name, hospital_visiting_location, patient_disease, allergies, occupation, treat_date, treat_id, cost_of_treat, diagnosis, hos_id, doc_id) VALUES
(1, 'Jon', 'A.', 'Doe', '1980-05-15', 'Checkup', 'A123', 'InsuranceCo1', 'City1', 'Fever', 'None', 'Engineer', '2022-01-05', 1, 300, 'Cardiology Consultation', 1, 1),
-- Patient 2
(2, 'Jae', 'B.', 'Smith', '1992-08-22', 'Injury', 'B456', 'InsuranceCo2', 'City1', 'Orthopedic issues', 'Peanuts', 'Teacher', '2022-02-10', 2, 1500, 'Orthopedic Surgery', 1, 2),
-- Patient 3
(3, 'Robrt', 'C.', 'Johnson', '1985-03-10', 'Emergency', 'C789', 'InsuranceCo3', 'City1', 'Heart Attack', 'None', 'Software Engineer', '2022-03-18', 3, 500, 'Emergency Room', 1, 3),
-- Patient 4
(4, 'Emly', 'D.', 'Davis', '1998-11-05', 'Checkup', 'D012', 'InsuranceCo4', 'City1', 'General Checkup', 'None', 'Doctor', '2022-04-15', 4, 200, 'Physical Therapy', 1, 4),
-- Patient 5
(5, 'Mihael', 'E.', 'Miller', '1976-09-14', 'Injury', 'E345', 'InsuranceCo5', 'City1', 'Fracture', 'Pollen', 'Lawyer', '2022-05-20', 5, 1500, 'Orthopedic Surgery', 1, 5),
-- Patient 6
(6, 'Oliia', 'F.', 'Fisher', '1990-01-31', 'Checkup', 'F678', 'InsuranceCo6', 'City1', 'Routine Checkup', 'None', 'Artist', '2022-06-25', 6, 300, 'Cardiology Consultation', 1, 6),
-- Patient 7
(7, 'Wiliam', 'G.', 'Green', '1982-07-28', 'Emergency', 'A123', 'InsuranceCo1', 'City1', 'Shortness of Breath', 'Dust', 'Pilot', '2022-07-01', 7, 500, 'Emergency Room', 1, 7),
-- Patient 8
(8, 'Sopia', 'H.', 'Hill', '1995-04-10', 'Injury', 'B456', 'InsuranceCo2', 'City1', 'Back Pain', 'None', 'Physical Therapist', '2022-08-08', 8, 200, 'Physical Therapy', 1, 36),
-- Patient 9
(9, 'Etan', 'I.', 'Irwin', '1988-06-17', 'Checkup', 'C789', 'InsuranceCo3', 'City1', 'Annual Checkup', 'Pollen', 'Engineer', '2022-09-14', 9, 300, 'Cardiology Consultation', 1, 43),
-- Patient 10
(10, 'Avaa', 'J.', 'Jones', '1978-12-05', 'Emergency', 'D012', 'InsuranceCo4', 'City1', 'Severe Injury', 'None', 'Surgeon', '2022-10-20', 10, 500, 'Emergency Room', 1, 50),
-- Patient 11
(11, 'Noh', 'K.', 'Kelly', '1993-02-28', 'Injury', 'E345', 'InsuranceCo5', 'City1', 'Fractured Arm', 'Peanuts', 'Teacher', '2022-11-25', 11, 1500, 'Orthopedic Surgery', 1, 1),
-- Patient 12
(12, 'Ema', 'L.', 'Lopez', '1970-10-08', 'Checkup', 'F678', 'InsuranceCo6', 'City1', 'General Checkup', 'None', 'Nurse', '2022-12-30', 12, 200, 'Physical Therapy', 1, 2),
-- Patient 13
(13, 'Liaam', 'M.', 'Mitchell', '1984-04-01', 'Emergency', 'G901', 'InsuranceCo7', 'City1', 'Chest Pain', 'Dust', 'Software Engineer', '2023-01-05', 13, 500, 'Emergency Room', 1, 3),
-- Patient 14
(14, 'Isabaella', 'N.', 'Nelson', '1997-09-18', 'Injury', 'H234', 'InsuranceCo8', 'City1', 'Leg Injury', 'None', 'Doctor', '2023-02-10', 14, 1500, 'Orthopedic Surgery', 1, 4),
-- Patient 15
(15, 'Jameas', 'O.', 'Owens', '1975-05-30', 'Checkup', 'I567', 'InsuranceCo9', 'City1', 'Routine Checkup', 'Pollen', 'Lawyer', '2023-03-18', 15, 300, 'Cardiology Consultation', 1, 5),
-- Patient 16
(16, 'Miaaa', 'P.', 'Perez', '1989-11-12', 'Emergency', 'J890', 'InsuranceCo10', 'City1', 'Accident', 'None', 'Artist', '2023-04-15', 16, 500, 'Emergency Room', 1, 6),
-- Patient 17
(17, 'Benamin', 'Q.', 'Quinn', '1983-08-05', 'Injury', 'K123', 'InsuranceCo11', 'City1', 'Back Injury', 'Dust', 'Pilot', '2023-05-20', 17, 1500, 'Orthopedic Surgery', 1, 7),
-- Patient 18
(18, 'Avry', 'R.', 'Reyes', '1996-01-20', 'Checkup', 'L456', 'InsuranceCo12', 'City1', 'Annual Checkup', 'None', 'Physical Therapist', '2023-06-25', 18, 300, 'Cardiology Consultation', 1, 36),
-- Patient 19
(19, 'Logn', 'S.', 'Smith', '1987-07-08', 'Emergency', 'M789', 'InsuranceCo13', 'City1', 'Heart Attack', 'Pollen', 'Engineer', '2023-07-01', 19, 500, 'Emergency Room', 1, 43),
-- Patient 20
(20, 'Eveln', 'T.', 'Turner', '1979-03-25', 'Injury', 'N012', 'InsuranceCo14', 'City1', 'Arm Fracture', 'None', 'Surgeon', '2023-08-08', 20, 1500, 'Orthopedic Surgery', 1, 50),
-- Patient 21
(21, 'Lucs', 'U.', 'Underwood', '1994-12-15', 'Checkup', 'A123', 'InsuranceCo1', 'City1', 'General Checkup', 'Peanuts', 'Teacher', '2023-09-14', 21, 200, 'Physical Therapy', 1, 1),
-- Patient 22
(22, 'Ariaa', 'V.', 'Valentine', '1971-06-02', 'Emergency', 'B456', 'InsuranceCo2', 'City1', 'Shortness of Breath', 'None', 'Nurse', '2023-10-20', 22, 500, 'Emergency Room', 1, 2),
-- Patient 23
(23, 'Jacksson', 'W.', 'Williams', '1986-02-09', 'Injury', 'C789', 'InsuranceCo3', 'City1', 'Knee Injury', 'Peanuts', 'Software Engineer', '2023-11-25', 23, 1500, 'Orthopedic Surgery', 1, 3),
-- Patient 24
(24, 'Scarlet', 'X.', 'Xavier', '1974-09-28', 'Checkup', 'D012', 'InsuranceCo4', 'City1', 'Routine Checkup', 'None', 'Doctor', '2023-12-30', 24, 300, 'Cardiology Consultation', 1, 4),
-- Patient 25
(25, 'Liama', 'Y.', 'Young', '1999-04-03', 'Emergency', 'E345', 'InsuranceCo5', 'City1', 'Fainting', 'Dust', 'Lawyer', '2024-01-05', 25, 500, 'Emergency Room', 1, 5),
(26, 'Alices', 'A.', 'Anderson', '1990-03-15', 'Regular Checkup', 101, 'Insurance1', 'City2', 'Fever', 'None', 'Engineer', '2022-01-10', 1, 300, 'Cardiology Consultation', 2, 8),
(27, 'Bobq', 'B.', 'Brown', '1985-06-22', 'Emergency', 102, 'Insurance2', 'City2', 'Fracture', 'None', 'Teacher', '2022-02-05', 2, 550, 'Emergency Room', 2, 9),
(28, 'Charle', 'C.', 'Clark', '1995-01-31', 'Maternity Care', 103, 'Insurance3', 'City2', 'Pregnancy', 'None', 'Nurse', '2022-03-12', 3, 1000, 'Maternity Care', 2, 10),
(29, 'Davida', 'D.', 'Davis', '1980-09-05', 'Regular Checkup', 104, 'Insurance4', 'City2', 'Hypertension', 'Pollen', 'Doctor', '2022-04-18', 4, 300, 'Cardiology Consultation', 2, 11),
(30, 'Emilya', 'E.', 'Evans', '1992-12-10', 'X-ray', 105, 'Insurance5', 'City2', 'Fracture', 'None', 'Engineer', '2022-05-25', 5, 150, 'X-ray', 2, 37),
(31, 'Franka', 'F.', 'Fisher', '1988-07-28', 'Blood Test', 106, 'Insurance6', 'City2', 'Anemia', 'Peanuts', 'Accountant', '2022-06-30', 6, 75, 'Blood Test', 2, 8),
(32, 'Gracec', 'G.', 'Green', '1998-04-15', 'MRI Scan', 107, 'Insurance7', 'City2', 'Headache', 'None', 'Student', '2022-07-15', 7, 800, 'MRI Scan', 2, 12),
(33, 'Harryw', 'H.', 'Hill', '1982-11-03', 'Physical Therapy', 108, 'Insurance8', 'City2', 'Back Pain', 'None', 'Lawyer', '2022-08-22', 8, 200, 'Physical Therapy', 2, 9),
(34, 'Ivyf', 'I.', 'Irwin', '1993-08-19', 'Cardiology Consultation', 109, 'Insurance9', 'City2', 'Heart Palpitations', 'None', 'Marketing', '2022-09-28', 9, 300, 'Cardiology Consultation', 2, 10),
(35, 'Jackf', 'J.', 'Johnson', '1986-05-04', 'Regular Checkup', 110, 'Insurance10', 'City2', 'Hypertension', 'Pollen', 'Doctor', '2022-10-05', 10, 300, 'Cardiology Consultation', 2, 11),
(36, 'Karengf', 'K.', 'Kennedy', '1990-02-18', 'Emergency', 111, 'Insurance11', 'City2', 'Fracture', 'None', 'Nurse', '2022-11-12', 11, 550, 'Emergency Room', 2, 12),
(37, 'Liamq', 'L.', 'Lopez', '1985-09-08', 'Maternity Care', 112, 'Insurance12', 'City2', 'Pregnancy', 'None', 'Teacher', '2022-12-18', 12, 1000, 'Maternity Care', 2, 8),
(38, 'Miah', 'M.', 'Miller', '1994-06-03', 'Regular Checkup', 101, 'Insurance1', 'City2', 'Hypertension', 'Pollen', 'Doctor', '2023-01-10', 13, 300, 'Cardiology Consultation', 2, 9),
(39, 'Noahk', 'N.', 'Nelson', '1987-03-22', 'Emergency', 102, 'Insurance2', 'City2', 'Fracture', 'None', 'Teacher', '2023-02-05', 14, 550, 'Emergency Room', 2, 10),
(40, 'Oliviag', 'O.', 'Owen', '1996-01-31', 'Maternity Care', 103, 'Insurance3', 'City2', 'Pregnancy', 'None', 'Nurse', '2023-03-12', 15, 1000, 'Maternity Care', 2, 11),
(41, 'Peterg', 'P.', 'Peterson', '1981-09-05', 'Regular Checkup', 104, 'Insurance4', 'City2', 'Hypertension', 'Pollen', 'Doctor', '2023-04-18', 16, 300, 'Cardiology Consultation', 2, 12),
(42, 'Quinne', 'Q.', 'Quincy', '1993-12-10', 'X-ray', 105, 'Insurance5', 'City2', 'Fracture', 'None', 'Engineer', '2023-05-25', 17, 150, 'X-ray', 2, 42),
(43, 'Rachell', 'R.', 'Reyes', '1989-07-28', 'Blood Test', 106, 'Insurance6', 'City2', 'Anemia', 'Peanuts', 'Accountant', '2023-06-30', 18, 75, 'Blood Test', 2, 9),
(44, 'Saml', 'S.', 'Sullivan', '1999-04-15', 'MRI Scan', 107, 'Insurance7', 'City2', 'Headache', 'None', 'Student', '2023-07-15', 19, 800, 'MRI Scan', 2, 10),
(45, 'Tomb', 'T.', 'Thompson', '1983-11-03', 'Physical Therapy', 108, 'Insurance8', 'City2', 'Back Pain', 'None', 'Lawyer', '2023-08-22', 20, 200, 'Physical Therapy', 2, 51),
(46, 'Umaf', 'U.', 'Underwood', '1994-08-19', 'Cardiology Consultation', 109, 'Insurance9', 'City2', 'Heart Palpitations', 'None', 'Marketing', '2023-09-28', 21, 300, 'Cardiology Consultation', 2, 12),
(47, 'Victorb', 'V.', 'Vaughn', '1987-05-04', 'Regular Checkup', 110, 'Insurance10', 'City2', 'Hypertension', 'Pollen', 'Doctor', '2023-10-05', 22, 300, 'Cardiology Consultation', 2, 8),
-- Patient 48
(48, 'Johne', 'M', 'Doe', '1980-05-12', 'Routine Checkup', 101, 'Insurance1', 'City3', 'Fever', 'None', 'Engineer', '2023-01-15', 1, 200, 'Blood Test', 3, 13),
-- Patient 49
(49, 'Janed', 'M', 'Smith', '1992-09-28', 'Orthopedic Consultation', 102, 'Insurance2', 'City3', 'Fracture', 'None', 'Teacher', '2023-02-20', 2, 1500, 'Orthopedic Surgery', 3, 14),
-- Patient 50
(50, 'Michaelg', 'A', 'Johnson', '1975-08-04', 'Emergency Room Visit', 103, 'Insurance3', 'City3', 'Heart Attack', 'None', 'Accountant', '2023-03-10', 3, 520, 'Emergency Room', 3, 15),
-- Patient 51
(51, 'Emilyh', 'B', 'Brown', '1985-11-15', 'Maternity Care', 104, 'Insurance4', 'City3', 'Pregnancy', 'None', 'Nurse', '2023-04-25', 4, 1000, 'Maternity Care', 3, 16),
-- Patient 52
(52, 'Danielk', 'C', 'Miller', '1990-02-20', 'Psychiatry Consultation', 105, 'Insurance5', 'City3', 'Depression', 'None', 'Software Engineer', '2023-05-18', 5, 250, 'Psychiatry Consultation', 3, 17),
-- Patient 53
(53, 'Olivial', 'D', 'Wilson', '1982-07-07', 'Blood Test', 106, 'Insurance6', 'City3', 'Anemia', 'Peanuts', 'Doctor', '2023-06-30', 6, 75, 'Blood Test', 3, 38),
-- Patient 54
(54, 'Ethano', 'E', 'Jones', '1995-04-01', 'Cardiology Consultation', 107, 'Insurance1', 'City3', 'Heart Palpitations', 'None', 'Engineer', '2023-07-15', 7, 300, 'Cardiology Consultation', 3, 45),
-- Patient 55
(55, 'Sophiau', 'F', 'Davis', '1978-09-12', 'MRI Scan', 108, 'Insurance2', 'City3', 'Headache', 'None', 'Teacher', '2023-08-22', 8, 800, 'MRI Scan', 3, 52),
-- Patient 56
(56, 'Masont', 'G', 'Clark', '1998-12-25', 'Physical Therapy', 109, 'Insurance3', 'City3', 'Muscle Strain', 'Penicillin', 'Nurse', '2023-09-05', 9, 200, 'Physical Therapy', 3, 38),
-- Patient 57
(57, 'Avar', 'H', 'Lee', '1989-03-30', 'X-ray', 110, 'Insurance4', 'City3', 'Fracture', 'None', 'Software Engineer', '2023-10-12', 10, 150, 'X-ray', 3, 45),
-- Patient 58
(58, 'Loganhg', 'I', 'Turner', '1970-01-08', 'Orthopedic Surgery', 111, 'Insurance5', 'City3', 'Joint Replacement', 'None', 'Doctor', '2023-11-28', 11, 1500, 'Orthopedic Surgery', 3, 52),
-- Patient 59
(59, 'Lilyk', 'J', 'Baker', '1987-06-22', 'Emergency Room Visit', 112, 'Insurance6', 'City3', 'Severe Injury', 'None', 'Engineer', '2023-12-05', 12, 520, 'Emergency Room', 3, 38),
-- Patient 60
(60, 'Carterl', 'K', 'Young', '1999-10-18', 'Maternity Care', 113, 'Insurance1', 'City3', 'Pregnancy', 'None', 'Nurse', '2024-01-19', 13, 1000, 'Maternity Care', 3, 45),
-- Patient 61
(61, 'Abigailt', 'L', 'Cooper', '1983-04-05', 'Psychiatry Consultation', 114, 'Insurance2', 'City3', 'Anxiety', 'None', 'Software Engineer', '2024-02-14', 14, 250, 'Psychiatry Consultation', 3, 52),
-- Patient 62
(62, 'Noahi', 'M', 'Ward', '1973-08-30', 'Blood Test', 115, 'Insurance3', 'City3', 'High Cholesterol', 'None', 'Teacher', '2024-03-30', 15, 75, 'Blood Test', 3, 38),
-- Patient 63
(63, 'Averyl', 'N', 'Evans', '1994-02-14', 'Cardiology Consultation', 116, 'Insurance4', 'City3', 'Irregular Heartbeat', 'None', 'Nurse', '2024-04-10', 16, 300, 'Cardiology Consultation', 3, 45),
-- Patient 64
(64, 'Jacksonk', 'O', 'Fisher', '1980-07-19', 'MRI Scan', 117, 'Insurance5', 'City3', 'Back Pain', 'None', 'Doctor', '2024-05-15', 17, 800, 'MRI Scan', 3, 52),
-- Patient 65
(65, 'Scarlettm', 'P', 'Griffin', '1992-11-25', 'Physical Therapy', 118, 'Insurance6', 'City3', 'Sports Injury', 'None', 'Engineer', '2024-06-22', 18, 200, 'Physical Therapy', 3, 38),
-- Patient 66
(66, 'Graysohn', 'Q', 'Collins', '1975-05-28', 'X-ray', 119, 'Insurance1', 'City3', 'Fracture', 'None', 'Software Engineer', '2024-07-08', 19, 150, 'X-ray', 3, 45),
-- Patient 67
(67, 'Zote', 'R', 'Hill', '1990-02-08', 'Orthopedic Surgery', 120, 'Insurance2', 'City3', 'Joint Replacement', 'None', 'Nurse', '2024-08-14', 20, 1500, 'Orthopedic Surgery', 3, 52),
-- Patient 68
(68, 'Hudsono', 'S', 'Barnes', '1978-09-14', 'Emergency Room Visit', 121, 'Insurance3', 'City3', 'Accident', 'None', 'Teacher', '2024-09-18', 21, 520, 'Emergency Room', 3, 38),
-- Patient 69
(69, 'Ariau', 'T', 'Carter', '1995-03-15', 'Maternity Care', 122, 'Insurance4', 'City3', 'Pregnancy', 'None', 'Engineer', '2024-10-25', 22, 1000, 'Maternity Care', 3, 45),
(70, 'Alit', 'A.', 'Anderson', '1990-03-15', 'Checkup', 101, 'Insurance1', 'City4', 'Fever', 'None', 'Engineer', '2023-01-05', 1, 200, 'Blood Test', 4, 18),
(71, 'Boboh', 'B.', 'Baker', '1985-08-22', 'Injury', 102, 'Insurance2', 'City4', 'Sprain', 'Penicillin', 'Teacher', '2023-02-10', 2, 300, 'X-ray', 4, 19),
(72, 'Charlt', 'C.', 'Chapman', '1993-01-10', 'Pain', 103, 'Insurance3', 'City4', 'Migraine', 'None', 'Software Developer', '2023-03-18', 3, 500, 'Cardiology Consultation', 4, 20),
(73, 'Davl', 'D.', 'Davis', '1988-05-05', 'Checkup', 101, 'Insurance1', 'City4', 'None', 'Dust', 'Doctor', '2023-04-25', 4, 100, 'Emergency Room', 4, 21),
(74, 'Em', 'E.', 'Evans', '1992-09-12', 'Injury', 102, 'Insurance2', 'City4', 'Fracture', 'Aspirin', 'Nurse', '2023-05-30', 5, 800, 'MRI Scan', 4, 37),
(75, 'Frnkie', 'F.', 'Fisher', '1983-12-08', 'Pain', 103, 'Insurance3', 'City4', 'Back Pain', 'None', 'Engineer', '2023-06-15', 6, 150, 'X-ray', 4, 46),
(76, 'Gacy', 'G.', 'Gordon', '1995-04-20', 'Checkup', 101, 'Insurance1', 'City4', 'None', 'Pollen', 'Artist', '2023-07-20', 7, 300, 'Cardiology Consultation', 4, 53),
(77, 'Heqn', 'H.', 'Howard', '1987-07-03', 'Injury', 102, 'Insurance2', 'City4', 'Sprain', 'None', 'Teacher', '2023-08-05', 8, 400, 'MRI Scan', 4, 18),
(78, 'Ivyu', 'I.', 'Irwin', '1991-11-28', 'Pain', 103, 'Insurance3', 'City4', 'Headache', 'Aspirin', 'Software Developer', '2023-09-10', 9, 200, 'Blood Test', 4, 19),
(79, 'Jakson', 'J.', 'Johnson', '1982-04-12', 'Checkup', 101, 'Insurance1', 'City4', 'None', 'None', 'Doctor', '2023-10-18', 10, 250, 'Physical Therapy', 4, 20),
(80, 'Katq', 'K.', 'Keller', '1990-02-15', 'Injury', 102, 'Insurance2', 'City4', 'Fracture', 'None', 'Nurse', '2023-11-25', 11, 600, 'Maternity Care', 4, 21),
(81, 'Leoa', 'L.', 'Lewis', '1986-06-09', 'Pain', 103, 'Insurance3', 'City4', 'Back Pain', 'Pollen', 'Engineer', '2024-01-01', 12, 100, 'Emergency Room', 4, 37),
(82, 'Miaaa', 'M.', 'Miller', '1993-03-24', 'Checkup', 101, 'Insurance1', 'City4', 'None', 'Dust', 'Teacher', '2024-02-08', 13, 300, 'Cardiology Consultation', 4, 46),
(83, 'Nickd', 'N.', 'Nelson', '1989-08-19', 'Injury', 102, 'Insurance2', 'City4', 'Sprain', 'None', 'Artist', '2024-03-15', 14, 150, 'X-ray', 4, 53),
(84, 'Oliviaf', 'O.', 'Owens', '1994-01-14', 'Pain', 103, 'Insurance3', 'City4', 'Migraine', 'None', 'Software Developer', '2024-04-20', 15, 200, 'Blood Test', 4, 18),
(85, 'Peterc', 'P.', 'Perez', '1980-05-29', 'Checkup', 101, 'Insurance1', 'City4', 'None', 'None', 'Engineer', '2024-05-28', 16, 300, 'Cardiology Consultation', 4, 19),
(86, 'Quinnv', 'Q.', 'Quinn', '1995-02-03', 'Injury', 102, 'Insurance2', 'City4', 'Fracture', 'Pollen', 'Nurse', '2024-06-10', 17, 600, 'Maternity Care', 4, 20),
(87, 'Ryans', 'R.', 'Reynolds', '1984-07-18', 'Pain', 103, 'Insurance3', 'City4', 'Back Pain', 'None', 'Doctor', '2024-07-19', 18, 100, 'Emergency Room', 4, 21),
(88, 'Saraw', 'S.', 'Smith', '1992-12-04', 'Checkup', 101, 'Insurance1', 'City4', 'None', 'Aspirin', 'Teacher', '2024-08-30', 19, 250, 'Physical Therapy', 4, 37),
(89, 'Tomq', 'T.', 'Thompson', '1983-03-20', 'Injury', 102, 'Insurance2', 'City4', 'Sprain', 'None', 'Artist', '2024-09-14', 20, 400, 'MRI Scan', 4, 46),
-- Patient 90
(90, 'Aliceh', 'A.', 'Anderson', '1990-05-15', 'Checkup', 1, 'Insurance1', 'City5', 'Common Cold', 'None', 'Engineer','2023-01-05', 1, 150, 'X-ray', 5, 22),
-- Patient 91
(91, 'Bobk', 'B.', 'Baker', '1985-08-22', 'Orthopedic Consultation', 2, 'Insurance2', 'City5', 'Arthritis', 'Pollen', 'Teacher', '2023-02-10', 2, 300, 'Cardiology Consultation', 5, 23),
-- Patient 92
(92, 'Charlier', 'C.', 'Clark', '1980-12-03', 'Maternity Care', 1, 'Insurance1', 'City5', 'Pregnancy', 'None', 'Nurse', '2023-03-15', 3, 1000, 'Maternity Care', 5, 24),
-- Patient 93
(93, 'Davido', 'D.', 'Dawson', '1975-06-18', 'Blood Test', 3, 'Insurance3', 'City5', 'Anemia', 'Penicillin', 'Accountant', '2023-04-20', 4, 75, 'Blood Test', 5, 25),
-- Patient 94
(94, 'Emmar', 'E.', 'Evans', '1992-09-10', 'Emergency Room', 2, 'Insurance2', 'City5', 'Injury', 'Peanuts', 'Engineer', '2023-05-25', 5, 480, 'Emergency Room', 5, 40),
-- Patient 95
(95, 'Franki', 'F.', 'Fisher', '1987-03-01', 'Orthopedic Surgery', 1, 'Insurance1', 'City5', 'Fracture', 'None', 'Construction Worker', '2023-06-30', 6, 1500, 'Orthopedic Surgery', 5, 47),
-- Patient 96
(96, 'Graceo', 'G.', 'Gordon', '1983-11-28', 'Cardiology Consultation', 4, 'Insurance4', 'City5', 'Heart Palpitations', 'Shellfish', 'Teacher', '2023-07-05', 7, 300, 'Cardiology Consultation', 5, 54),
-- Patient 97
(97, 'Henryp', 'H.', 'Harrison', '1995-04-12', 'Physical Therapy', 1, 'Insurance1', 'City5', 'Muscle Strain', 'None', 'Athlete', '2023-08-10', 8, 200, 'Physical Therapy', 5, 22),
-- Patient 98
(98, 'Ivye', 'I.', 'Irwin', '1989-08-05', 'Checkup', 2, 'Insurance2', 'City5', 'General Checkup', 'Lactose', 'Librarian', '2023-09-15', 9, 150, 'X-ray', 5, 23),
-- Patient 99
(99, 'Jamesw', 'J.', 'Jones', '1980-02-20', 'Emergency Room', 3, 'Insurance3', 'City5', 'Injury', 'None', 'Police Officer', '2023-10-20', 10, 480, 'Emergency Room', 5, 24),
-- Patient 100
(100, 'Katherinew', 'K.', 'King', '1998-07-03', 'Blood Test', 1, 'Insurance1', 'City5', 'High Cholesterol', 'Pollen', 'Secretary', '2023-11-25', 11, 75, 'Blood Test', 5, 25),
-- Patient 101
(101, 'Liamm', 'L.', 'Lee', '1984-12-15', 'Orthopedic Surgery', 2, 'Insurance2', 'City5', 'Fracture', 'Peanuts', 'Construction Worker', '2024-01-02', 12, 1500, 'Orthopedic Surgery', 5, 40),
-- Patient 102
(102, 'Miaf', 'M.', 'Mills', '1993-06-07', 'Maternity Care', 4, 'Insurance4', 'City5', 'Pregnancy', 'Lactose', 'Nurse', '2024-02-08', 13, 1000, 'Maternity Care', 5, 47),
-- Patient 103
(103, 'Nathanq', 'N.', 'Newton', '1976-01-22', 'Cardiology Consultation', 1, 'Insurance1', 'City5', 'High Blood Pressure', 'None', 'Engineer', '2024-03-15', 14, 300, 'Cardiology Consultation', 5, 54),
-- Patient 104
(104, 'Oliviaq', 'O.', 'Owens', '1990-06-30', 'Physical Therapy', 2, 'Insurance2', 'City5', 'Back Pain', 'Pollen', 'Teacher', '2024-04-20', 15, 200, 'Physical Therapy', 5, 22),
-- Patient 105
(105, 'Peterg', 'P.', 'Porter', '1985-03-14', 'Checkup', 3, 'Insurance3', 'City5', 'General Checkup', 'Peanuts', 'Librarian', '2024-05-28', 16, 150, 'X-ray', 5, 23),
-- Patient 106
(106, 'Quincyh', 'Q.', 'Quinn', '1978-09-08', 'Emergency Room', 4, 'Insurance4', 'City5', 'Injury', 'None', 'Police Officer', '2024-06-30', 17, 480, 'Emergency Room', 5, 24),
-- Patient 107
(107, 'Rachelb', 'R.', 'Reed', '1995-12-01', 'Orthopedic Consultation', 1, 'Insurance1', 'City5', 'Arthritis', 'None', 'Engineer', '2024-07-05', 18, 300, 'Cardiology Consultation', 5, 25),
-- Patient 108
(108, 'Samueln', 'S.', 'Smith', '1981-04-18', 'Maternity Care', 2, 'Insurance2', 'City5', 'Pregnancy', 'Pollen', 'Nurse', '2024-08-10', 19, 1000, 'Maternity Care', 5, 40),
-- Patient 109
(109, 'Tinaa', 'T.', 'Turner', '1986-07-25', 'Blood Test', 3, 'Insurance3', 'City5', 'Anemia', 'Shellfish', 'Accountant', '2024-09-15', 20, 75, 'Blood Test', 5, 47),
-- Patient 110
(110, 'Ulyssess', 'U.', 'Underwood', '1992-02-09', 'Orthopedic Surgery', 4, 'Insurance4', 'City5', 'Fracture', 'Peanuts', 'Construction Worker', '2024-10-20', 21, 1500, 'Orthopedic Surgery', 5, 54),
-- Patient 111
(111, 'Victoriaa', 'V.', 'Vaughn', '1977-05-24', 'Cardiology Consultation', 1, 'Insurance1', 'City5', 'Heart Palpitations', 'None', 'Teacher', '2024-11-25', 22, 300, 'Cardiology Consultation', 5, 22),
-- Patient 112
(112, 'Walterr', 'W.', 'Wells', '1989-10-12', 'Physical Therapy', 2, 'Insurance2', 'City5', 'Muscle Strain', 'Lactose', 'Athlete', '2025-01-02', 23, 200, 'Physical Therapy', 5, 23),
-- Patient 113
(113, 'Xenaa', 'X.', 'Xavier', '1983-03-28', 'Checkup', 3, 'Insurance3', 'City5', 'General Checkup', 'None', 'Librarian', '2025-02-08', 24, 150, 'X-ray', 5, 24),
-- Patient 114
(114, 'Yasmne', 'Y.', 'Young', '1997-08-15', 'Emergency Room', 4, 'Insurance4', 'City5', 'Injury', 'Pollen', 'Engineer', '2025-03-15', 25, 480, 'Emergency Room', 5, 25),
-- Patient 115
(115, 'Zacary', 'Z.', 'Zane', '1984-01-30', 'Orthopedic Consultation', 1, 'Insurance1', 'City5', 'Arthritis', 'None', 'Construction Worker', '2025-04-20', 26, 300, 'Cardiology Consultation', 5, 40),
(116, 'Alce', 'A.', 'Anderson', '1990-03-15', 'Regular Checkup', 101, 'Insurance1', 'City6', 'Hypertension', 'None', 'Engineer', '2023-01-10', 601, 300, 'Cardiology Consultation', 6, 26),
-- Patient 2
(117, 'Bby', 'B.', 'Brown', '1985-07-22', 'Emergency', 102, 'Insurance2', 'City6', 'Fracture', 'None', 'Teacher', '2023-02-05', 602, 1500, 'Orthopedic Surgery', 6, 27),
-- Patient 3
(118, 'Charlie', 'C.', 'Clark', '1992-11-10', 'Regular Checkup', 103, 'Insurance3', 'City6', 'Migraine', 'None', 'Software Developer', '2023-03-20', 603, 250, 'Psychiatry Consultation', 6, 28),
-- Patient 4
(119, 'Diana', 'D.', 'Davis', '1988-04-18', 'Maternity Care', 104, 'Insurance4', 'City6', 'Pregnancy', 'Peanuts', 'Nurse', '2023-04-15', 604, 1000, 'Maternity Care', 6, 29),
-- Patient 5
(120, 'Edward', 'E.', 'Evans', '1995-09-05', 'Blood Test', 105, 'Insurance5', 'City6', 'Anemia', 'None', 'Doctor', '2023-05-12', 605, 75, 'Blood Test', 6, 30),
-- Patient 6
(121, 'Fina', 'F.', 'Fisher', '1991-01-28', 'Dental Checkup', 106, 'Insurance6', 'City6', 'Toothache', 'None', 'Dentist', '2023-06-18', 606, 120, 'Dental Services', 6, 26),
-- Patient 7
(122, 'Gerge', 'G.', 'Gray', '1987-06-14', 'MRI Scan', 107, 'Insurance7', 'City6', 'Headache', 'None', 'Manager', '2023-07-01', 607, 800, 'MRI Scan', 6, 27),
-- Patient 8
(123, 'Heen', 'H.', 'Hill', '1993-02-19', 'Orthopedic Consultation', 108, 'Insurance8', 'City6', 'Back Pain', 'Shellfish', 'Accountant', '2023-08-08', 608, 1500, 'Orthopedic Surgery', 6, 28),
-- Patient 9
(124, 'Iafn', 'I.', 'Irwin', '1989-07-07', 'Physical Therapy', 109, 'Insurance9', 'City6', 'Muscle Strain', 'Pollen', 'Physical Therapist', '2023-09-25', 609, 200, 'Physical Therapy', 6, 29),
-- Patient 10
(125, 'Jenifer', 'J.', 'Jones', '1996-12-23', 'X-ray', 110, 'Insurance10', 'City6', 'Fracture', 'None', 'Lawyer', '2023-10-10', 610, 150, 'X-ray', 6, 30),
-- Patient 11
(126, 'Kvin', 'K.', 'King', '1986-05-30', 'Cardiology Consultation', 111, 'Insurance1', 'City6', 'Chest Pain', 'None', 'Engineer', '2023-11-05', 611, 300, 'Cardiology Consultation', 6, 26),
-- Patient 12
(127, 'Lua', 'L.', 'Lee', '1990-10-12', 'Orthopedic Consultation', 112, 'Insurance2', 'City6', 'Joint Pain', 'None', 'Teacher', '2023-12-20', 612, 1500, 'Orthopedic Surgery', 6, 27),
-- Patient 13
(128, 'Mre', 'M.', 'Miller', '1985-03-08', 'Emergency', 113, 'Insurance3', 'City6', 'Injury', 'Peanuts', 'Software Developer', '2024-01-15', 613, 1500, 'Orthopedic Surgery', 6, 28),
-- Patient 14
(129, 'Nijqa', 'N.', 'Nolan', '1992-08-28', 'Blood Test', 114, 'Insurance4', 'City6', 'Anemia', 'None', 'Nurse', '2024-02-10', 614, 75, 'Blood Test', 6, 29),
-- Patient 15
(130, 'Olivler', 'O.', 'Owens', '1988-01-14', 'Maternity Care', 115, 'Insurance5', 'City6', 'Pregnancy', 'None', 'Doctor', '2024-03-25', 615, 1000, 'Maternity Care', 6, 30),
-- Patient 16
(131, 'Pamelka', 'P.', 'Price', '1995-06-05', 'Psychiatry Consultation', 116, 'Insurance6', 'City6', 'Depression', 'None', 'Psychologist', '2024-04-12', 616, 250, 'Psychiatry Consultation', 6, 26),
-- Patient 17
(132, 'Quincjy', 'Q.', 'Quinn', '1991-11-18', 'Dental Checkup', 117, 'Insurance7', 'City6', 'Toothache', 'None', 'Dentist', '2024-05-20', 617, 120, 'Dental Services', 6, 27),
-- Patient 18
(133, 'Rachell', 'R.', 'Reed', '1987-04-03', 'MRI Scan', 118, 'Insurance8', 'City6', 'Headache', 'Pollen', 'Manager', '2024-06-15', 618, 800, 'MRI Scan', 6, 28),
-- Patient 19
(134, 'Samuiell', 'S.', 'Sims', '1993-09-20', 'Orthopedic Consultation', 119, 'Insurance9', 'City6', 'Back Pain', 'None', 'Accountant', '2024-07-01', 619, 1500, 'Orthopedic Surgery', 6, 29),
-- Patient 20
(135, 'Tinqaq', 'T.', 'Turner', '1989-02-07', 'Physical Therapy', 120, 'Insurance10', 'City6', 'Muscle Strain', 'Shellfish', 'Physical Therapist', '2024-08-18', 620, 200, 'Physical Therapy', 6, 30),
-- Patient 21
(136, 'Ulyses', 'U.', 'Underwood', '1996-07-25', 'X-ray', 121, 'Insurance1', 'City6', 'Fracture', 'None', 'Engineer', '2024-09-05', 621, 150, 'X-ray', 6, 26),
-- Patient 22
(137, 'Vctoria', 'V.', 'Vaughn', '1986-12-10', 'Cardiology Consultation', 122, 'Insurance2', 'City6', 'Chest Pain', 'None', 'Teacher', '2024-10-12', 622, 300, 'Cardiology Consultation', 6, 27),
-- Patient 23
(138, 'Wlter', 'W.', 'Wells', '1990-05-28', 'Orthopedic Consultation', 123, 'Insurance3', 'City6', 'Joint Pain', 'None', 'Software Developer', '2024-11-20', 623, 1500, 'Orthopedic Surgery', 6, 28),
-- Patient 24
(139, 'Xna', 'X.', 'Xu', '1985-10-15', 'Emergency', 124, 'Insurance4', 'City6', 'Injury', 'None', 'Manager', '2024-12-25', 624, 1500, 'Orthopedic Surgery', 6, 29),
-- Patient 25
(140, 'Yvnne', 'Y.', 'Young', '1997-03-03', 'Blood Test', 125, 'Insurance5', 'City6', 'Anemia', 'Pollen', 'Nurse', '2025-01-10', 625, 75, 'Blood Test', 6, 30),
-- Patient 26
(141, 'Zacary', 'Z.', 'Zimmerman', '1992-08-10', 'Maternity Care', 126, 'Insurance6', 'City6', 'Pregnancy', 'None', 'Doctor', '2025-02-15', 626, 1000, 'Maternity Care', 6, 26),
-- Patient 27
(142, 'Amyq', 'A.', 'Adams', '1988-01-28', 'Psychiatry Consultation', 127, 'Insurance7', 'City6', 'Depression', 'None', 'Psychologist', '2025-03-20', 627, 250, 'Psychiatry Consultation', 6, 27),
-- Patient 28
(143, 'Brin', 'B.', 'Barnes', '1995-06-14', 'Dental Checkup', 128, 'Insurance8', 'City6', 'Toothache', 'None', 'Dentist', '2025-04-18', 628, 120, 'Dental Services', 6, 28),
-- Patient 29
(144, 'Catheine', 'C.', 'Cruz', '1993-11-05', 'MRI Scan', 129, 'Insurance9', 'City6', 'Headache', 'None', 'Engineer', '2025-05-12', 629, 800, 'MRI Scan', 6, 29),
-- Patient 30
(145, 'Davi', 'D.', 'Diaz', '1989-04-20', 'Orthopedic Consultation', 130, 'Insurance10', 'City6', 'Joint Pain', 'Shellfish', 'Doctor', '2025-06-25', 630, 1500, 'Orthopedic Surgery', 6, 30),
-- Additional Patients for Doctor IDs 41 and 48
-- Patient 31
(146, 'Emmap', 'E.', 'Evans', '1996-09-15', 'X-ray', 131, 'Insurance1', 'City6', 'Fracture', 'None', 'Teacher', '2025-07-10', 631, 150, 'X-ray', 6, 41),
-- Patient 32
(147, 'Franm', 'F.', 'Fisher', '1992-02-28', 'Cardiology Consultation', 132, 'Insurance2', 'City6', 'Chest Pain', 'None', 'Software Developer', '2025-08-15', 632, 300, 'Cardiology Consultation', 6, 48),
(148, 'Joho', 'A', 'Doe', '1990-05-15', 'Regular Checkup', 'A001', 'Insurance1', 'City7', 'None', 'None', 'Engineer', '2023-01-02', 101, 200, 'Blood Test', 7, 31),
(149, 'Alicq', 'B', 'Smith', '1985-08-22', 'MRI Scan', 'A002', 'Insurance2', 'City7', 'Back Pain', 'None', 'Teacher', '2023-01-05', 102, 800, 'MRI Scan', 7, 32),
(150, 'Bonb', 'C', 'Johnson', '1978-11-10', 'Emergency', 'A003', 'Insurance3', 'City7', 'Fracture', 'Penicillin', 'Doctor', '2023-02-10', 103, 550, 'Emergency Room', 7, 33),
(151, 'Evr', 'D', 'Anderson', '1992-03-28', 'Maternity Care', 'A001', 'Insurance1', 'City7', 'Pregnant', 'None', 'Nurse', '2023-02-15', 104, 1000, 'Maternity Care', 7, 34),
(152, 'Davip', 'E', 'Williams', '1980-06-17', 'X-ray', 'A002', 'Insurance2', 'City7', 'Sprain', 'None', 'IT Specialist', '2023-03-03', 105, 150, 'X-ray', 7, 35),
(153, 'Olivial', 'F', 'Brown', '1995-09-05', 'Physical Therapy', 'A003', 'Insurance3', 'City7', 'Muscle Strain', 'None', 'Athlete', '2023-03-08', 106, 200, 'Physical Therapy', 7, 38),
(154, 'Daniez', 'G', 'Jones', '1982-12-25', 'Blood Test', 'A001', 'Insurance1', 'City7', 'High Cholesterol', 'Peanuts', 'Chef', '2023-04-12', 107, 75, 'Blood Test', 7, 49),
(155, 'Sophir', 'H', 'Miller', '1987-04-14', 'Emergency', 'A002', 'Insurance2', 'City7', 'Heart Attack', 'Shellfish', 'Paramedic', '2023-04-18', 108, 550, 'Emergency Room', 7, 31),
(156, 'Liaa', 'I', 'Wilson', '1998-07-08', 'X-ray', 'A003', 'Insurance3', 'City7', 'Injury', 'None', 'Student', '2023-05-01', 109, 150, 'X-ray', 7, 32),
(157, 'Emmw', 'J', 'Taylor', '1989-10-30', 'Maternity Care', 'A001', 'Insurance1', 'City7', 'Pregnant', 'None', 'Graphic Designer', '2023-05-15', 110, 1000, 'Maternity Care', 7, 33),
(158, 'Miaq', 'K', 'Moore', '1993-02-18', 'Physical Therapy', 'A002', 'Insurance2', 'City7', 'Back Pain', 'None', 'Yoga Instructor', '2023-06-02', 111, 200, 'Physical Therapy', 7, 34),
(159, 'Noa', 'L', 'Clark', '1976-05-06', 'Blood Test', 'A003', 'Insurance3', 'City7', 'Low Iron Levels', 'None', 'Banker', '2023-06-10', 112, 75, 'Blood Test', 7, 35),
(160, 'Avaw', 'M', 'White', '1984-08-27', 'MRI Scan', 'A001', 'Insurance1', 'City7', 'Migraine', 'None', 'Writer', '2023-07-01', 113, 800, 'MRI Scan', 7, 38),
(161, 'Jame', 'N', 'Hall', '1996-01-09', 'Emergency', 'A002', 'Insurance2', 'City7', 'Injury', 'Peanuts', 'Firefighter', '2023-07-18', 114, 550, 'Emergency Room', 7, 56),
(162, 'Isaella', 'O', 'Scott', '1986-04-23', 'Physical Therapy', 'A003', 'Insurance3', 'City7', 'Muscle Strain', 'None', 'Physical Therapist', '2023-08-05', 115, 200, 'Physical Therapy', 7, 31),
(163, 'Loga', 'P', 'Adams', '1990-08-14', 'X-ray', 'A001', 'Insurance1', 'City7', 'Fracture', 'Shellfish', 'Engineer', '2023-08-20', 116, 150, 'X-ray', 7, 56),
(164, 'Grac', 'Q', 'Baker', '1983-11-05', 'Blood Test', 'A002', 'Insurance2', 'City7', 'High Cholesterol', 'None', 'Doctor', '2023-09-03', 117, 75, 'Blood Test', 7, 33),
(165, 'Etha', 'R', 'Garcia', '1994-02-27', 'Maternity Care', 'A003', 'Insurance3', 'City7', 'Pregnant', 'None', 'Nurse', '2023-09-15', 118, 1000, 'Maternity Care', 7, 56),
(166, 'Chlo', 'S', 'Turner', '1979-06-18', 'Emergency', 'A001', 'Insurance1', 'City7', 'Heart Attack', 'None', 'Teacher', '2023-10-02', 119, 550, 'Emergency Room', 7, 38);


/* Patients Visiting*/

INSERT INTO F23_S003_T1_Patient_visiting(Pt_id, Pt_visiting_date)
VALUES
(1, '2019-01-02'),
(2, '2019-01-05'),
(3, '2019-02-10'),
(4, '2019-02-15'),
(5, '2019-03-03'),
(6, '2019-03-08'),
(7, '2019-04-12'),
(8, '2019-04-18'),
(9, '2019-05-01'),
(10, '2019-05-15'),
(11, '2019-06-02'),
(12, '2019-06-10'),
(13, '2019-07-01'),
(14, '2019-07-18'),
(15, '2019-08-05'),
(16, '2019-08-20'),
(17, '2019-09-03'),
(18, '2019-09-15'),
(19, '2019-10-02'),
(20, '2019-11-15'),
(21, '2019-12-01'),
(22, '2020-01-02'),
(23, '2020-01-05'),
(24, '2020-02-10'),
(25, '2020-02-15'),
(26, '2020-03-03'),
(27, '2020-03-08'),
(28, '2020-04-12'),
(29, '2020-04-18'),
(30, '2020-05-01'),
(31, '2020-12-01'),
(32, '2020-12-15'),
(33, '2020-12-28'),
(34, '2020-01-10'),
(35, '2020-01-25'),
(36, '2020-02-05'),
(37, '2020-02-18'),
(38, '2020-03-02'),
(39, '2020-03-15'),
(40, '2020-04-01'),
(41, '2020-04-12'),
(42, '2020-05-03'),
(43, '2020-05-15'),
(44, '2020-06-02'),
(45, '2020-06-18'),
(46, '2020-07-01'),
(47, '2020-07-15'),
(48, '2020-08-02'),
(49, '2020-08-18'),
(50, '2020-09-01'),
(51, '2019-10-15'),
(52, '2019-11-02'),
(53, '2019-11-18'),
(54, '2019-12-01'),
(55, '2019-12-15'),
(56, '2019-12-28'),
(57, '2020-01-10'),
(58, '2020-01-25'),
(59, '2020-02-05'),
(60, '2020-02-18'),
(61, '2020-03-02'),
(62, '2020-03-15'),
(63, '2020-04-01'),
(64, '2020-04-12'),
(65, '2020-05-03'),
(66, '2020-05-15'),
(67, '2020-06-02'),
(68, '2020-06-18'),
(69, '2020-07-01'),
(70, '2020-07-15'),
(71, '2020-08-02'),
(72, '2020-08-18'),
(73, '2020-09-01'),
(74, '2020-09-15'),
(75, '2020-10-02'),
(76, '2020-10-15'),
(77, '2020-11-02'),
(78, '2020-11-18'),
(79, '2019-12-01'),
(80, '2019-12-15'),
(81, '2019-11-18'),
(82, '2019-12-01'),
(83, '2019-12-15'),
(84, '2019-12-28'),
(85, '2020-01-10'),
(86, '2020-01-25'),
(87, '2020-02-05'),
(88, '2020-02-18'),
(89, '2020-03-02'),
(90, '2020-03-15'),
(91, '2020-04-01'),
(92, '2020-04-12'),
(93, '2020-05-03'),
(94, '2020-05-15'),
(95, '2020-06-02'),
(96, '2020-06-18'),
(97, '2020-07-01'),
(98, '2020-07-15'),
(99, '2020-08-02'),
(100, '2020-08-18'),
(101, '2020-09-01'),
(102, '2020-09-15'),
(103, '2020-10-02'),
(104, '2020-10-15'),
(105, '2020-11-02'),
(106, '2020-11-18'),
(107, '2019-12-01'),
(108, '2019-12-15'),
(109, '2019-12-28'),
(110, '2020-01-10'),
(111, '2020-01-25'),
(112, '2020-02-05'),
(113, '2020-02-18'),
(114, '2020-03-02'),
(115, '2020-03-15'),
(116, '2020-04-01'),
(117, '2020-04-12'),
(118, '2020-05-03'),
(119, '2020-05-15'),
(120, '2020-06-02'),
(121, '2020-06-18'),
(122, '2020-07-01'),
(123, '2020-07-15'),
(124, '2020-08-02'),
(125, '2020-08-18'),
(126, '2020-09-01'),
(127, '2020-09-15'),
(128, '2020-10-02'),
(129, '2020-10-15'),
(130, '2020-11-02'),
(131, '2020-11-18'),
(132, '2019-12-01'),
(133, '2019-12-15'),
(134, '2019-12-28'),
(135, '2020-01-10'),
(136, '2020-01-25'),
(137, '2020-02-05'),
(138, '2020-02-18'),
(139, '2020-03-02'),
(140, '2020-03-15'),
(141, '2020-04-01'),
(142, '2020-04-12'),
(143, '2020-05-03'),
(144, '2020-05-15'),
(145, '2020-06-02'),
(146, '2020-06-18'),
(147, '2020-07-01'),
(148, '2020-07-15'),
(149, '2020-08-02'),
(150, '2020-08-18'),
(151, '2020-09-01'),
(152, '2020-09-15'),
(153, '2020-10-02'),
(154, '2020-10-15'),
(155, '2020-11-02'),
(156, '2020-11-18'),
(157, '2019-12-01'),
(158, '2019-12-15'),
(159, '2019-12-28'),
(160, '2020-01-10'),
(161, '2020-01-25'),
(162, '2020-02-05'),
(163, '2020-02-18'),
(164, '2020-03-02'),
(165, '2020-03-15'),
(166, '2020-04-01');


/* Patients Medical History */


INSERT INTO F23_S003_T1_Patient_Medical_History(pt_id, pt_medical_history)
VALUES
(1, 'No significant medical history'),
(2, 'Asthma diagnosed in childhood'),
(3, 'Previous history of fractures'),
(4, 'No known medical issues'),
(5, 'Allergic to penicillin'),
(6, 'No significant medical history'),
(7, 'History of diabetes'),
(8, 'Had surgery for appendicitis'),
(9, 'No known medical issues'),
(10, 'Seasonal allergies'),
(11, 'No significant medical history'),
(12, 'Previous ACL injury'),
(13, 'History of migraines'),
(14, 'No known medical issues'),
(15, 'Allergic to shellfish'),
(16, 'No significant medical history'),
(17, 'Previous history of high cholesterol'),
(18, 'No known medical issues'),
(19, 'Asthma diagnosed in adulthood'),
(20, 'No significant medical history'),
(21, 'No known medical issues'),
(22, 'Previous history of allergies'),
(23, 'No significant medical history'),
(24, 'History of heart disease in the family'),
(25, 'Allergic to peanuts'),
(26, 'No known medical issues'),
(27, 'Previous surgery for a broken bone'),
(28, 'No significant medical history'),
(29, 'History of anxiety'),
(30, 'No known medical issues'),
(31, 'Previous history of respiratory issues'),
(32, 'No significant medical history'),
(33, 'History of back pain'),
(34, 'No known medical issues'),
(35, 'Allergic to bee stings'),
(36, 'No significant medical history'),
(37, 'Previous surgery for a sports injury'),
(38, 'No known medical issues'),
(39, 'History of depression'),
(40, 'No significant medical history'),
(41, 'No known medical issues'),
(42, 'Previous history of digestive problems'),
(43, 'No significant medical history'),
(44, 'History of skin allergies'),
(45, 'Allergic to latex'),
(46, 'No known medical issues'),
(47, 'Previous surgery for a joint problem'),
(48, 'No significant medical history'),
(49, 'History of migraines'),
(50, 'No known medical issues'),
(51, 'Previous history of respiratory issues'),
(52, 'No significant medical history'),
(53, 'History of back pain'),
(54, 'No known medical issues'),
(55, 'Allergic to bee stings'),
(56, 'No significant medical history'),
(57, 'Previous surgery for a sports injury'),
(58, 'No known medical issues'),
(59, 'History of depression'),
(60, 'No significant medical history'),
(61, 'Previous history of allergies'),
(62, 'No known medical issues'),
(63, 'History of heart disease in the family'),
(64, 'Allergic to peanuts'),
(65, 'No significant medical history'),
(66, 'Previous surgery for a broken bone'),
(67, 'No known medical issues'),
(68, 'History of anxiety'),
(69, 'No significant medical history'),
(70, 'Previous history of respiratory issues'),
(71, 'Previous history of digestive problems'),
(72, 'No significant medical history'),
(73, 'History of skin allergies'),
(74, 'Allergic to latex'),
(75, 'No known medical issues'),
(76, 'Previous surgery for a joint problem'),
(77, 'No significant medical history'),
(78, 'History of migraines'),
(79, 'No known medical issues'),
(80, 'Previous history of respiratory issues'),
(81, 'No significant medical history'),
(82, 'History of back pain'),
(83, 'No known medical issues'),
(84, 'Allergic to bee stings'),
(85, 'No significant medical history'),
(86, 'Previous surgery for a sports injury'),
(87, 'No known medical issues'),
(88, 'History of depression'),
(89, 'No significant medical history'),
(90, 'Previous history of allergies'),
(91, 'No known medical issues'),
(92, 'History of heart disease in the family'),
(93, 'Allergic to peanuts'),
(94, 'No significant medical history'),
(95, 'Previous surgery for a broken bone'),
(96, 'No known medical issues'),
(97, 'History of anxiety'),
(98, 'No significant medical history'),
(99, 'Previous history of respiratory issues'),
(100, 'No known medical issues'),
(101, 'Allergic to bee stings'),
(102, 'No significant medical history'),
(103, 'Previous surgery for a sports injury'),
(104, 'No known medical issues'),
(105, 'History of depression'),
(106, 'No significant medical history'),
(107, 'Previous history of allergies'),
(108, 'No known medical issues'),
(109, 'History of heart disease in the family'),
(110, 'Allergic to peanuts'),
(111, 'No significant medical history'),
(112, 'Previous surgery for a broken bone'),
(113, 'No known medical issues'),
(114, 'History of anxiety'),
(115, 'No significant medical history'),
(116, 'Previous history of respiratory issues'),
(117, 'No known medical issues'),
(118, 'History of back pain'),
(119, 'No significant medical history'),
(120, 'Allergic to latex'),
(121, 'No known medical issues'),
(122, 'Previous surgery for a joint problem'),
(123, 'No significant medical history'),
(124, 'History of migraines'),
(125, 'No known medical issues'),
(126, 'Previous history of digestive problems'),
(127, 'No significant medical history'),
(128, 'History of skin allergies'),
(129, 'No known medical issues'),
(130, 'Allergic to bee stings'),
(131, 'No significant medical history'),
(132, 'Previous surgery for a sports injury'),
(133, 'No known medical issues'),
(134, 'History of depression'),
(135, 'No significant medical history'),
(136, 'Previous history of allergies'),
(137, 'No known medical issues'),
(138, 'History of heart disease in the family'),
(139, 'Allergic to peanuts'),
(140, 'No significant medical history'),
(141, 'Previous surgery for a broken bone'),
(142, 'No known medical issues'),
(143, 'History of anxiety'),
(144, 'No significant medical history'),
(145, 'Previous history of respiratory issues'),
(146, 'No known medical issues'),
(147, 'History of back pain'),
(148, 'No significant medical history'),
(149, 'Allergic to latex'),
(150, 'No known medical issues'),
(151, 'History of migraines'),
(152, 'No known medical issues'),
(153, 'Previous history of digestive problems'),
(154, 'No significant medical history'),
(155, 'History of skin allergies'),
(156, 'No known medical issues'),
(157, 'Allergic to bee stings'),
(158, 'No significant medical history'),
(159, 'Previous surgery for a sports injury'),
(160, 'No known medical issues'),
(161, 'History of depression'),
(162, 'No significant medical history'),
(163, 'Previous history of allergies'),
(164, 'No known medical issues'),
(165, 'History of heart disease in the family'),
(166, 'Allergic to peanuts');


