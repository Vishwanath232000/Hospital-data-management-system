-- 1) Get me the list of medicines which are prescribed by the doctors and are not sold at the hospitals. (Join)

COLUMN medicine_id FORMAT 9999
COLUMN name FORMAT A20
COLUMN doctor_id FORMAT 999

SELECT medicine_id, name, doctor_id
FROM (
    SELECT DISTINCT P.medicine_id, M.name, P.doctor_id
    FROM F23_S003_T1_Prescribes P
    JOIN F23_S003_T1_Medicines M ON P.medicine_id = M.m_id
    JOIN F23_S003_T1_Doctors D ON P.doctor_id = D.d_id
    JOIN F23_S003_T1_Hospital_Branch H ON D.hos_id = H.hos_id
    LEFT JOIN F23_S003_T1_Sells S ON H.pharmacy_id = S.pharmacy_id AND P.medicine_id = S.medicine_id
    WHERE S.medicine_id IS NULL
)
ORDER BY doctor_id;

/*

MEDICINE_ID NAME                 DOCTOR_ID
----------- -------------------- ---------
         10 Clopidogrel                  8
          8 Amoxicillin                  8
          9 Simvastatin                  9
         10 Clopidogrel                 10
         12 Duloxetine                  10
         11 Ciprofloxacin               11
         13 Levothyroxine               11
         12 Duloxetine                  12
         14 Losartan                    14
         16 Rosuvastatin                14
         18 Warfarin                    16

MEDICINE_ID NAME                 DOCTOR_ID
----------- -------------------- ---------
         16 Rosuvastatin                16
         18 Warfarin                    18
         22 Prednisone                  20
         23 Sertraline                  23
         26 Gabapentin                  24
         31 Venlafaxine                 29
         30 Esomeprazole                30
         32 Hydroxyzine                 30
         33 Meloxicam                   31
         33 Meloxicam                   33
         36 Escitalopram                34

MEDICINE_ID NAME                 DOCTOR_ID
----------- -------------------- ---------
         34 Cephalexin                  34
         38 Carvedilol                  36
         36 Escitalopram                36
         39 Olanzapine                  37
         37 Trazodone                   37
         39 Olanzapine                  39
         42 Loratadine                  40
         40 Clonidine                   40
         41 Pioglitazone                41
         44 Doxycycline                 42
         42 Loratadine                  42

MEDICINE_ID NAME                 DOCTOR_ID
----------- -------------------- ---------
         45 Sildenafil                  43
         44 Doxycycline                 44
         46 Bupropion                   44
         45 Sildenafil                  45
         49 Tramadol                    47
         47 Amitriptyline               47
         48 Risperidone                 48
         51 Valsartan                   49
         50 Dulcolax                    50
          3 Aspirin                     51
         34 Cephalexin                  52

MEDICINE_ID NAME                 DOCTOR_ID
----------- -------------------- ---------
         34 Cephalexin                  55
          7 Omeprazole                  55

46 rows selected.


*/


-- 2) Find hospitals that offer all services available across all hospitals. (Division)

SELECT DISTINCT H.hos_id, H.name
FROM F23_S003_T1_Hospital_Branch H
WHERE NOT EXISTS (
    SELECT DISTINCT S.service_name
    FROM F23_S003_T1_Hosp_services S
    MINUS
    SELECT DISTINCT S2.service_name
    FROM F23_S003_T1_Hosp_services S2
    WHERE S2.hos_id = H.hos_id
);

/*

    HOS_ID NAME
---------- --------------------
         6 HospitalBranch6
		 
*/

-- 3) Find doctors who specialize in a medical field related to a specific keyword "Cardiology" and prescription count atleast greater than 0;. (Like)


COLUMN doctor_id FORMAT 9999
COLUMN first_name FORMAT A20
COLUMN last_name FORMAT A20
COLUMN specialty FORMAT A30
COLUMN prescription_count FORMAT 99999

SELECT D.d_id AS doctor_id,
       D.fname AS first_name,
       D.lname AS last_name,
       D.specialty,
       COUNT(*) AS prescription_count
FROM F23_S003_T1_Doctors D
JOIN F23_S003_T1_Prescribes P ON D.d_id = P.doctor_id
JOIN F23_S003_T1_Medicines M ON P.medicine_id = M.m_id
WHERE D.specialty LIKE '%Cardiology%'
GROUP BY D.d_id, D.fname, D.lname, D.specialty
HAVING COUNT(*) > 0
ORDER BY D.d_id;

/*


DOCTOR_ID FIRST_NAME           LAST_NAME            SPECIALTY                      PRESCRIPTION_COUNT
--------- -------------------- -------------------- ------------------------------ ------------------
        1 Adam                 Anderson             Cardiology                                      2
        5 Edward               Evans                Cardiology                                      1
        9 Ian                  Irwin                Cardiology                                      1
       13 Mason                Mitchell             Cardiology                                      2
       17 Quinn                Quinn                Cardiology                                      2
       21 Ursula               Upton                Cardiology                                      2
       25 Yvonne               Young                Cardiology                                      1
       29 Cara                 Cruz                 Cardiology                                      2
       33 Grace                Gomez                Cardiology                                      2
       37 Katherine            Kennedy              Cardiology                                      2
       41 Olivia               Owens                Cardiology                                      1

DOCTOR_ID FIRST_NAME           LAST_NAME            SPECIALTY                      PRESCRIPTION_COUNT
--------- -------------------- -------------------- ------------------------------ ------------------
       45 Samuel               Stewart              Cardiology                                      1
       49 William              Ward                 Cardiology                                      2
       53 Ava                  Allen                Cardiology                                      2

14 rows selected.

*/


-- 4) List the medicines that have been prescribed by more than 2 doctors.

COLUMN medicine_id FORMAT 9999
COLUMN medicine_name FORMAT A20
COLUMN num_doctors_prescribing FORMAT 999

SELECT M.m_id AS medicine_id,
       M.name AS medicine_name,
       COUNT(DISTINCT P.doctor_id) AS num_doctors_prescribing
FROM F23_S003_T1_Medicines M
JOIN F23_S003_T1_Prescribes P ON M.m_id = P.medicine_id
GROUP BY M.m_id, M.name
HAVING COUNT(DISTINCT P.doctor_id) > 2
ORDER BY M.m_id;


/*

MEDICINE_ID MEDICINE_NAME        NUM_DOCTORS_PRESCRIBING
----------- -------------------- -----------------------
          3 Aspirin                                    3
          5 Atorvastatin                               3
          7 Omeprazole                                 3
          8 Amoxicillin                                3
          9 Simvastatin                                3
         34 Cephalexin                                 3

6 rows selected.

*/


-- 5) List the hospitals that are visited by greater than or equal to 25 patients in the date range of 2019-01-01 and 2023-12-31.


COLUMN hospital_id FORMAT 9999
COLUMN hospital_name FORMAT A30
COLUMN num_patients_visited FORMAT 99999

SELECT H.hos_id AS hospital_id,
       H.name AS hospital_name,
       COUNT(DISTINCT PV.Pt_id) AS num_patients_visited
FROM F23_S003_T1_Hospital_Branch H
JOIN F23_S003_T1_Patients P ON H.hos_id = P.hos_id
JOIN F23_S003_T1_Patient_visiting PV ON P.pt_id = PV.Pt_id
WHERE PV.Pt_visiting_date BETWEEN TO_DATE('2019-01-01', 'YYYY-MM-DD') AND TO_DATE('2023-12-31', 'YYYY-MM-DD')
GROUP BY H.hos_id, H.name
HAVING COUNT(DISTINCT PV.Pt_id) >= 25
ORDER BY COUNT(DISTINCT PV.Pt_id) desc;

/*


HOSPITAL_ID HOSPITAL_NAME                  NUM_PATIENTS_VISITED
----------- ------------------------------ --------------------
          6 HospitalBranch6                                  32
          5 HospitalBranch5                                  26
          1 HospitalBranch1                                  25


*/


-- 6) Compare the overall average salary of each hospital branch with the doctors working in that branch. (Over)


COLUMN hospital_id FORMAT 9999
COLUMN hospital_name FORMAT A30
COLUMN doctor_id FORMAT 9999
COLUMN doctor_name FORMAT A30
COLUMN doctor_salary FORMAT 99999
COLUMN avg_hospital_salary FORMAT 99999

SELECT D.hos_id AS hospital_id,
       H.name AS hospital_name,
       D.d_id AS doctor_id,
       D.fname || ' ' || D.lname AS doctor_name,
       D.salary AS doctor_salary,
       AVG(D.salary) OVER (PARTITION BY D.hos_id) AS avg_hospital_salary
FROM F23_S003_T1_Doctors D
JOIN F23_S003_T1_Hospital_Branch H ON D.hos_id = H.hos_id;

/*


HOSPITAL_ID HOSPITAL_NAME                  DOCTOR_ID DOCTOR_NAME                    DOCTOR_SALARY AVG_HOSPITAL_SALARY
----------- ------------------------------ --------- ------------------------------ ------------- -------------------
          1 HospitalBranch1                        1 Adam Anderson                           8000                8750
          1 HospitalBranch1                        2 Bella Brown                             8500                8750
          1 HospitalBranch1                        3 Charlie Clark                           9000                8750
          1 HospitalBranch1                        4 Daisy Davis                             9500                8750
          1 HospitalBranch1                       43 Quincy Quinn                            9000                8750
          1 HospitalBranch1                        6 Fiona Fisher                            8500                8750
          1 HospitalBranch1                        7 George Garcia                           9000                8750
          1 HospitalBranch1                       36 James Johnson                           9500                8750
          1 HospitalBranch1                       50 Xander Xu                               8500                8750
          1 HospitalBranch1                        5 Edward Evans                            8000                8750
          2 HospitalBranch2                       12 Lily Lee                                9500                9000

HOSPITAL_ID HOSPITAL_NAME                  DOCTOR_ID DOCTOR_NAME                    DOCTOR_SALARY AVG_HOSPITAL_SALARY
----------- ------------------------------ --------- ------------------------------ ------------- -------------------
          2 HospitalBranch2                       11 Kyle King                               9000                9000
          2 HospitalBranch2                       10 Julia Jackson                           8500                9000
          2 HospitalBranch2                        9 Ian Irwin                               8000                9000
          2 HospitalBranch2                        8 Hannah Hill                             9500                9000
          2 HospitalBranch2                       44 Rachel Rivera                           9500                9000
          2 HospitalBranch2                       39 Mia Miller                              9000                9000
          2 HospitalBranch2                       51 Yasmine Young                           9000                9000
          3 HospitalBranch3                       13 Mason Mitchell                          8000                8563
          3 HospitalBranch3                       17 Quinn Quinn                             8000                8563
          3 HospitalBranch3                       45 Samuel Stewart                          8000                8563
          3 HospitalBranch3                       52 Zane Zhang                              9500                8563

HOSPITAL_ID HOSPITAL_NAME                  DOCTOR_ID DOCTOR_NAME                    DOCTOR_SALARY AVG_HOSPITAL_SALARY
----------- ------------------------------ --------- ------------------------------ ------------- -------------------
          3 HospitalBranch3                       41 Olivia Owens                            8000                8563
          3 HospitalBranch3                       16 Penelope Perez                          9500                8563
          3 HospitalBranch3                       14 Nina Nguyen                             8500                8563
          3 HospitalBranch3                       15 Oliver Owens                            9000                8563
          4 HospitalBranch4                       46 Tessa Taylor                            8500                8500
          4 HospitalBranch4                       20 Tyler Taylor                            9500                8500
          4 HospitalBranch4                       21 Ursula Upton                            8000                8500
          4 HospitalBranch4                       19 Sophia Stewart                          9000                8500
          4 HospitalBranch4                       37 Katherine Kennedy                       8000                8500
          4 HospitalBranch4                       53 Ava Allen                               8000                8500
          4 HospitalBranch4                       18 Ryan Rivera                             8500                8500

HOSPITAL_ID HOSPITAL_NAME                  DOCTOR_ID DOCTOR_NAME                    DOCTOR_SALARY AVG_HOSPITAL_SALARY
----------- ------------------------------ --------- ------------------------------ ------------- -------------------
          5 HospitalBranch5                       22 Victor Vega                             8500                8857
          5 HospitalBranch5                       23 Wendy Ward                              9000                8857
          5 HospitalBranch5                       24 Xander Xu                               9500                8857
          5 HospitalBranch5                       25 Yvonne Young                            8000                8857
          5 HospitalBranch5                       47 Ulysses Upton                           9000                8857
          5 HospitalBranch5                       54 Benjamin Barnes                         8500                8857
          5 HospitalBranch5                       40 Nathan Nguyen                           9500                8857
          6 HospitalBranch6                       42 Peter Perez                             8500                8813
          6 HospitalBranch6                       30 David Diaz                              8500                8813
          6 HospitalBranch6                       29 Cara Cruz                               8000                8813
          6 HospitalBranch6                       27 Alice Allen                             9000                8813

HOSPITAL_ID HOSPITAL_NAME                  DOCTOR_ID DOCTOR_NAME                    DOCTOR_SALARY AVG_HOSPITAL_SALARY
----------- ------------------------------ --------- ------------------------------ ------------- -------------------
          6 HospitalBranch6                       26 Zane Zhang                              8500                8813
          6 HospitalBranch6                       28 Ben Barnes                              9500                8813
          6 HospitalBranch6                       55 Charlotte Cruz                          9000                8813
          6 HospitalBranch6                       48 Violet Vega                             9500                8813
          7 HospitalBranch7                       49 William Ward                            8000                8750
          7 HospitalBranch7                       34 Henry Harrison                          8500                8750
          7 HospitalBranch7                       33 Grace Gomez                             8000                8750
          7 HospitalBranch7                       32 Felix Ferguson                          9500                8750
          7 HospitalBranch7                       31 Emma Ellis                              9000                8750
          7 HospitalBranch7                       56 Daniel Diaz                             9500                8750
          7 HospitalBranch7                       35 Isabel Irwin                            9000                8750

HOSPITAL_ID HOSPITAL_NAME                  DOCTOR_ID DOCTOR_NAME                    DOCTOR_SALARY AVG_HOSPITAL_SALARY
----------- ------------------------------ --------- ------------------------------ ------------- -------------------
          7 HospitalBranch7                       38 Liam Lopez                              8500                8750

56 rows selected.


*/



-- 7) Retrieve the total number of patients treated by each doctor in each hospital branch, including the grand total. 
-- Display only those combinations where the count of patients treated by the doctor is greater than 6. (Cube)


SELECT
    d.d_id,
    d.fname || ' ' || d.lname AS doctor_name,
    h.name AS hospital_name,
    COUNT(p.pt_id) AS patients_treated
FROM
    F23_S003_T1_Doctors d
JOIN
    F23_S003_T1_Patients p ON d.d_id = p.doc_id
JOIN
    F23_S003_T1_Hospital_Branch h ON d.hos_id = h.hos_id
GROUP BY
    CUBE (d.d_id, d.fname || ' ' || d.lname, h.name)
HAVING
    COUNT(p.pt_id) > 6
ORDER BY
    d.d_id, h.name;
	
	
/*	
	
	
      D_ID DOCTOR_NAME                    HOSPITAL_NAME                  PATIENTS_TREATED
---------- ------------------------------ ------------------------------ ----------------
        38 Liam Lopez                     HospitalBranch7                               9
        38                                HospitalBranch7                               9
        38 Liam Lopez                                                                   9
        38                                                                              9
                                          HospitalBranch1                              25
                                          HospitalBranch2                              20
                                          HospitalBranch3                              17
                                          HospitalBranch4                              21
                                          HospitalBranch5                              26
                                          HospitalBranch6                              32
           Liam Lopez                     HospitalBranch7                               9

      D_ID DOCTOR_NAME                    HOSPITAL_NAME                  PATIENTS_TREATED
---------- ------------------------------ ------------------------------ ----------------
                                          HospitalBranch7                              25
           Liam Lopez                                                                   9
           Zane Zhang                                                                  11
                                                                                      166

15 rows selected.

*/



-- 8) Retrieve the total number of employees in each designation and hospital branch, including the grand total. (Roll Up)


COLUMN hospital_id FORMAT 9999
COLUMN hospital_name FORMAT A30
COLUMN doctor_id FORMAT 9999
COLUMN doctor_name FORMAT A30
COLUMN doctor_salary FORMAT 99999
COLUMN avg_hospital_salary FORMAT 99999


SELECT
    e.designation,
    h.name AS hospital_name,
    COUNT(e.e_id) AS total_employees
FROM
    F23_S003_T1_Employees e
JOIN
    F23_S003_T1_Hospital_Branch h ON e.h_id = h.hos_id
GROUP BY
    ROLLUP (e.designation, h.name)
ORDER BY
    e.designation, h.name;
	

/*	
	


DESIGNATION                                                                                          HOSPITAL_NAME                  TOTAL_EMPLOYEES
---------------------------------------------------------------------------------------------------- ------------------------------ ---------------
Administrative Staff                                                                                 HospitalBranch1                              2
Administrative Staff                                                                                 HospitalBranch2                              1
Administrative Staff                                                                                 HospitalBranch3                              2
Administrative Staff                                                                                 HospitalBranch4                              2
Administrative Staff                                                                                 HospitalBranch5                              1
Administrative Staff                                                                                 HospitalBranch6                              2
Administrative Staff                                                                                 HospitalBranch7                              1
Administrative Staff                                                                                                                             11
Nurse                                                                                                HospitalBranch1                              3
Nurse                                                                                                HospitalBranch2                              2
Nurse                                                                                                HospitalBranch3                              1

DESIGNATION                                                                                          HOSPITAL_NAME                  TOTAL_EMPLOYEES
---------------------------------------------------------------------------------------------------- ------------------------------ ---------------
Nurse                                                                                                HospitalBranch4                              2
Nurse                                                                                                HospitalBranch6                              2
Nurse                                                                                                HospitalBranch7                              1
Nurse                                                                                                                                            11
Receptionist                                                                                         HospitalBranch1                              1
Receptionist                                                                                         HospitalBranch2                              2
Receptionist                                                                                         HospitalBranch3                              1
Receptionist                                                                                         HospitalBranch4                              2
Receptionist                                                                                         HospitalBranch5                              2
Receptionist                                                                                         HospitalBranch6                              1
Receptionist                                                                                         HospitalBranch7                              2

DESIGNATION                                                                                          HOSPITAL_NAME                  TOTAL_EMPLOYEES
---------------------------------------------------------------------------------------------------- ------------------------------ ---------------
Receptionist                                                                                                                                     11
Security Personnel                                                                                   HospitalBranch1                              2
Security Personnel                                                                                   HospitalBranch2                              1
Security Personnel                                                                                   HospitalBranch3                              2
Security Personnel                                                                                   HospitalBranch4                              1
Security Personnel                                                                                   HospitalBranch5                              2
Security Personnel                                                                                   HospitalBranch6                              1
Security Personnel                                                                                   HospitalBranch7                              1
Security Personnel                                                                                                                               10
Support Staff                                                                                        HospitalBranch1                              2
Support Staff                                                                                        HospitalBranch2                              2

DESIGNATION                                                                                          HOSPITAL_NAME                  TOTAL_EMPLOYEES
---------------------------------------------------------------------------------------------------- ------------------------------ ---------------
Support Staff                                                                                        HospitalBranch3                              2
Support Staff                                                                                        HospitalBranch5                              2
Support Staff                                                                                        HospitalBranch6                              1
Support Staff                                                                                        HospitalBranch7                              2
Support Staff                                                                                                                                    11
                                                                                                                                                 54

39 rows selected.


*/


-- 9) We want to know the medical supplier’s name who is supplying maximum medicines.  (Fetch)

SELECT
    m.supplier,
    COUNT(s.Medicine_id) AS total_medicines_supplied
FROM
    F23_S003_T1_Medicines m
JOIN
    F23_S003_T1_Sells s ON m.m_id = s.Medicine_id
GROUP BY
    m.supplier
ORDER BY
    total_medicines_supplied DESC
FETCH FIRST 1 ROW ONLY;

/*

 
SUPPLIER                                                                                             TOTAL_MEDICINES_SUPPLIED
---------------------------------------------------------------------------------------------------- ------------------------
PharmaHub Services                                                                                                         10

*/

-- 10) We want to know the insurance id, and insurance name that maximum patients are using.

SELECT
    insurance_id,
    insurance_name,
    COUNT(pt_id) AS total_patients
FROM
    F23_S003_T1_Patients
WHERE
    insurance_id IS NOT NULL
GROUP BY
    insurance_id, insurance_name
ORDER BY
    total_patients DESC
FETCH FIRST 1 ROW ONLY;

/*

INSURANCE_ID                                                                                         INSURANCE_NAME                                     TOTAL_PATIENTS
---------------------------------------------------------------------------------------------------- -------------------------------------------------- --------------
102                                                                                                  Insurance2                                                     11

*/



-- 11) We want to know which service is mostly used and which service is least used by the patients.


SELECT
    service_name,
    COUNT(*) AS service_count
FROM
    F23_S003_T1_Patients pat
JOIN
    F23_S003_T1_Hosp_services serv ON pat.hos_id = serv.hos_id
GROUP BY
    service_name
ORDER BY
    service_count DESC;
	

/*	



SERVICE_NAME                                                                                         SERVICE_COUNT
---------------------------------------------------------------------------------------------------- -------------
Maternity Care                                                                                                 166
Emergency Room                                                                                                 166
X-ray                                                                                                          166
MRI Scan                                                                                                       166
Physical Therapy                                                                                               166
Blood Test                                                                                                     166
Cardiology Consultation                                                                                        147
Orthopedic Surgery                                                                                             105
Psychiatry Consultation                                                                                         54
Dental Services                                                                                                 32

10 rows selected.

*/



-- 12) We want to know the disease name per age group that maximum patients are visiting the hospitals across different branches


WITH PatientAgeGroups AS (
    SELECT
        CASE
            WHEN EXTRACT(YEAR FROM CURRENT_DATE) - EXTRACT(YEAR FROM dob) BETWEEN 0 AND 18 THEN '0-18'
            WHEN EXTRACT(YEAR FROM CURRENT_DATE) - EXTRACT(YEAR FROM dob) BETWEEN 19 AND 35 THEN '19-35'
            WHEN EXTRACT(YEAR FROM CURRENT_DATE) - EXTRACT(YEAR FROM dob) BETWEEN 36 AND 50 THEN '36-50'
            WHEN EXTRACT(YEAR FROM CURRENT_DATE) - EXTRACT(YEAR FROM dob) BETWEEN 51 AND 65 THEN '51-65'
            ELSE '65+'
        END AS AgeGroup,
        patient_disease
    FROM
        F23_S003_T1_Patients
)
, DiseaseCounts AS (
    SELECT
        AgeGroup,
        patient_disease,
        COUNT(*) AS DiseaseCount
    FROM
        PatientAgeGroups
    GROUP BY
        AgeGroup, patient_disease
)
, MaxDiseasePerAgeGroup AS (
    SELECT
        AgeGroup,
        patient_disease,
        DiseaseCount,
        RANK() OVER (PARTITION BY AgeGroup ORDER BY DiseaseCount DESC) AS RankOrder
    FROM
        DiseaseCounts
)
SELECT
    AgeGroup,
    patient_disease AS MostCommonDisease,
    DiseaseCount
FROM
    MaxDiseasePerAgeGroup
WHERE
    RankOrder = 1;

/*



AGEGR MOSTCOMMONDISEASE                                                                                    DISEASECOUNT
----- ---------------------------------------------------------------------------------------------------- ------------
19-35 Fracture                                                                                                       13
36-50 Fracture                                                                                                        8
51-65 General Checkup                                                                                                 1
51-65 Shortness of Breath                                                                                             1
51-65 Joint Replacement                                                                                               1


*/


-- 13) We want to know which age group patients are mostly visiting the hospitals per branch 


SELECT
    hos_id,
    hospital_name,
    AgeGroup,
    COUNT(pt_id) AS patient_count
FROM (
    SELECT
        hb.hos_id,
        hb.name AS hospital_name,
        CASE
            WHEN EXTRACT(YEAR FROM CURRENT_DATE) - EXTRACT(YEAR FROM pa.dob) BETWEEN 0 AND 18 THEN '0-18'
            WHEN EXTRACT(YEAR FROM CURRENT_DATE) - EXTRACT(YEAR FROM pa.dob) BETWEEN 19 AND 35 THEN '19-35'
            WHEN EXTRACT(YEAR FROM CURRENT_DATE) - EXTRACT(YEAR FROM pa.dob) BETWEEN 36 AND 50 THEN '36-50'
            WHEN EXTRACT(YEAR FROM CURRENT_DATE) - EXTRACT(YEAR FROM pa.dob) BETWEEN 51 AND 65 THEN '51-65'
            ELSE '65+'
        END AS AgeGroup,
        pa.pt_id
    FROM
        F23_S003_T1_Hospital_Branch hb
    JOIN
        F23_S003_T1_Patients pa ON hb.hos_id = pa.hos_id
)
GROUP BY
    hos_id, hospital_name, AgeGroup
ORDER BY
    hos_id, patient_count DESC;
	

/*	


    HOS_ID HOSPITAL_NAME                  AGEGR PATIENT_COUNT
---------- ------------------------------ ----- -------------
         1 HospitalBranch1                36-50            12
         1 HospitalBranch1                19-35            11
         1 HospitalBranch1                51-65             2
         2 HospitalBranch2                19-35            13
         2 HospitalBranch2                36-50             9
         3 HospitalBranch3                36-50            11
         3 HospitalBranch3                19-35            10
         3 HospitalBranch3                51-65             1
         4 HospitalBranch4                19-35            12
         4 HospitalBranch4                36-50             8
         5 HospitalBranch5                36-50            15

    HOS_ID HOSPITAL_NAME                  AGEGR PATIENT_COUNT
---------- ------------------------------ ----- -------------
         5 HospitalBranch5                19-35            11
         6 HospitalBranch6                19-35            25
         6 HospitalBranch6                36-50             7
         7 HospitalBranch7                36-50            10
         7 HospitalBranch7                19-35             9

16 rows selected.
 
*/ 