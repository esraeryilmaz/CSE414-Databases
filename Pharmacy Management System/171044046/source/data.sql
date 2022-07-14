
-------- Inserting Data into the database --------


Insert Into PHARMACY Values (1, 'Esra Eczanesi', '0216900', 'Ýstanbul', 'Çamlýca Caddesi');


Insert Into DOCTOR Values (10, 'Mehmet', 'Öz', '777777', 'Genel Cerrahi',1, '2016-06-10');
Insert Into DOCTOR Values (11, 'Ayþe', 'Demir', '666666', 'Göz Hastalýklarý',1, '2014-01-05');
Insert Into DOCTOR Values (12, 'Ali', 'Arslan', '555555', 'Dahiliye',1, '2018-02-15');
Insert Into DOCTOR Values (13, 'Meryem', 'Çelik', '444444', 'Kadýn Hastalýklarý',1, '2015-10-18');
Insert Into DOCTOR Values (14, 'Ahmet', 'Yýlmaz', '333333', 'Çocuk Hastalýklarý',1, '2017-05-01');
Insert Into DOCTOR Values (15, 'Manolya', 'Kaya', '222222', 'Psikiyatri',1, '2020-09-09');
Insert Into DOCTOR Values (16, 'Burak', 'Saz', '111111', 'KBB',1, '2021-12-22');
Insert Into DOCTOR Values (17, 'Hatice', 'Koç', '888888', 'Endokrinoloji',1, '2015-03-13');
Insert Into DOCTOR Values (18, 'Deniz', 'Yurt', '999999', 'Dermatoloji',1, '2021-07-20');
Insert Into DOCTOR Values (19, 'Yaprak', 'Þahin', '111000', 'Ortopedi',1, '2022-06-10');

---
Insert Into DOCTOR Values (20, 'Beril', 'Kutlu', '998889', 'Kardiyoloji',1, '2021-09-13');



Insert Into EMPLOYEE Values (11111, 'Esra', 'Eryýlmaz', '535-45-45', 2, 'Eczacý', 1 );
Insert Into EMPLOYEE Values (22222, 'Hasan', 'Eryýlmaz', '555-12-12', 24, 'Müdür', 1 );
Insert Into EMPLOYEE Values (33333, 'Dilek', 'Eryýlmaz', '545-67-67', 22, 'Muhasebeci', 1 );
Insert Into EMPLOYEE Values (44444, 'Utku', 'Eryýlmaz', '535-55-55', 1, 'Kalfa', 1 );


Insert INTO ORDERS VALUES (30, 1, '2022-06-03');
Insert INTO ORDERS VALUES (31, 2, '2022-06-03');
Insert INTO ORDERS VALUES (32, 2, '2022-06-04');
Insert INTO ORDERS VALUES (33, 3, '2022-06-05');
Insert INTO ORDERS VALUES (34, 5, '2022-06-07');
Insert INTO ORDERS VALUES (35, 2, '2022-06-08');
Insert INTO ORDERS VALUES (36, 1, '2022-06-10');
Insert INTO ORDERS VALUES (37, 1, '2022-06-10');
Insert INTO ORDERS VALUES (38, 3, '2022-06-10');
Insert INTO ORDERS VALUES (39, 4, '2022-06-12');



INSERT into MEDICINE VALUES(100, 'Advil',6.00,1,'aðrý kesici','tablet',35,1 );
INSERT into MEDICINE VALUES(101, 'Sebamed',40.0,1,'cilt bakým','krem',15,1 );
INSERT into MEDICINE VALUES(102, 'Aerius',10.00,1,'alerji hapý','tablet',25,1 );
INSERT into MEDICINE VALUES(103, 'Nexium',20.00,1,'mide ilacý','tablet',20,1 );
INSERT into MEDICINE VALUES(104, 'Norvasc',15.00,1,'tansiyon ilacý','tablet',10,1 );
INSERT into MEDICINE VALUES(105, 'Perebron',9.00,1,'öksürük þurubu','þurup',10,1 );
INSERT into MEDICINE VALUES(106, 'Metpamid',12.00,1,'bulantý þurubu','þurup',10,1 );
INSERT into MEDICINE VALUES(107, 'Naprosyn',47.00,1,'romatizma ilacý','tablet',20,1 );
INSERT into MEDICINE VALUES(108, 'Aspirin',1.00,1,'aðrý kesici','tablet',35,1 );
INSERT into MEDICINE VALUES(109, 'Corasbin',17.00,1,'kan sulandýrýcý','tablet',20,1 );
INSERT into MEDICINE VALUES(110, 'Voltaren Emulgel',48.00,1,'romatizma ilacý','jel',10,1 );
INSERT into MEDICINE VALUES(111, 'Ocuvite Complete',22.00,1,'göz vitamini','tablet',10,1 );
INSERT into MEDICINE VALUES(112, 'Otrivin',16.00,1,'burun spreyi','sprey',20,1 );
INSERT into MEDICINE VALUES(113, 'Benexol b12',10.00,1,'vitamin ilacý','tablet',35,1 );
INSERT into MEDICINE VALUES(114, 'Asiviral Krem',10.00,1,'uçuk kremi','krem',20,1 );
INSERT into MEDICINE VALUES(115, 'Terramycin',13.00,1,'yara merhemi','krem',10,1 );
INSERT into MEDICINE VALUES(116, 'Siprogut',9.00,1,'kulak damlasý','damla',10,1 );
INSERT into MEDICINE VALUES(117, 'Glifor',19.00,1,'þeker ilacý','tablet',10,1 );
INSERT into MEDICINE VALUES(118, 'Ritalin',30.00,0,'uyuþturucu','tablet',10,1 );
INSERT into MEDICINE VALUES(119, 'Medikinet Retart',40.00,0,'uyuþturucu','tablet',20,1 );
INSERT into MEDICINE VALUES(120, 'Prozac',30.00,0,'sakinleþtirici','tablet',10,1 );


Insert Into CONTAIN Values (30, 100);
Insert Into CONTAIN Values (31, 118);
Insert Into CONTAIN Values (31, 120);
Insert Into CONTAIN Values (32, 100);
Insert Into CONTAIN Values (32, 114);
Insert Into CONTAIN Values (33, 108);
Insert Into CONTAIN Values (33, 118);
Insert Into CONTAIN Values (33, 120);
Insert Into CONTAIN Values (34, 100);
Insert Into CONTAIN Values (34, 112);
Insert Into CONTAIN Values (34, 116);
Insert Into CONTAIN Values (34, 103);
Insert Into CONTAIN Values (34, 105);
Insert Into CONTAIN Values (35, 102);
Insert Into CONTAIN Values (35, 112);
Insert Into CONTAIN Values (36, 115);
Insert Into CONTAIN Values (37, 104);
Insert Into CONTAIN Values (38, 107);
Insert Into CONTAIN Values (38, 120);
Insert Into CONTAIN Values (38, 116);
Insert Into CONTAIN Values (39, 100);
Insert Into CONTAIN Values (39, 102);
Insert Into CONTAIN Values (39, 105);
Insert Into CONTAIN Values (39, 111);


INSERT into COMPANY VALUES(500 ,'Novartis','+8-67-431','Ýsviçre','Basel','11');
INSERT into COMPANY VALUES(501 ,'Pfizer','+7-23-135','ABD','New York','22');
INSERT into COMPANY VALUES(502 ,'Abdi Ýbrahim','+9-43-12-432','Türkiye','Ýstanbul','34');
INSERT into COMPANY VALUES(503 ,'gsk','+4-23-21-777','Ýngiltere','Londra','44');
INSERT into COMPANY VALUES(504 ,'Bayer','+5-90-654','Almanya','Leverkusen','55');
INSERT into COMPANY VALUES(505 ,'Nobel','+9-32-456','Türkiye','Ýstanbul','34');
INSERT into COMPANY VALUES(506 ,'Sanovel','+9-55-990','Türkiye','Ýstanbul','34');
INSERT into COMPANY VALUES(507 ,'Sandoz','+8-34-542','Ýsviçre','Basel','11');
INSERT into COMPANY VALUES(508 ,'Berko','+9-43-21-111','Türkiye','Ýstanbul','34');
INSERT into COMPANY VALUES(509 ,'Sanofi','+3-55-666','Fransa','Paris','66');


INSERT into SUPPLY VALUES('2022-06-05', 1, 500);
INSERT into SUPPLY VALUES('2022-06-10', 1, 501);
INSERT into SUPPLY VALUES('2022-06-15', 1, 502);
INSERT into SUPPLY VALUES('2022-05-10', 1, 503);
INSERT into SUPPLY VALUES('2022-04-15', 1, 504);
INSERT into SUPPLY VALUES('2022-03-25', 1, 505);
INSERT into SUPPLY VALUES('2022-01-30', 1, 506);
INSERT into SUPPLY VALUES('2022-06-14', 1, 507);
INSERT into SUPPLY VALUES('2022-06-03', 1, 508);
INSERT into SUPPLY VALUES('2022-06-04', 1, 509);


INSERT into PRODUCTION VALUES(500,100,'2022-01-28 ', '2030-01-28');
INSERT into PRODUCTION VALUES(500,101,'2021-02-02 ', '2025-02-02');
INSERT into PRODUCTION VALUES(500,102,'2022-05-15 ', '2030-05-15');
INSERT into PRODUCTION VALUES(501,103,'2022-01-01 ', '2028-01-01');
INSERT into PRODUCTION VALUES(501,104,'2020-12-30 ', '2023-12-30');
INSERT into PRODUCTION VALUES(502,105,'2021-10-11 ', '2026-10-11');
INSERT into PRODUCTION VALUES(502,106,'2022-02-17 ', '2027-02-17');
INSERT into PRODUCTION VALUES(503,107,'2021-08-19 ', '2028-08-19');
INSERT into PRODUCTION VALUES(503,108,'2020-10-09 ', '2029-10-09');
INSERT into PRODUCTION VALUES(503,109,'2021-08-18 ', '2030-08-18');
INSERT into PRODUCTION VALUES(504,110,'2021-10-13 ', '2040-10-13');
INSERT into PRODUCTION VALUES(505,111,'2022-02-04 ', '2023-02-04');
INSERT into PRODUCTION VALUES(505,112,'2022-01-01 ', '2025-01-01');
INSERT into PRODUCTION VALUES(506,113,'2022-04-20 ', '2024-04-20');
INSERT into PRODUCTION VALUES(506,114,'2020-12-12 ', '2030-12-12');
INSERT into PRODUCTION VALUES(506,115,'2021-05-30 ', '2031-05-30');
INSERT into PRODUCTION VALUES(507,116,'2021-10-15 ', '2032-10-15');
INSERT into PRODUCTION VALUES(508,117,'2022-04-10 ', '2032-04-10');
INSERT into PRODUCTION VALUES(508,118,'2022-06-06 ', '2028-06-06');
INSERT into PRODUCTION VALUES(509,119,'2022-03-17 ', '2025-03-17');
INSERT into PRODUCTION VALUES(509,120,'2022-01-13 ', '2025-01-13');


INSERT into CUSTOMER VALUES(1000, 'Yaprak Þahin','555-666','Kadýköy',30,10);
INSERT into CUSTOMER VALUES(1001, 'Safiye Derenoðlu','222-333','Beyoðlu',31,15);
INSERT into CUSTOMER VALUES(1002, 'Sevgi Akýn','111-222','Tuzla',32,11);
INSERT into CUSTOMER VALUES(1003, 'Yusuf Yýldýz','999-999','Üsküdar',33,15);
INSERT into CUSTOMER VALUES(1004, 'Fatma Kara','333-555','Þiþli',34,19);
INSERT into CUSTOMER VALUES(1005, 'Mustafa Çetin','444-111','Beykoz',35,17);
INSERT into CUSTOMER VALUES(1006, 'Emine Kýlýç','999-000','Ataþehir',36,13);
INSERT into CUSTOMER VALUES(1007, 'Zeynep Yýldýrým','777-555','Bakýrköy',37,12);
INSERT into CUSTOMER VALUES(1008, 'Gülben Derenoðlu','888-222','Ümraniye',38,15);
INSERT into CUSTOMER VALUES(1009, 'Onur Yýlmaz','111-999','Üsküdar',39,16);


Insert INTO PAYMENT Values(800,'kart','2021-03-14', 10.00,1000,33333);
Insert INTO PAYMENT Values(801,'kart','2021-03-14', 10.00,1001,33333);
Insert INTO PAYMENT Values(802,'nakit','2021-03-14', 20.00,1002,33333);
Insert INTO PAYMENT Values(803,'nakit','2021-03-14', 15.00,1003,11111);
Insert INTO PAYMENT Values(804,'nakit','2021-03-14', 59.00,1004,22222);
Insert INTO PAYMENT Values(805,'nakit','2021-03-14', 35.00,1005,44444);
Insert INTO PAYMENT Values(806,'kart','2021-03-14', 19.00,1006,33333);
Insert INTO PAYMENT Values(807,'kart','2021-03-14', 29.00,1007,33333);
Insert INTO PAYMENT Values(808,'kart','2021-03-14', 35.00,1008,33333);
Insert INTO PAYMENT Values(809,'nakit','2021-03-14', 5.00,1009,33333);


