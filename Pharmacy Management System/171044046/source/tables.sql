
------------------------ CREATE TABLES ------------------------

CREATE TABLE PHARMACY ( Pharmacy_id INT NOT NULL,
						Pharmacy_name VARCHAR(50) NOT NULL,
						Phone_number VARCHAR(15) NOT NULL,
						City VARCHAR (10) NOT NULL,
						Street VARCHAR(50) NOT NULL,
						primary key (Pharmacy_id) );


CREATE TABLE COMPANY ( Company_id INT NOT NULL,
					   Company_name Varchar(30) NOT NULL,
					   Company_phone_num VARCHAR(30) NOT NULL,
					   Country VARCHAR(50) NOT NULL,
					   City VARCHAR(100) NOT NULL,
					   Postal_code INT NOT NULL,
					   primary key (Company_id) );


CREATE TABLE SUPPLY ( Supply_date Date,
					  P_id INT NOT NULL,
					  C_id INT NOT NULL,
					  FOREIGN KEY (P_id) REFERENCES PHARMACY (Pharmacy_id),
					  FOREIGN KEY (C_id) REFERENCES COMPANY(Company_id) );


CREATE TABLE ORDERS ( Order_id INT NOT NULL,
					  Quantity INT NOT NULL,
					  Order_date Date,
					  Primary key (Order_id) );


CREATE TABLE MEDICINE ( Barcode INT NOT NULL,
						Name Varchar(30) NOT NULL,
						Price FLOAT NOT NULL,
						Permission BIT NOT NULL,
						Description VARCHAR(255) NOT NULL,
						Type VARCHAR(15) NOT NULL,
						Stock INT NOT NULL,
						P_id INT NOT NULL,
						Primary KEY (Barcode),
						Foreign KEY (P_id) REFERENCES PHARMACY(Pharmacy_id) );


CREATE TABLE EMPLOYEE (SSN int NOT NULL,
					   Employee_name VARCHAR(20) NOT NULL,
					   Employee_surname VARCHAR(30) NOT NULL,
					   Phone_number VARCHAR(15) NOT NULL,
					   Experience INT NOT NULL,
					   Job_title VARCHAR (20) NOT NULL,
					   P_ID INT NOT NULL,
					   Primary Key (SSN),
					   Foreign Key (P_ID) REFERENCES PHARMACY (Pharmacy_id) );



CREATE TABLE CONTAIN ( OrderID INT NOT NULL,
					   MedicineID INT NOt NULL,
					   Foreign KEY(OrderID) REFERENCES ORDERS(Order_id),
					   Foreign KEY(MedicineID) REFERENCES MEDICINE(Barcode) );


CREATE TABLE PRODUCTION ( CompanyID INT NOT NULL,
						  Barcode INT NOT NULL,
						  Production_date Date NOT NULL,
						  Last_use_date Date NOT NULL,
						  Foreign Key (CompanyID) REFERENCES COMPANY (Company_id),
						  Foreign Key (Barcode) REFERENCES MEDICINE (Barcode) );


CREATE TABLE DOCTOR (Doctor_id INT NOT NULL,
					 D_name VARCHAR(20) NOT NULL,
					 D_surname VARCHAR (30) NOT NULL,
					 D_phone VARCHAR(15) NOT NULL,
					 Speciality VARCHAR(30) NOT NULL,
					 P_id INT NOT NULL,
					 contract_data Date NOT NULL,
					 Primary Key (Doctor_id),
					 Foreign Key (P_id) References PHARMACY (Pharmacy_id) );


CREATE TABLE CUSTOMER ( Customer_id INT NOT NULL,
						C_name VARCHAR(50) NOT NULL,
						C_phone VARCHAR(15) NOT NULL,
						C_address VARCHAR(50) NOT NULL,
						OrderID INT NOT NULL,
						DoctorID INT,
						Primary Key (Customer_id),
						Foreign Key (OrderID) REFERENCES ORDERS (Order_id),
						Foreign Key (DoctorID) REFERENCES DOCTOR (Doctor_id) );


CREATE TABLE PAYMENT ( Payment_id INT NOT NULL,
					   P_type Varchar(30) NOT NULL,
					   Payment_date DATE NOT NULL, 
					   Total_amount FLOAT NOT NULL,
					   CustomerID INT NOT NULL,
					   EmployeeID INT NOT NULL,
					   Primary Key (Payment_id),
					   Foreign Key (CustomerID) References CUSTOMER (Customer_id),
					   Foreign Key (EmployeeID) References EMPLOYEE (SSN) );

