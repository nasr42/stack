create database hospital2;
use hospital2;
create table Doctor(
	Doctor_id int NOT NULL,
	First_name varchar(20) NOT NULL,
	Last_name varchar(20) NOT NULL,
	Dept varchar(20) NOT NULL,
	Phone_Number int,
	Specialization varchar(60),
	Location varchar(80),
	PRIMARY KEY (Doctor_id),
	);
	
insert into Doctor values(2,'Khalid','Mahmoud','Anaesthetics',0101470055,'anestheologist','4thfloor');
insert into Doctor values(3,'ismail','elsayed','Breast screeing',01258949374,'Chest doctor','5thfloor');
insert into Doctor values(4,'Seif','mohamed''Cardiology',01058463754,'cardiologists','3rdfloor');
insert into Doctor values(5,'omar','Ali','Ear nose and throat',0116533543,'surgeon','2ndfloor');
insert into Doctor values(6,'Ahmed','Mohamed','Critical care',012596454,'Critical care medicine specialists','1stfloor');
insert into Doctor values(7,'Marwan','amer','Diagnostic imaging',01147656235,'Diagnostic imaging doctor','3rdfloor');
insert into Doctor values(8,'diaa','Abdelhafiz','Discharge lounge',01274176545,'surgeon','2ndfloor');
insert into Doctor values(10,'Elsayed','Mohammed','Gastroenterolgy',01015333435,'surgeon','4thfloor');
insert into Doctor values(11,'Noha','Ehab','General surgery',0118944443,'surgeon','2ndfloor');
insert into Doctor values(12,'Maha','Arafa','Gynaecology',0125665456,'surgeon','5thfloor');

select * from Doctor;



	create table Dept(
	Department_id int not null,
	Department_name varchar(20) NOT NULL,
	Doc_id int,
	PRIMARY KEY (Department_id),
	FOREIGN KEY (Doc_id) REFERENCES Doctor(Doctor_id),
);
insert into Dept values(2,'Ear nose and throat',5);
insert into Dept values(3,'Critical care',6);
insert into Dept values(4,'General surgery',11);
insert into Dept values(5,'Breast screeing',3);
insert into Dept values(6,'Cardiology',4);
insert into Dept values(7,'Gynaecology',12);


select * from Dept;

create table Patient(
	Patient_Id int NOT null,
	First_name varchar(20) NOT NULL,
	Last_name varchar(20) NOT NULL,
	Phone_number int,
  	Addres varchar(30) DEFAULT NULL,
  	Age int,
	Gender char(1) DEFAULT NULL,
	PRIMARY KEY (Patient_Id),
);

insert into Patient values (1,'adham','Abdelfatah',01111223366,'sharawy street',20,'m');
insert into Patient values (2,'mohamed','Rashed',01111223366,'45 street',22,'m');
insert into Patient values (3,'yaya','ibrahim',01111223366,'15 street',26,'m');
insert into Patient values (4,'Ahmed','ismail',01111223366,'loran',71,'m');
insert into Patient values (5,'Abdelkaream','hassan',01111223366,'shatby',30,'m');
insert into Patient values (6,'Abdallah','Sameh',01111223366,'miami',12,'m');
insert into Patient values (7,'Mohamed','omar',01111223366,'roushdy',40,'m');
insert into Patient values (8,'Moustafa','Shamis',01111223366,'kafr abdo',37,'m');
insert into Patient values (10,'Ai','Mohamed',01111223366,'gleem',44,'m');

select * from Patient;

create table Rooms(
    Room_id int NOT NULL,
	Room_number int NOT NULL,
	Location varchar(100) NOT NULL,
	Capicity Int not null,
	PRIMARY KEY(Room_id),
);
insert into Rooms values (1,1,'2ndfloor',2);
insert into Rooms values (2,2,'2ndfloor',2);
insert into Rooms values (3,3,'3rdfloor',3);
insert into Rooms values (4,4,'4thfloor',2);
insert into Rooms values (5,5,'3rdfloor',4);
insert into Rooms values (6,6,'2ndfloor',4);

select * from Rooms;

create table Bill(
	Bill_number int NOT NULL,
	PatientID int NOT null,
	AMT int,
	salary int,
	PRIMARY KEY (bill_number),
	foreign KEY (PatientID) REFERENCES Patient(Patient_Id),
);
insert into Bill values(2,10,0.00,7000);
insert into Bill values(3,8,600.00,11290);
insert into Bill values(4,7,719.00,5000);
insert into Bill values(5,6,0.00,20000);
insert into Bill values(6,5,800.00,1220);
insert into Bill values(7,3,1120.00,15006);
insert into Bill values(8,4,0.00,500);
insert into Bill values(9,2,900.00,12000);
insert into Bill values(10,1,0.00,200);


select * from Bill;

create table Receptionist(
	Reciptionist_id int NOT NULL,
	First_name varchar(10) NOT NULL,
	Last_name varchar(10) NOT NULL,
	Phone_number varchar(30) NOT NULL,
	Gender char(30) NOT NULL,
	PRIMARY KEY (Reciptionist_id),
	);
insert into Receptionist values (1,'ali','Abdelfatah',01022223366,'m');
insert into Receptionist values (2,'adham','mohamed',01002523366,'m');
insert into Receptionist values (3,'elsayed','refai',0111123366,'m');
insert into Receptionist values (4,'hamdy','omar',0121113366,'m');
insert into Receptionist values (5,'omar','ali',010158723366,'m');
insert into Receptionist values (6,'nada','mohamed',01078953366,'f');
insert into Receptionist values (7,'salma','nasser',012598723366,'f');

select * from Receptionist;


