create database ASSIGNMENT;
use ASSIGNMENT;
CREATE TABLE HANGAR (
  NUMBER INT PRIMARY KEY,
  CAPACITY INT,
  LOCATION_ VARCHAR(30)
);
CREATE TABLE PLANETYPE
(
  MODEL VARCHAR(100) PRIMARY KEY,
  CAPACITY INT,
  WEIGHT_ INT
);
CREATE TABLE AIRPLANE
(
  REG# INT,
  OF_TYPE VARCHAR(100),
  PRIMARY KEY (REG#, OF_TYPE),
  STORED_IN INT,
  FOREIGN KEY (OF_TYPE) REFERENCES PLANETYPE(MODEL) ON DELETE CASCADE,
  FOREIGN KEY (STORED_IN) REFERENCES HANGAR(NUMBER) ON DELETE CASCADE
);
INSERT INTO HANGAR VALUES
(1,  100,  'ISLAMABAD'),
(2,  200,  'RAWALPINDI'),
(3,  300,  'LAHORE'),
(4,  400,  'RAWAT'),
(5,  500,  'MULTAN'),
(6,  600,  'HYDERABAD'),
(7,  700,  'FAISALABAD'),
(8,  800,  'KARACHI'),
(9,  900,  'SIALKOT'),
(10, 1000, 'PASRUR'),
(11, 1100, 'KOHAT'),
(12, 1200, 'MARDAN'),
(13, 1300, 'PESHAWAR'),
(14, 1400, 'GUJRANWALA'),
(15, 1500, 'QUETTA'),
(16, 1600, 'BAHAWALPUR'),
(17, 1700, 'SARGODHA'),
(18, 1800, 'SUKHUR'),
(19, 1900, 'GUJRAT'),
(20, 2000, 'OKARA');
INSERT INTO PLANETYPE VALUES
('A', 100,  1000),
('B', 200,  2000),
('C', 300,  3000),
('D', 400,  4000),
('E', 500,  5000),
('F', 600,  6000),
('G', 700,  7000),
('H', 800,  8000),
('I', 900,  9000),
('J', 1000, 10000),
('K', 1100, 11000),
('L', 1200, 12000),
('M', 1300, 13000),
('N', 1400, 14000),
('O', 1500, 15000),
('P', 1600, 16000),
('Q', 1700, 17000),
('R', 1800, 18000),
('S', 1900, 19000),
('T', 2000, 20000);
INSERT INTO AIRPLANE VALUES
(1,  'A', 1),
(2,  'B', 2),
(3,  'Q', 2),
(4,  'C', 3),
(5,  'F', 3),
(6,  'C', 3),
(7,  'D', 4),
(8,  'E', 5),
(9,  'F', 6),
(10, 'G', 6),
(11, 'F', 6),
(12, 'L', 6),
(13, 'N', 6),
(14, 'B', 6),
(15, 'G', 7),
(16, 'H', 8),
(17, 'I', 9),
(18, 'J', 10),
(19, 'P', 10),
(20, 'K', 10),
(21, 'L', 10),
(22, 'M', 13),
(23, 'N', 14),
(24, 'O', 15),
(25, 'P', 16),
(26, 'Q', 16),
(27, 'R', 16),
(28, 'S', 16),
(29, 'T', 16),
(30, 'A', 16),
(31, 'D', 16),
(32, 'Q', 17),
(33, 'R', 18),
(34, 'S', 19),
(35, 'T', 20);
CREATE TABLE EMPLOYEE
(
SSN INT PRIMARY KEY,
SALARY INT,
SHIFT_ VARCHAR(100) CHECK (SHIFT_ IN ('MORNING', 'NIGHT')),
NAME_ VARCHAR(100),
ADDRESS_ VARCHAR(100),
TELEPHONE VARCHAR(100)
);
INSERT INTO EMPLOYEE VALUES
(100,10000,'MORNING','HAMZA','G11/3 street 12','0333121234'),
(101,20000,'NIGHT','MOOSA','F11/3 street 11','0332454233'),
(102,100000,'MORNING','NOMI TARAR','G11/3 street 1',   '0354215534'),
(103,100000,'NIGHT','HAMDAN','G14/3 street 4',         '0333123544'),
(104,2000,'NIGHT','ABDUL MANAN','G16/2 street 2',      '0333125435'),
(105,40000,'MORNING','AHAMD ABDULLAH','H11/3 street 1','0333343243'),
(106,12000,'MORNING','SHAHMEER','G12/3 street 111',    '0333324233'),
(107,40000,'NIGHT','MOIZA','G9/2 street 3',            '0334534542'),
(108,70000,'MORNING','RAFAY','IQBAL TOWN STREET 3',    '0345423234'),
(109,110000,'MORNING','SUBHAN','ZAKRIA TOWN STREET 15','0333134234'),
(110,560000,'MORNING','ALI WAHAJ','MODEL TOWN STREET 2123','0333121234'),
(111,60000,'NIGHT','SHAHAB','BANI GALA STREET 134','0333125424'),
(112,40000,'MORNING','UZAIR','JOHAR TOWN STREET 1','0333435453'),
(113,50000,'MORNING','ALI HUZAIM','G11/3 street 145','0333452342'),
(114,110000,'MORNING','SHAFAN','D11/3 street 155','0333145344'),
(115,550000,'NIGHT','SHAHZAIB','ZAKRIA TOWN STREET 1','0333123423'),
(116,150000,'NIGHT','WAQAS','ALI TOWN STREET 41','0333135634'),
(117,240000,'MORNING','QASIM','G11/3 street 14','0333123425'),
(118,540000,'NIGHT','ALI','G11/3 street 64','03331536452'),
(119,110000,'MORNING','UZAIR ALI','F8/3 street 12','033312234');
CREATE TABLE WORKS_ON
(
SSN INT,
    MODEL VARCHAR(100),
PRIMARY KEY (SSN, Model),
    FOREIGN KEY (SSN) REFERENCES EMPLOYEE(SSN) ON DELETE CASCADE,
    FOREIGN KEY (MODEL) REFERENCES PLANETYPE(Model) ON DELETE CASCADE
);
INSERT INTO WORKS_ON VALUES
 (100,'A'),
 (100,'D'),
 (100,'F'),
 (101,'B'),
 (102,'C'),
 (103,'D'),
 (104,'E'),
 (105,'F'),
 (106,'G'),
 (107,'H'),
 (108,'I'),
 (109,'J'),
 (110,'K'),
 (111,'L'),
 (111,'S'),
 (111,'Q'),
 (112,'M'),
 (113,'N'),
 (114,'O'),
 (115,'P'),
 (116,'Q'),
 (117,'R'),
 (118,'S'),
 (119,'T');
CREATE TABLE PLANEsERVICE
(
SERVICEiD INT PRIMARY KEY,
PLANErEG# INT,
PLANE_TYPE VARCHAR(100),
EMPsSN INT,
DATE_ DATE,
HOURS_ INT,
WORK_CODE VARCHAR(100),
FOREIGN KEY (EMPsSN) REFERENCES EMPLOYEE(SSN),
FOREIGN KEY (EMPsSN, PLANE_TYPE) REFERENCES WORKS_ON(SSN, MODEL),
CONSTRAINT VALIDREG#andMODEL FOREIGN KEY (PLANErEG#, PLANE_TYPE)
        REFERENCES AIRPLANE(REG#, OF_TYPE)
);
INSERT INTO PLANEsERVICE VALUES
 (1,  35, 'T', 119, CONVERT(DATE,'2023-03-25'), 4,  1000), /* PAST WEEK 1-5 */
 (2,  34, 'S', 118, CONVERT(DATE,'2023-03-24'),  3, 1001),
 (3,  33, 'R', 117, CONVERT(DATE,'2023-03-23'), 10, 1002),
 (4,  32, 'Q', 116, CONVERT(DATE,'2023-03-22'),  4, 1003),
 (5,  31, 'D', 103, CONVERT(DATE,'2023-03-21'),  3, 1004),
 (6,  30, 'A', 100, CONVERT(DATE,'2023-02-25'),  5, 1005), /* PAST MONTH 6-10 */
 (7,  29, 'T', 119, CONVERT(DATE,'2023-02-24'),  1, 1006),
 (8,  28, 'S', 111, CONVERT(DATE,'2023-02-23'),  7, 1007),
 (9,  27, 'R', 117, CONVERT(DATE,'2023-02-22'),  1, 1008),
 (10, 26, 'Q', 116, CONVERT(DATE,'2023-02-21'), 88, 1009),
 (11, 25, 'P', 115, CONVERT(DATE,'2023-01-04'),  6, 1010),
 (12, 24, 'O', 114, CONVERT(DATE,'2018-06-01'), 55, 1011),
 (13, 23, 'N', 113, CONVERT(DATE,'2015-02-25'),  2, 1012),
 (14, 22, 'M', 112, CONVERT(DATE,'2023-02-27'),  9, 1013),
 (15, 21, 'L', 111, CONVERT(DATE,'2022-01-29'), 11, 1014),
 (16, 20, 'K', 110, CONVERT(DATE,'2023-01-11'),  5, 1015),
 (17, 19, 'P', 115, CONVERT(DATE,'2023-02-10'),  2, 1016),
 (18, 18, 'J', 109, CONVERT(DATE,'2022-06-06'), 45, 1017),
 (19, 17, 'I', 108, CONVERT(DATE,'2021-10-07'), 12, 1018),
 (20, 16, 'H', 107, CONVERT(DATE,'2013-12-23'), 42, 1019),
 (21, 15, 'G', 106, CONVERT(DATE,'2023-02-21'), 88, 1020),
 (22, 27, 'R', 117, CONVERT(DATE,'2023-02-22'),  1, 1021),
 (23, 34, 'S', 118, CONVERT(DATE,'2023-03-29'),  3, 1001);

CREATE TABLE CORPORATION
(
ID INT PRIMARY KEY,
NAME_ VARCHAR(100),
ADDRESS_ VARCHAR(100),
PHONE VARCHAR(100),
);
CREATE TABLE PERSON
(
SSN INT PRIMARY KEY,
NAME_ VARCHAR(100),
ADDRESS_ VARCHAR(100),
PHONE VARCHAR(100),
);
CREATE TABLE OWNS
(
AIRPLANEREG# INT PRIMARY KEY,
PLANETYPE VARCHAR(100),
CORPoWNERiD INT,
PERSONoWNERiD INT,
OWNERtYPE VARCHAR(100) CHECK (OWNERtYPE IN ('CORPORATION', 'PERSON')),
PDATE DATE,
FOREIGN KEY (AIRPLANEREG#, PLANETYPE) REFERENCES AIRPLANE(REG#,OF_TYPE) ON DELETE CASCADE,
FOREIGN KEY (CORPoWNERiD) REFERENCES CORPORATION(ID) ON DELETE CASCADE,
FOREIGN KEY (PERSONoWNERiD) REFERENCES PERSON(SSN) ON DELETE CASCADE
);
INSERT INTO PERSON VALUES
(1,  'MANAN',     'G-5/1', '8129'),
(2,  'MOOSA',     'G-5/2', '5791'),
(3,  'NOUMAN',    'G-5/3', '2435'),
(4,  'HAMDAN',    'G-5/4', '6973'),
(5,  'HAMZA',     'G-6/1', '6973'),
(6,  'FURQAN',    'G-6/2', '8956'),
(7,  'DANIAL',    'G-6/3', '9863'),
(8,  'MUNAF',     'G-6/4', '4736'),
(9,  'ASHAN',     'G-7/1', '2895'),
(10, 'HAROON',    'G-7/2', '7018'),
(11, 'JAMAL',     'G-7/3', '3645'),
(12, 'TEHSEEN',   'G-7/4', '5179'),
(13, 'SABOOR',    'G-8/1', '6248'),
(14, 'AREEB',    'G-8/2', '7692');
INSERT INTO CORPORATION VALUES
    (1001,  'Boeing', 'Boeing', '9938'),
(1002,  'Airbus', 'United States', '1097'),
(1003,  'Delta Air Lines', 'United States', '6723'),
(1004,  'American Airlines',    'United States', '3506'),
(1005,  'United Airlines', 'United States', '8214'),
(1006,  'Southwest Airlines',   'United States', '9871'),
(1007,  'Emirates', 'United Arab Emirates', '1573'),
(1008,  'British Airways', 'United Kingdom', '2168'),
(1009,  'Lufthansa', 'Germany', '6940'),
(1010,  'Air France', 'France', '7812'),
(1011,  'Singapore Airlines',   'Singapore', '4683');
INSERT INTO OWNS VALUES
(35, 'T', 1001, NULL, 'CORPORATION', CONVERT(DATE,'2023-03-25')), /* PAST WEEK 35-31 */
(34, 'S', 1002, NULL, 'CORPORATION', CONVERT(DATE,'2023-03-24')),
(33, 'R', 1003, NULL, 'CORPORATION', CONVERT(DATE,'2023-03-23')),
(32, 'Q', 1004, NULL, 'CORPORATION', CONVERT(DATE,'2023-03-22')),
(31, 'D', 1004, NULL, 'CORPORATION', CONVERT(DATE,'2023-03-21')),
(30, 'A', 1005, NULL, 'CORPORATION', CONVERT(DATE,'2023-02-25')), /* PAST MONTH 30-26 */
(29, 'T', 1006, NULL, 'CORPORATION', CONVERT(DATE,'2023-02-24')),
(28, 'S', 1007, NULL, 'CORPORATION', CONVERT(DATE,'2023-02-23')),
(27, 'R', 1007, NULL, 'CORPORATION', CONVERT(DATE,'2023-02-22')),
(26, 'Q', 1007, NULL, 'CORPORATION', CONVERT(DATE,'2023-02-21')),
(25, 'P', 1008, NULL, 'CORPORATION', CONVERT(DATE,'2020-01-05')),
(24, 'O', 1009, NULL, 'CORPORATION', CONVERT(DATE,'2021-01-07')),
(23, 'N', 1010, NULL, 'CORPORATION', CONVERT(DATE,'2022-01-13')),
(22, 'M', 1011, NULL, 'CORPORATION', CONVERT(DATE,'2011-03-13')),
(21, 'L', NULL,    1, 'PERSON',      CONVERT(DATE,'2023-03-25')), /* PAST WEEK 21-17 */
(20, 'K', NULL,    2, 'PERSON',      CONVERT(DATE,'2023-03-24')),
(19, 'P', NULL,    3, 'PERSON',      CONVERT(DATE,'2023-03-23')),
(18, 'J', NULL,    4, 'PERSON',      CONVERT(DATE,'2023-03-22')),
(17, 'I', NULL,    5, 'PERSON',      CONVERT(DATE,'2023-03-21')),
(16, 'H', NULL,    6, 'PERSON',      CONVERT(DATE,'2023-02-25')), /* PAST MONTH 16-12 */
(15, 'G', NULL,    7, 'PERSON',      CONVERT(DATE,'2023-02-24')),
(14, 'B', NULL,    8, 'PERSON',      CONVERT(DATE,'2023-02-23')),
(13, 'N', NULL,    9, 'PERSON',      CONVERT(DATE,'2023-02-22')),
(12, 'L', NULL,   10, 'PERSON',      CONVERT(DATE,'2023-02-21')),
(11, 'F', NULL,   11, 'PERSON',      CONVERT(DATE,'2018-03-07')),
(10, 'G', NULL,   12, 'PERSON',      CONVERT(DATE,'2017-03-07')),
(9,  'F', NULL,   13, 'PERSON',      CONVERT(DATE,'2012-03-07')),
(8,  'E', NULL,   14, 'PERSON',      CONVERT(DATE,'2010-03-13')),
(7,  'D', 1001, NULL, 'CORPORATION', CONVERT(DATE,'2005-03-13')),
(6,  'C', 1001, NULL, 'CORPORATION', CONVERT(DATE,'2002-03-13')),
(5,  'F', 1007, NULL, 'CORPORATION', CONVERT(DATE,'2008-03-13')),
(4,  'C', 1007, NULL, 'CORPORATION', CONVERT(DATE,'2009-03-13')),
(3,  'Q', 1007, NULL, 'CORPORATION', CONVERT(DATE,'2017-03-13'));


CREATE TABLE PILOT
(
SSN INT PRIMARY KEY,
LIC_NUM VARCHAR(100),
RESTRICTIONS VARCHAR(100),
NAME_ VARCHAR(100),
ADDRESS_ VARCHAR(100),
TELEPHONE VARCHAR(100)
);
INSERT INTO PILOT VALUES
(10,  'LIC-10',   'FLY UPTO 10HRS IN A DAY',   'NOUMAN',   'F11/1',    '0331212311'),
(11,  'LIC-11',   'FLY FROM KARACHI TO LONDON',   'UBAIDULLAH',   'G11/2',    '0331212311'),
(12,  'LIC-12',   'CANT LAND AT PERTH AIRPORT',   'ADEEL',   'F10/2',    '0331212311'),
(13,  'LIC-13',   'CAN ONLY TAKE DOMESTIC FLIGHTS',   'MOOSA',   'F9/2',    '0331212311'),
(14,  'LIC-14',   'CAN ONLY TAKE INTERNATIONAL FLIGHTS',   'HAMDAN',   'F11/1',    '0331212311'),
(15,  'LIC-15',   'FLY UPTO 6 HRS A DAY',   'HAMZA',   'D12/3',    '0331212311'),
(16,  'LIC-16',   'CANT TAKE MORE THAN TWO FLIGHTS A DAY',   'ABDUL MANAN',   'F6/1',    '0331212311'),
(17,  'LIC-17',   'CAN ONLY FLY CARGO PLANES',   'SUBHAN',   'D6/4',    '0331212311'),
(18,  'LIC-18',   'CAN ONLY FLY PASSENGER PLANES',   'AFTAB',   'E7/1',    '0331212311'),
(19,  'LIC-19',   'CAN FLY ONLY TO MULTAN',   'ALI',   'E11/1',    '0331212311'),
(20,  'LIC-20',   'CANT TAKE A DOMESTICATED FLIGHT',   'WAHAJ',   'G13/1',    '0331212311'),
(21,  'LIC-21',   'CAN TAKE INTERNATIONAL FLIGHTS',   'HAMZA IMRAN',   'G10/2',    '0331212311'),
(22,  'LIC-22',   'FLY UPTO 30HRS IN A WEEK',   'SALAHUDDIN',   'H11/1',    '0331212311'),
(23,  'LIC-23',   'CANT FLY TO INDIA',   'UZAIR',   'F9/1',    '0331212311'),
(24,  'LIC-24',   'FLY UPTO 180 HRS IN A MONTH',   'FURQAN',   'I8/1',    '0331212311'),
(25,  'LIC-25',   'CANT LAND AT ISRAEL',   'HANZALLA QUTTUBA',   'I10/1',    '0331212311'),
(26,  'LIC-26',   'FLY UPTO 11HRS IN A DAY',   'DANIYAL',   'I9/2',    '0331212311'),
(27,  'LIC-27',   'FLY UPTO 10HRS IN A DAY',   'AHMED ABDULLAH',   'G13/1',    '0331212311'),
(28,  'LIC-28',   'FLY UPTO 100HRS IN 2 WEEKS',   'MUNAF',   'G6/4',    '0331212311'),
(29,  'LIC-29',   'FLY UPTO 122HRS IN A MONTH',   'JAWAD',   'F11/1',    '0331212311');
CREATE TABLE FLIES
(
SSN INT,
PLAIN_TYPE VARCHAR(100),
FOREIGN KEY (SSN) REFERENCES PILOT (SSN) ON DELETE CASCADE,
FOREIGN KEY (PLAIN_TYPE) REFERENCES PLANETYPE(MODEL) ON DELETE CASCADE
);
INSERT INTO FLIES VALUES
(10,'A'),
(10,'S'),
(10,'T'),
(11,'B'),
(12,'C'),
(13,'D'),
(14,'E'),
(15,'F'),
(16,'G'),
(16,'N'),
(16,'M'),
(16,'L'),
(17,'H'),
(18,'I'),
(19,'J'),
(20,'K'),
(21,'L'),
(22,'M'),
(22,'S'),
(22,'A'),
(22,'D'),
(23,'N'),
(24,'O'),
(25,'P'),
(26,'Q'),
(26,'I'),
(27,'R'),
(28,'S'),
(28,'I'),
(28,'J'),
(28,'Q'),
(28,'L'),
(29,'T');