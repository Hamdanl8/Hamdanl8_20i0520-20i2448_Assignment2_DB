-- create tables
create DATABASE hamdan;
USE hamdan;

-- one to many relationship between hangar and airplane, there can be one plane in one hangar and many planes in one hangar
create table AIRPLANE (
    Regno varchar(10) primary key,
    Of_TYPE varchar(20),
    STORED_IN INTEGER,
    foreign key (STORED_IN) REFERENCES HANGAR(Number)
    ON delete cascade
);

create table PLANE_TYPE (
    Model varchar(10) primary key,
    Capacity INTEGER,
    Weight FLOAT
);

create table HANGAR (
    Number INTEGER primary key,
    Capacity INTEGER,
    Location varchar(20)
);

-- one to many relationship between OWNER and AIRPLANE through OWNS, one owner can have many planes
create table OWNER (
    Ssn varchar(20) primary key,
    Name varchar(50),
    Address varchar(50),
    Phone varchar(20),
    Owner_type varchar(20)
);

create table OWNS (
    Regno varchar(10),
    Ssn varchar(20),
    Pdate DATE,
    primary key (Regno, Ssn),
    foreign key (Regno) REFERENCES AIRPLANE(Regno),
    foreign key (Ssn) REFERENCES OWNER(Ssn)
    ON delete cascade
);

-- one to many relationship between EMPLOYEE and MAINTAIN, one employee can maintain many planes
create table EMPLOYEE (
    Ssn varchar(20) primary key,
    Name varchar(20),
    Address varchar(20),
    Phone varchar(20),
    Salary FLOAT,
    Shift varchar(20)
);

create table MAINTAIN (
    Emp_ssn varchar(20),
    Service varchar(20),
    primary key (Emp_ssn, Service),
    foreign key (Emp_ssn) REFERENCES EMPLOYEE(Ssn),
    foreign key (Service) REFERENCES SERVICE(Service)
    ON delete cascade
);

-- one to many relationship between AIRPLANE and SERVICE through PLANE_SERVICE, one airplane can be serviced many times
create table SERVICE (
    Service varchar(20) primary key,
    Date DATE,
    Hours FLOAT,
    Work_code varchar(20)
);

create table PLANE_SERVICE (
    Regno varchar(10),
    Service varchar(20),
    primary key (Regno, Service),
    foreign key (Regno) REFERENCES AIRPLANE(Regno),
    foreign key (Service) REFERENCES SERVICE(Service)
    ON delete cascade
);

-- one to many relationship between PILOT and PLANE_TYPE through FLIES, one pilot can fly many types of planes
create table PERSON (
    Ssn varchar(20) primary key,
    Name varchar(20),
    Address varchar(50),
    Phone varchar(20)
);

create table PILOT (
    Lic_num varchar(20) primary key,
    Restr varchar(20),
    Ssn varchar(20),
    foreign key (Ssn) REFERENCES PERSON(Ssn)
    ON delete cascade
);

create table FLIES (
    Lic_num varchar(20),
    Model varchar(10),
    primary key (Lic_num, Model),
    foreign key (Lic_num) REFERENCES PILOT(Lic_num),
    foreign key (Model) REFERENCES PLANE_TYPE(Model)
    ON delete cascade
);

-- many to many relationship between EMPLOYEE and PLANE_TYPE through WORKS_ON
create table WORKS_ON (
    Emp_ssn varchar(20),
    Model varchar(10),
    primary key (Emp_ssn, Model),
    foreign key (Emp_ssn) REFERENCES EMPLOYEE(Ssn),
    foreign key (Model) REFERENCES PLANE_TYPE(Model)
);