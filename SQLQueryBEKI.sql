--GROUP 14
--BEREKET H/GIORGIS...3345
--ELENI H/MESKEL.....3303
--LIDYA SOLOMON......3524
--TINSAE ABEBE......3685
CREATE DATABASE TRAVEL;



CREATE TABLE AIRPLANE (

reg_number int ,
car_typee varchar(20),
seats int
CONSTRAINT AIRPLANE_pk PRIMARY KEY (reg_number ),
 CONSTRAINT H FOREIGN KEY (seats) references   TICKET ( Seat),
);



CREATE TABLE AIRLINES(
A_code int ,
A_name varchar,
CONSTRAINT AIRLINES_PK PRIMARY KEY (A_code ),
CONSTRAINT S FOREIGN KEY (A_name) references   Airport (Code),

);



CREATE TABLE TICKET(
Seat int  primary key  ,
class varchar (40) NOT NULL,
Fromm varchar (40),
Too varchar (20),
dep_time varchar(20),
dep_date int ,
Arr_time varchar(20),
Arr_date int,
Fare_destination varchar,
Passenger_name varchar ,
Passenger_ID int ,
UNIQUE  (Fromm),
 UNIQUE (Too),
UNIQUE (Passenger_name), 
UNIQUE (Passenger_ID)
 
);



CREATE TABLE ROUTEE (
Route_num int  PRIMARY KEY  ,
Route_description varchar , 
CONSTRAINT A FOREIGN KEY (Route_description) references   FARE ( fare_description),

);




CREATE TABLE FARE (
Fare_type varchar,
Fare_description varchar,
Class_fare varchar  NOT NULL,
CONSTRAINT FARE_pk PRIMARY KEY (Class_fare ),
UNIQUE (Fare_description)
);



CREATE TABLE BOOKING_SITE (
Site char(128),
ID int ,
Site_Name varchar(40),
CONSTRAINT BOOKING_SITE_pk PRIMARY KEY (ID ),
CONSTRAINT Az FOREIGN KEY (Site_Name) references   TICKET ( Fromm),


);


CREATE TABLE PASSENGER (
Name varchar(128),
Age int ,
ID int ,
Passenger_name varchar,
Passenger_ID int  ,
Address varchar,
Contact int
CONSTRAINT Z FOREIGN KEY (Passenger_ID) references   TICKET ( Passenger_ID),
CONSTRAINT Y FOREIGN KEY (Passenger_name) references   TICKET (Passenger_name ),
CONSTRAINT X FOREIGN KEY (Contact) references   Userr(Mobile)


);



CREATE TABLE Airport (
Code varchar ,
Name varchar,
City varchar,
Country varchar,
CONSTRAINT Airport_pk PRIMARY KEY (Code ),
UNIQUE (Code),
);



 CREATE TABLE Permission(
 
 ID int ,
 PermissionnName  varchar,
 CONSTRAINT Permission_pk PRIMARY KEY (ID ),

 );



 CREATE TABLE Userr (
 PassengerName  varchar ,
 Mobile int ,
 Address varchar ,
 Email varchar,
 CONSTRAINT User_pk PRIMARY KEY (Mobile ),
 UNIQUE (Email),
 
 );


 CREATE TABLE LOGINN (
 ID int ,
 Username varchar, 
 Password varchar 
 CONSTRAINT Login_pk PRIMARY KEY (ID, Password ),
		CONSTRAINT G FOREIGN KEY (ID) references   Permission ( ID)
 );

 SELECT * FROM AIRPLANE;
 SELECT * FROM AIRLINES;
 SELECT * FROM TICKET;
 SELECT * FROM ROUTEE;
 SELECT * FROM BOOKING_SITE;

 SELECT * FROM PASSENGER;
 SELECT * FROM AIRPORT;
 SELECT * FROM PERMISSION;
 SELECT * FROM FARE;
 SELECT * FROM LOGINN;
 SELECT * FROM USERR;


INSERT INTO AIRPLANE VALUES ('1','BOING','2'),('2', 'BOING'),('3','BOING','3'),('4','BOING' ),('3','BOING','3');
INSERT INTO AIRLINES VALUES ('1',' Ethiopian Airlines'),('2','Ethiopian Airlines'),('3','Ethiopian Airlines'),('4','Ethiopian Airlines '),('3','Ethiopian Airlines','3');
INSERT INTO ROUTEE VALUES ('1','Dubie'),('2','Paris'),('3','Rome'),('4','London '),('3','Tokyo');
INSERT INTO TICKET VALUES (1,' Mohammed','X','Y','2','18','chala','87'),(2,'Amauel','d','r','2','68','dhs'),;
INSERT INTO BOOKING_SITE  VALUES ('aa','23','erte' ),('AB','76','cbs');
INSERT INTO PASSENGER VALUES ('Yonas ','23','chala','36'),('Amauel Belachew','67','nvbhh','87');
INSERT INTO AIRPORT VALUES ('fu','h','fdy'),('fygu','gui','vhgdr');
INSERT INTO PERMISSION VALUES (7,'Tadesse',),(2,' Shumete');
INSERT INTO USERR VALUES (' Mohamme','47698','gdjf','ejfihjkj'),('sura','567864','hdgjh','bjky');
INSERT INTO LOGINN VALUES (1,'belay ', 'ygdjuhui'),(2,'yhonas','hyusd');





















