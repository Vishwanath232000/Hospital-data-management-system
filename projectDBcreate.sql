CREATE TABLE F23_S003_T1_Pharmacy (
    ph_name VARCHAR2(100) NOT NULL, ph_id INT PRIMARY KEY);

CREATE TABLE F23_S003_T1_Medicines (
    m_id INT PRIMARY KEY,
    manufacturing_company VARCHAR2(100),
    name VARCHAR2(100),
    cost INT,
    supplier VARCHAR2(100)
);

CREATE TABLE F23_S003_T1_Sells (
    Pharmacy_id INT,
    Medicine_id INT,
    PRIMARY KEY (Pharmacy_id, Medicine_id),
    FOREIGN KEY (Pharmacy_id) REFERENCES F23_S003_T1_Pharmacy(ph_id) ON DELETE CASCADE,
    FOREIGN KEY (Medicine_id) REFERENCES F23_S003_T1_Medicines(m_id) ON DELETE CASCADE
);

CREATE TABLE F23_S003_T1_Hospital_Branch (
    hos_id INT PRIMARY KEY,
    name VARCHAR2(100)NOT NULL UNIQUE,
    st_address VARCHAR2(200)NOT NULL UNIQUE,
    city VARCHAR2(50)NOT NULL UNIQUE,
    state VARCHAR2(50)NOT NULL ,
    country VARCHAR2(50)NOT NULL ,
    zip VARCHAR2(20)NOT NULL UNIQUE,
     pharmacy_id INT NOT NULL UNIQUE,
    FOREIGN KEY (pharmacy_id) REFERENCES F23_S003_T1_Pharmacy(ph_id) ON DELETE CASCADE
);

CREATE TABLE F23_S003_T1_Employees (
    e_id INT PRIMARY KEY,
    fname VARCHAR2(50)NOT NULL,
    mname VARCHAR2(50),
    lname VARCHAR2(50) NOT NULL,
    designation VARCHAR2(100) NOT NULL CHECK (designation IN ('Nurse', 'Support Staff', 'Administrative Staff', 'Receptionist', 'Security Personnel')),
    work_hours INT NOT NULL,
    salary INT NOT NULL,
    dob DATE NOT NULL,
    h_id INT NOT NULL ,
    FOREIGN KEY (h_id) REFERENCES F23_S003_T1_Hospital_Branch(hos_id) ON DELETE CASCADE
);

CREATE TABLE F23_S003_T1_Employee_contact (
    e_id INT NOT NULL ,
    contact_no VARCHAR2(20) ,
    PRIMARY KEY (e_id, contact_no),
    FOREIGN KEY (e_id) REFERENCES F23_S003_T1_Employees(e_id) ON DELETE CASCADE
);

CREATE TABLE F23_S003_T1_Doctors (
    d_id INT PRIMARY KEY NOT NULL,
    fname VARCHAR2(50)NOT NULL,
    mname VARCHAR2(50),
    lname VARCHAR2(50)NOT NULL,
    dob DATE NOT NULL,
    work_location VARCHAR2(100)NOT NULL,
    specialty VARCHAR2(100)NOT NULL,
    salary INT NOT NULL,
    hos_id INT NOT NULL,
    FOREIGN KEY (hos_id) REFERENCES F23_S003_T1_Hospital_Branch(hos_id) ON DELETE CASCADE
);

CREATE TABLE F23_S003_T1_Doc_contact (
    d_id INT NOT NULL,
    contact_no VARCHAR2(20) NOT NULL,
    PRIMARY KEY (d_id, contact_no),
    FOREIGN KEY (d_id) REFERENCES F23_S003_T1_Doctors(d_id) ON DELETE CASCADE
);

CREATE TABLE F23_S003_T1_Patients (
    pt_id INT PRIMARY KEY NOT NULL ,
    fname VARCHAR2(50) NOT NULL ,
    mname VARCHAR2(50),
    lname VARCHAR2(50)NOT NULL,
    dob DATE NOT NULL,
    purpose_of_visiting VARCHAR2(100)NOT NULL,
   insurance_id VARCHAR2(100),
    insurance_name VARCHAR2(50), 
    hospital_visiting_location VARCHAR2(100) NOT NULL,
    patient_disease VARCHAR2(100) ,
    allergies VARCHAR2(200),
    occupation VARCHAR2(50),
    treat_date DATE NOT NULL,
    treat_id INT NOT NULL,
    cost_of_treat INT,
    diagnosis VARCHAR2(200),
    hos_id INT NOT NULL,
    doc_id INT NOT NULL,
    FOREIGN KEY (hos_id) REFERENCES F23_S003_T1_Hospital_Branch(hos_id),
    FOREIGN KEY (doc_id) REFERENCES F23_S003_T1_Doctors(d_id)ON DELETE CASCADE
);

CREATE TABLE F23_S003_T1_Patient_visiting (
    Pt_id INT NOT NULL,
    Pt_visiting_date DATE NOT NULL,
    PRIMARY KEY (Pt_id, Pt_visiting_date),
    FOREIGN KEY (Pt_id) REFERENCES F23_S003_T1_Patients(pt_id) ON DELETE CASCADE
);

CREATE TABLE F23_S003_T1_Patient_Medical_History (
    pt_id INT NOT NULL,
    pt_medical_history VARCHAR2(200),
    PRIMARY KEY (pt_id, pt_medical_history),
    FOREIGN KEY (pt_id) REFERENCES F23_S003_T1_Patients(pt_id) ON DELETE CASCADE
);

CREATE TABLE F23_S003_T1_Prescribes (
    doctor_id INT NOT NULL,
    medicine_id INT NOT NULL,
    pres_date DATE NOT NULL,
    frequency VARCHAR2(50) NOT NULL ,
    dosage VARCHAR2(50) NOT NULL,
    PRIMARY KEY (Doctor_id, Medicine_id),
    FOREIGN KEY (Doctor_id) REFERENCES F23_S003_T1_Doctors(d_id) ON DELETE CASCADE,
    FOREIGN KEY (Medicine_id) REFERENCES F23_S003_T1_Medicines(m_id) ON DELETE CASCADE
);

CREATE TABLE F23_S003_T1_Hosp_services (
    hos_id INT NOT NULL,
    service_name VARCHAR2(100) NOT NULL,
    cost INT NOT NULL,
    PRIMARY KEY (hos_id, service_name, cost),
    FOREIGN KEY (hos_id) REFERENCES F23_S003_T1_Hospital_Branch(hos_id) ON DELETE CASCADE
);

