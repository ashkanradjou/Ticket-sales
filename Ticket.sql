CREATE DATABASE TicketSales;

USE TicketSales;
create table clients(
client_id int primary key identity
(1,1),
firs_name varchar(30) not null,
last_name varchar(30) not null,
code_melli varchar(30) unique not null,
phone_number varchar(30) not null,
birthdate date not null
);

USE TicketSales;
create table Branches(
Branch_id int primary key identity
(1,1),
Branch_name varchar(30) not null,
Branch_address varchar(500),
);

USE TicketSales;
create table salers(
saler_id int primary key
identity(1,1),
firs_name varchar(30) not null,
last_name varchar(30) not null,
Branch_id int foreign key references
Branches(Branch_id),
);

USE TicketSales;
CREATE TABLE Tickets(
Ticket_id int primary key,
Ticket_name varchar (30) not null,
Branch_id int foreign key references
Branches(Branch_id),
client_id int foreign key references
clients(client_id),
saler_id int foreign key references
salers(saler_id),
registery_date date not null
);

USE TicketSales;
INSERT INTO clients (firs_name,last_name,code_melli,phone_number,birthdate) VALUES ('ashkan','radjou','1234567890','09115005352','5/1/2000');
INSERT INTO clients (firs_name,last_name,code_melli,phone_number,birthdate) VALUES ('yasamin','asghari','2241325519','09081576447','3/3/2000');
INSERT INTO clients (firs_name,last_name,code_melli,phone_number,birthdate) VALUES ('sobhann','moghimi','0293514414','09131587992','11/5/1991');
INSERT INTO clients (firs_name,last_name,code_melli,phone_number,birthdate) VALUES ('kiana','roohi','0428396370','09121599667','2/7/2001');
INSERT INTO clients (firs_name,last_name,code_melli,phone_number,birthdate) VALUES ('mohammad','mohammadi','5553278326','09231611302','5/12/2001');
INSERT INTO clients (firs_name,last_name,code_melli,phone_number,birthdate) VALUES ('alireza','noorelahi','0698160282','09281623017','8/14/2001');
INSERT INTO clients (firs_name,last_name,code_melli,phone_number,birthdate) VALUES ('amir','radjou','0833041118','09331634222','11/26/2001');
INSERT INTO clients (firs_name,last_name,code_melli,phone_number,birthdate) VALUES ('koorosh','pourmehdi','0967924194','09381646367','2/18/2002');
INSERT INTO clients (firs_name,last_name,code_melli,phone_number,birthdate) VALUES ('mehrad','esmaeilzad','1102806150','09431658042','5/23/2002');
INSERT INTO clients (firs_name,last_name,code_melli,phone_number,birthdate) VALUES ('kianoosh','vaez','1237688106','09481669717','8/25/2002');
INSERT INTO clients (firs_name,last_name,code_melli,phone_number,birthdate) VALUES ('mahsa','amini','1372570062','09531681392','11/27/2012');
INSERT INTO clients (firs_name,last_name,code_melli,phone_number,birthdate) VALUES ('iran','azad','1507452018','09581693067','3/1/2012');
INSERT INTO clients (firs_name,last_name,code_melli,phone_number,birthdate) VALUES ('kimia','noori','1642333974','09631704742','6/3/2003');
INSERT INTO clients (firs_name,last_name,code_melli,phone_number,birthdate) VALUES ('roza','yusefi','1777215930','09681716417','9/5/2003');
INSERT INTO clients (firs_name,last_name,code_melli,phone_number,birthdate) VALUES ('yahya','zamani','1912097886','09731728092','3/24/1997');
INSERT INTO clients (firs_name,last_name,code_melli,phone_number,birthdate) VALUES ('mehran','rahimi','2046979842','09781739767','12/7/1996');
INSERT INTO clients (firs_name,last_name,code_melli,phone_number,birthdate) VALUES ('kamand','razi','2181861798','09831751442','8/22/1996');
INSERT INTO clients (firs_name,last_name,code_melli,phone_number,birthdate) VALUES ('mohammad','kebriayi','2316743754','09881763117','5/7/1996');
INSERT INTO clients (firs_name,last_name,code_melli,phone_number,birthdate) VALUES ('alireza','sheykhi','2451625710','09931774792','1/21/1996');
INSERT INTO clients (firs_name,last_name,code_melli,phone_number,birthdate) VALUES ('amir','ali','2586507666','09981786467','10/6/1995');
INSERT INTO clients (firs_name,last_name,code_melli,phone_number,birthdate) VALUES ('ali','amiri','2721389622','09121581632','6/21/1995');
INSERT INTO clients (firs_name,last_name,code_melli,phone_number,birthdate) VALUES ('parastoo','zarin','2856271578','09121642000','3/6/1995');

select * from clients;

USE TicketSales;
INSERT INTO Branches(Branch_name,Branch_address) VALUES ('keshti saba','west');
INSERT INTO Branches(Branch_name,Branch_address) VALUES ('pandol','east');
INSERT INTO Branches(Branch_name,Branch_address) VALUES ('soghoot azad','north');
INSERT INTO Branches(Branch_name,Branch_address) VALUES ('cinema 4D','south');

select * from Branches;

USE TicketSales;
INSERT INTO salers(firs_name,last_name,Branch_id) VALUES ('amirhossein','mehdizade','1');
INSERT INTO salers(firs_name,last_name,Branch_id) VALUES ('arash','hosseinpour','2');
INSERT INTO salers(firs_name,last_name,Branch_id) VALUES ('mahdi','asadi','4');
INSERT INTO salers(firs_name,last_name,Branch_id) VALUES ('amir','nikpour','3');
INSERT INTO salers(firs_name,last_name,Branch_id) VALUES ('amir','rezae','1');
INSERT INTO salers(firs_name,last_name,Branch_id) VALUES ('ramzan','ghanbari','2');
INSERT INTO salers(firs_name,last_name,Branch_id) VALUES ('behzad','shad','4');
INSERT INTO salers(firs_name,last_name,Branch_id) VALUES ('roya','haghighi','3');
INSERT INTO salers(firs_name,last_name,Branch_id) VALUES ('maryam','noori','1');
INSERT INTO salers(firs_name,last_name,Branch_id) VALUES ('shiva','saleh','2');
INSERT INTO salers(firs_name,last_name,Branch_id) VALUES ('navid','parvaresh','3');
INSERT INTO salers(firs_name,last_name,Branch_id) VALUES ('sara','mehrpour','1');
INSERT INTO salers(firs_name,last_name,Branch_id) VALUES ('sarina','razi','4');
INSERT INTO salers(firs_name,last_name,Branch_id) VALUES ('javad','sae','2');
INSERT INTO salers(firs_name,last_name,Branch_id) VALUES ('bahram','norae','3');
INSERT INTO salers(firs_name,last_name,Branch_id) VALUES ('sorosh','lashkari','4');

select * from salers;

USE TicketSales;
INSERT INTO Tickets(Ticket_id,Ticket_name,Branch_id,client_id,saler_id,registery_date) VALUES ('10103','saba03','1','1','1','3/17/2022');
INSERT INTO Tickets(Ticket_id,Ticket_name,Branch_id,client_id,saler_id,registery_date) VALUES ('10104','saba07','1','2','5','3/17/2022');
INSERT INTO Tickets(Ticket_id,Ticket_name,Branch_id,client_id,saler_id,registery_date) VALUES ('10105','saba01','1','3','9','3/18/2022');
INSERT INTO Tickets(Ticket_id,Ticket_name,Branch_id,client_id,saler_id,registery_date) VALUES ('10106','saba02','1','4','12','3/18/2022');
INSERT INTO Tickets(Ticket_id,Ticket_name,Branch_id,client_id,saler_id,registery_date) VALUES ('10101','pandol01','2','5','2','3/18/2022');
INSERT INTO Tickets(Ticket_id,Ticket_name,Branch_id,client_id,saler_id,registery_date) VALUES ('10102','pandol09','2','6','6','3/16/2022');
INSERT INTO Tickets(Ticket_id,Ticket_name,Branch_id,client_id,saler_id,registery_date) VALUES ('10107','pandol03','2','7','10','3/16/2022');
INSERT INTO Tickets(Ticket_id,Ticket_name,Branch_id,client_id,saler_id,registery_date) VALUES ('10108','pandol02','2','8','14','3/16/2022');
INSERT INTO Tickets(Ticket_id,Ticket_name,Branch_id,client_id,saler_id,registery_date) VALUES ('10120','azad06','3','9','4','3/16/2022');
INSERT INTO Tickets(Ticket_id,Ticket_name,Branch_id,client_id,saler_id,registery_date) VALUES ('10122','azad02','3','10','8','3/20/2022');
INSERT INTO Tickets(Ticket_id,Ticket_name,Branch_id,client_id,saler_id,registery_date) VALUES ('10123','azad01','3','11','11','3/20/2022');
INSERT INTO Tickets(Ticket_id,Ticket_name,Branch_id,client_id,saler_id,registery_date) VALUES ('10124','azad05','3','12','15','3/20/2022');
INSERT INTO Tickets(Ticket_id,Ticket_name,Branch_id,client_id,saler_id,registery_date) VALUES ('10148','cinema01','4','13','3','3/20/2022');
INSERT INTO Tickets(Ticket_id,Ticket_name,Branch_id,client_id,saler_id,registery_date) VALUES ('10145','cinema02','4','14','7','3/20/2022');
INSERT INTO Tickets(Ticket_id,Ticket_name,Branch_id,client_id,saler_id,registery_date) VALUES ('10143','cinema03','4','15','13','3/20/2022');
INSERT INTO Tickets(Ticket_id,Ticket_name,Branch_id,client_id,saler_id,registery_date) VALUES ('10144','cinema04','4','16','16','3/20/2022');

USE TicketSales;
select * from Tickets;

--query1:
--show full name of salers of branch number 4:
select firs_name ,last_name
from salers where Branch_id = 4;

--query2:
--show Full name of sellers who sold tickets in 2022
select salers.firs_name,salers.last_name
from Tickets,salers
where Tickets.saler_id = salers.saler_id and
Tickets.registery_date >= '2022-01-01';

--query3:
--show the full name of clients of branch 1
select clients.firs_name,clients.last_name 
from clients 
where clients.client_id in
(select Tickets.client_id from Tickets where Branch_id = 1)

--query4
--show the number of tickets sold in branch 2
select COUNT(Tickets.Branch_id)
from Tickets
where Tickets.Branch_id = 2;

--last query
--show future
select firs_name ,last_name from clients 
where birthdate = '3/1/2012' or birthdate = '11/27/2012';