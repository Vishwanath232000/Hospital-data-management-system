INSERT ALL
INTO F23_S003_T1_Pharmacy (ph_name, ph_id) VALUES ('Pharmacy8', 8)
INTO F23_S003_T1_Pharmacy (ph_name, ph_id) VALUES ('Pharmacy9', 9)
INTO F23_S003_T1_Pharmacy (ph_name, ph_id) VALUES ('Pharmacy10', 10)
SELECT * FROM dual;

UPDATE F23_S003_T1_Pharmacy SET ph_name = 'Pharmacy_10' where ph_id = 10;

DELETE FROM F23_S003_T1_Pharmacy where ph_id = 9;

UPDATE F23_S003_T1_Hospital_Branch SET st_address = '505 Mainland St' where hos_id = 7;

UPDATE F23_S003_T1_Hosp_services SET service_name = 'Emergency_Room' where service_name = 'Emergency Room';

INSERT ALL
INTO F23_S003_T1_Sells (Pharmacy_id, Medicine_id) VALUES (1, 52)
INTO F23_S003_T1_Sells (Pharmacy_id, Medicine_id) VALUES (6, 52)
INTO F23_S003_T1_Sells (Pharmacy_id, Medicine_id) VALUES (7, 30)
SELECT * FROM dual;

DELETE FROM F23_S003_T1_Employees where e_id = 54;

DELETE FROM F23_S003_T1_Employee_contact where e_id = 1 and contact_no = '123-456-7890';

UPDATE F23_S003_T1_Patients SET diagnosis = 'Emergency_Room' where diagnosis = 'Emergency Room';

INSERT ALL
INTO F23_S003_T1_Patient_Medical_History (pt_id, pt_medical_history) VALUES (155, 'Allergic to peanuts')
INTO F23_S003_T1_Patient_Medical_History (pt_id, pt_medical_history) VALUES (166, 'History of depression')
INTO F23_S003_T1_Patient_Medical_History (pt_id, pt_medical_history) VALUES (166, 'Previous history of digestive problems')
SELECT * FROM dual;

DELETE FROM F23_S003_T1_Patient_Medical_History where pt_id = 166 AND pt_medical_history = 'History of depression';