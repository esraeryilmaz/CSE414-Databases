
------------------------ Queries ------------------------

SELECT * FROM PHARMACY;
SELECT * FROM EMPLOYEE;
SELECT * FROM COMPANY;
SELECT * FROM MEDICINE;
SELECT * FROM DOCTOR;
SELECT * FROM CUSTOMER;


------ Outer Right Join (Show medicines which will expire before 2025-05-05) ------
SELECT MEDICINE.Name
FROM MEDICINE
RIGHT JOIN PRODUCTION ON MEDICINE.Barcode = PRODUCTION. Barcode
Where  PRODUCTION.Last_use_date <'2025-05-05'


------ Outer Left Join (Companies which supplied in 'Türkiye') ------
SELECT COMPANY.Company_id, Company_name, Country, City
FROM COMPANY
LEFT JOIN SUPPLY ON COMPANY.Company_id = SUPPLY.C_id
WHERE COMPANY.Country in ('Türkiye');


------ Full Outer Join   (Show 'Psikiyatri' customers (patients)) ------
SELECT Customer_id, C_name, C_phone, C_address
FROM CUSTOMER
FULL OUTER JOIN DOCTOR ON DOCTOR.Doctor_id = CUSTOMER.DoctorID
WHERE DOCTOR.Speciality in ('Psikiyatri');


------ VIEW 1  (view of customers' informations with their doctors) ------
CREATE VIEW view1 AS
SELECT DOCTOR.D_name, DOCTOR.D_surname, DOCTOR.D_phone, DOCTOR.Speciality, CUSTOMER.C_name, CUSTOMER.C_address, CUSTOMER.C_phone
FROM DOCTOR, CUSTOMER
WHERE DOCTOR.Doctor_id = CUSTOMER.DoctorID;

SELECT * FROM view1;
DROP VIEW view1;


------ VIEW 2 (combine MEDICINE - PRODUCTION tables) ------
CREATE VIEW view2 AS
SELECT MEDICINE.Barcode, MEDICINE.Name, MEDICINE.Description, MEDICINE.Permission, MEDICINE.Price, MEDICINE.Stock, MEDICINE.Type, PRODUCTION.Production_date, PRODUCTION.Last_use_date
FROM MEDICINE, PRODUCTION
WHERE MEDICINE.Barcode = PRODUCTION.Barcode;

SELECT * FROM view2;
DROP VIEW view2;


------ VIEW 3 (combine EMPLOYEE - PAYMENT tables) ------
CREATE VIEW view3 AS
SELECT EMPLOYEE.SSN,EMPLOYEE.Employee_name,EMPLOYEE.Employee_surname,EMPLOYEE.Experience,EMPLOYEE.Job_title,EMPLOYEE.Phone_number,PAYMENT.Payment_id,PAYMENT.P_type,PAYMENT.Payment_date,PAYMENT.CustomerID,PAYMENT.Total_amount
FROM EMPLOYEE,PAYMENT
WHERE EMPLOYEE.SSN = PAYMENT.EmployeeID;

SELECT * FROM view3;
DROP VIEW view3;


------ VIEW 4 (combine EMPLOYEE - PHARMACY tables) ------
CREATE VIEW view4 AS
SELECT PHARMACY.Pharmacy_id, PHARMACY.Pharmacy_name, PHARMACY.City, EMPLOYEE.P_ID,EMPLOYEE.Employee_name,EMPLOYEE.Employee_surname,EMPLOYEE.Job_title,EMPLOYEE.SSN,EMPLOYEE.Experience
FROM PHARMACY, EMPLOYEE
WHERE PHARMACY.Pharmacy_id = EMPLOYEE.P_ID;

SELECT * FROM view4;
DROP VIEW view4;


------ VIEW 5 (View the medicines that have permission to be sold with receipt ) ------
CREATE VIEW view5 AS
SELECT MEDICINE.Barcode,MEDICINE.Name,MEDICINE.Description,MEDICINE.Permission,MEDICINE.Type,MEDICINE.Price,MEDICINE.Stock
FROM MEDICINE
WHERE MEDICINE.Permission in (0);

SELECT * FROM view5;
DROP VIEW view5;



------ ADDITIONAL QUERIES ------

------ Search Aspirin in MEDICINE table ------
SELECT Name, Barcode, Price, Description, Stock
from MEDICINE
Where Name in ('Aspirin');


------ Sorting medicines by sales quantity ------
SELECT Count(CONTAIN.MedicineID) as Total, MEDICINE.Name
from CONTAIN
LEFT JOIN MEDICINE ON CONTAIN.MedicineID = MEDICINE.Barcode
Group by MEDICINE.Name
order by Total DESC;


------ Update pharmacy ------
UPDATE PHARMACY
SET Pharmacy_name='ÇÝÇEK ECZANESÝ'
WHERE Pharmacy_name='Esra Eczanesi';

Select * FROM PHARMACY;

UPDATE PHARMACY
SET Pharmacy_name='Esra Eczanesi'
WHERE Pharmacy_name='ÇÝÇEK ECZANESÝ';

Select * FROM PHARMACY;

------ Show the medicines that have permission to be sold without receipt ------
Select Distinct(MEDICINE.Name), Barcode, Permission
from CONTAIN
LEFT JOIN MEDICINE ON CONTAIN.MedicineID = MEDICINE.Barcode
Where Permission='1';


------ Show the medicines that have permission to be sold with receipt ------
Select Distinct(MEDICINE.Name), Barcode, Permission
from CONTAIN
LEFT JOIN MEDICINE ON CONTAIN.MedicineID = MEDICINE.Barcode
Where Permission='0';


SELECT CUSTOMER.Customer_id, CUSTOMER.C_name, CUSTOMER.C_address, CUSTOMER.DoctorID
FROM CUSTOMER
RIGHT JOIN DOCTOR ON CUSTOMER.DoctorID = DOCTOR.Doctor_id;


------ Who has experience less than or equal 2 years as an EMPLOYEE? ------
SELECT Employee_name, Employee_surname, Job_title, Experience
FROM EMPLOYEE
WHERE Experience<=2

