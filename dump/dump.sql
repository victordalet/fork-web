CREATE TABLE CITY(
    NAME VARCHAR(200) PRIMARY KEY ,
    mail VARCHAR(200),
    password VARCHAR(220),
    latitude INTEGER,
    longitude INTEGER,
    color_flag INTEGER,
    actual_picture VARCHAR(200),
    number_beach INTEGER,
    number_sea INTEGER
);

CREATE TABLE DATA(
    ID INTEGER PRIMARY KEY ,
    CITY VARCHAR(200) REFERENCES CITY(NAME),
    nb_beach INTEGER,
    nb_sea INTEGER,
    time DATE,
    temp_sea INTEGER,
    temp_beach INTEGER,
    swell INTEGER,
    wind INTEGER,
    visibility INTEGER,
    camp_visibility INTEGER
);

CREATE TABLE WARNINGS(
    ID INTEGER PRIMARY KEY ,
    CITY VARCHAR(200) REFERENCES CITY(NAME),
    color INTEGER,
    information VARCHAR(220),
    picture VARCHAR(220)
);
