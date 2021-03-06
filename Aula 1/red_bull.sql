PRAGMA foreign_keys=ON;
BEGIN TRANSACTION;
CREATE TABLE Team (
name text primary key not null,
country text
);
CREATE TABLE Aircraft (
model text primary key not null,
horsepower int,
topspeed real check (topspeed > 0),
width real check (width > 0),
height real check (height > 0),
weight real check (weight > 0)
);
CREATE TABLE Pilot (
num int primary key not null,
firstname text,
surname text,
nationality text,
birthday text,
name text references Team(name),
model text references Aircraft(model)
);
CREATE TABLE Race (
location text not NULL,
edition int not NULL,
country text,
date text unique,
gates text,
eliminations int,
primary key (location,edition)
);
CREATE TABLE Participation (
num int references Pilot(num) not null,
location text not NULL,
edition text not NULL,
trainingtime int check (trainingtime > 0),
trainingpos int check (trainingpos >= 1),
trainingpenalty real,
qualificationtime int check (qualificationtime > 0),
qualificationpos int check (qualificationpos >= 1),
qualificationpenalty real,
eliminationtime int check (eliminationtime > 0),
eliminationpos int check (eliminationpos >= 1),
eliminationpenalty real,
primary key (num,location,edition),
foreign key (location,edition) references Race(location,edition)
);
CREATE TABLE Duel (
numpilot1 int references Pilot(num) not null,
numpilot2 int references Pilot(num) not null,
location text,
edition text,
dueltype text,
timepilot1 real,
timepilot2 real,
penaltypilot1 real,
penaltypilot2 real,
foreign key (location,edition) references Race(location,edition),
primary key (numpilot1,numpilot2,location,edition)
);
COMMIT;
