Create Database CLINIC_DATA_BASE;
CREATE TABLE UserP (
  UserP_ID int primary key not null,
  User_UserName varchar(50) not null,
  User_Password varchar(100) not null,
);

CREATE TABLE Account (
  Account_ID int primary key not null ,
  AccountUser_ID int,
  AccountName varchar(5000) not null,
  Account_Dob varchar(5000),
  Account_CreationDate varchar(5000) not null,
  AccountNotes varchar(5000),
  AccountType varchar null,
  AccountPhone varchar(5000),
);

CREATE TABLE Visit (
  Visit_ID int primary key not null,
  VisitReservation_ID int not null,
  VisitDoctor_ID int not null,
  VisitReasons varchar(200) ,
  VisitDiagnosis Varchar(200) not null,
  VisitNotes varchar(200) ,
  VisitDate varchar(50) not null,
);

CREATE TABLE Reservation (
  Reservation_ID int primary key not null,
  ReservationPatient_ID int not null,
  ReservationSecretary_ID int not null,
  ReservationVisit_Date varchar(50) not null,
  ReservationVisit_Slot int not null,
  ReservationDate varchar(50) not null,
);

INSERT INTo [UserP] (UserP_ID, User_UserName, User_Password) VALUES (1,'AymanMetwally','m55555')
INSERT INTo [UserP] (UserP_ID, User_UserName, User_Password) VALUES (2,'AhmedAyman','a44444')
INSERT INTo [UserP] (UserP_ID, User_UserName, User_Password) VALUES (3,'OsamaElsayed','o33333')
INSERT INTo [UserP] (UserP_ID, User_UserName, User_Password) VALUES (4,'AmgadKhalid','k22222')
INSERT INTo [UserP] (UserP_ID, User_UserName, User_Password) VALUES (5,'MohamedOsama','m11111')

INSERT INTo Account (Account_ID, AccountUser_ID, AccountName, Account_Dob, Account_CreationDate, AccountNotes, AccountPhone)
VALUES (1, 1, 'Ayman.Metwally', '15/6/2020', '15/6/2020', 'enter phone', '01006366524')
INSERT INTo Account (Account_ID, AccountUser_ID, AccountName, Account_Dob, Account_CreationDate, AccountNotes, AccountPhone)
VALUES(2, 2, 'Ahmed.Ayman','14/6/2020','14/6/2020','enter phone', '01000654454')
INSERT INTo Account (Account_ID, AccountUser_ID, AccountName, Account_Dob, Account_CreationDate, AccountNotes, AccountPhone)
VALUES(3, 3, 'osama.elsayed', '13/6/2020', '13/6/2020','enter phone', '01011544101')
INSERT INTo Account (Account_ID, AccountUser_ID, AccountName, Account_Dob, Account_CreationDate, AccountNotes, AccountPhone)
VALUES(4, 4, 'Amgad.khalid','12/6/2020','12/6/2020','enter phone', '01053350022')
INSERT INTo Account (Account_ID, AccountUser_ID, AccountName, Account_Dob, Account_CreationDate, AccountNotes, AccountPhone)
VALUES(5, 5, 'mohamed.osama','11/6/2020','11/6/2020','enter phone', '01008896877')

INSERT INTo Visit (Visit_ID, VisitReservation_ID, VisitDoctor_ID, VisitReasons , VisitDiagnosis, VisitNotes , VisitDate)
Values(1, 1, 1, 'pain in back', 'you have tumor', 'take the medicine on time', '15/6/2020')
INSERT INTo Visit (Visit_ID, VisitReservation_ID, VisitDoctor_ID, VisitReasons , VisitDiagnosis, VisitNotes , VisitDate)
Values(2, 2, 2, 'pain in eye', 'you have week looking', 'you should make surgery', '16/6/2020')
INSERT INTo Visit (Visit_ID, VisitReservation_ID, VisitDoctor_ID, VisitReasons , VisitDiagnosis, VisitNotes , VisitDate)
Values(3, 3, 3, 'pain in stomach', 'you have colic', 'take the medicine on time', '17/6/2020')
INSERT INTo Visit (Visit_ID, VisitReservation_ID, VisitDoctor_ID, VisitReasons , VisitDiagnosis, VisitNotes , VisitDate)
Values(4, 4, 4, 'pain in neck', 'you have spasm', 'take the medicine on time', '18/6/2020')
INSERT INTo Visit (Visit_ID, VisitReservation_ID, VisitDoctor_ID, VisitReasons , VisitDiagnosis, VisitNotes , VisitDate)
Values(5, 5, 5, 'pain in leg', 'you have torsion', 'take the medicine on time and do not move', '19/6/2020')

INSERT INTo   Reservation ( Reservation_ID, ReservationPatient_ID, ReservationSecretary_ID, ReservationVisit_Date, ReservationVisit_Slot, ReservationDate)
Values (1, 1, 1, '15/6/2020', 1, '15/6/2020')
INSERT INTo  Reservation ( Reservation_ID, ReservationPatient_ID, ReservationSecretary_ID, ReservationVisit_Date, ReservationVisit_Slot, ReservationDate)
Values (2, 2, 2, '16/6/2020', 2, '16/6/2020')
INSERT INTo  Reservation ( Reservation_ID, ReservationPatient_ID, ReservationSecretary_ID, ReservationVisit_Date, ReservationVisit_Slot, ReservationDate)
Values (3, 3, 3, '17/6/2020', 3, '17/6/2020')
INSERT INTo  Reservation ( Reservation_ID, ReservationPatient_ID, ReservationSecretary_ID, ReservationVisit_Date, ReservationVisit_Slot, ReservationDate)
Values (4, 4, 4, '18/6/2020', 4, '18/6/2020')
INSERT INTo  Reservation ( Reservation_ID, ReservationPatient_ID, ReservationSecretary_ID, ReservationVisit_Date, ReservationVisit_Slot, ReservationDate)
Values (5, 5, 5, '19/6/2020', 5, '19/6/2020')

select User_UserName from [dbo].[UserP] where User_UserName='AymanMetwally'
select User_Password from [dbo].[UserP] where User_Password='m55555'
select AccountPhone from [dbo].[Account] where AccountPhone='01006366524'
select VisitDiagnosis from [dbo].[Visit] where VisitDiagnosis='you have tumer'

select count(UserP_ID ) from [dbo].[UserP]
select count(User_Password ) from [dbo].[UserP]

select count(Visit_ID), VisitReservation_ID from [dbo].[Visit]
GROUP BY VisitReservation_ID

SELECT UserP.User_UserName, Visit.VisitDiagnosis
FROM UserP
LEFT JOIN Visit
ON UserP.User_UserName = Visit.VisitDiagnosis;

SELECT Reservation.ReservationVisit_Date, Account.Account_CreationDate
FROM Reservation
LEFT JOIN Account
ON Reservation.ReservationVisit_Date= Account.Account_CreationDate;

SELECT UserP.UserP_ID, Visit.Visit_ID
FROM UserP
INNER JOIN Visit
ON UserP.UserP_ID = Visit.Visit_ID;


SELECT UserP.UserP_ID, Visit.Visit_ID
FROM UserP
RIGHT JOIN Visit
ON UserP.UserP_ID = Visit.Visit_ID;

SELECT UserP.User_UserName,Visit.VisitDiagnosis
FROM UserP
FULL OUTER JOIN Visit
ON UserP.User_UserName = Visit.VisitDiagnosis;

DELETE FROM UserP WHERE User_UserName='OsamaElsayed';
DELETE FROM Account WHERE Account_ID=3;
DELETE FROM Reservation WHERE ReservationPatient_ID=3;
DELETE FROM Visit WHERE VisitDiagnosis='you have colic';
DELETE FROM UserP WHERE UserP_ID=5;

UPDATE UserP
SET User_UserName = 'Ali Ahmed', User_Password = 's44555'
WHERE UserP_ID=1;

UPDATE UserP
SET User_UserName = 'Mostafa Khalid', User_Password = 'f88788'
WHERE UserP_ID=2;

UPDATE Account
SET AccountName = 'Mostafa.Khalid', AccountPhone = '01099878155'
WHERE Account_ID=2;

UPDATE Account
SET AccountName = 'Ali Ahmed', AccountPhone = '01115224556'
WHERE Account_ID=1;

UPDATE Reservation
SET ReservationVisit_Date = '19/6/2020', ReservationDate = '19/6/2020'
WHERE ReservationVisit_Slot=4;

Select *
From UserP ; 
Select *
From Account ; 
Select *
From Visit ; 
Select *
From Reservation ; 

Select User_UserName
From UserP 
Where UserP_ID='1'

Select count (*)
From Reservation ; 
Select count (*)
From Account ; 
Select ReservationVisit_Date from Reservation where ReservationDate='19/6/2020'

SELECT TOP 2 * FROM Visit
SELECT DISTINCT AccountName FROM Account