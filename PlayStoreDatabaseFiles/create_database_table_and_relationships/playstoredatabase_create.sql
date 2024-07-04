-- tables
-- Table: appHistory
CREATE TABLE appHistory (
version varchar(10)  NOT NULL,
updateComment varchar(150)  NOT NULL,
updateDate datetime  NOT NULL,
developers_developerID int  NOT NULL,
application_appID int  NOT NULL,
CONSTRAINT appHistory_pk PRIMARY KEY  (version)
);

-- Table: application
CREATE TABLE application (
appID int  NOT NULL,
appName varchar(20)  NOT NULL,
description varchar(150)  NOT NULL,
downloadCount int  NOT NULL,
releaseDate datetime  NOT NULL,
users_userID int  NOT NULL,
categories_categoryID int  NOT NULL,
developers_developerID int  NOT NULL,
CONSTRAINT application_pk PRIMARY KEY  (appID)
);

-- Table: categories
CREATE TABLE categories (
categoryID int  NOT NULL,
categoryName varchar(20)  NOT NULL,
categoryDiscription varchar(150)  NOT NULL,
CONSTRAINT categories_pk PRIMARY KEY  (categoryID)
);

-- Table: comments
CREATE TABLE comments (
comID int  NOT NULL,
raiting numeric(0,10)  NOT NULL,
c_text varchar(150)  NOT NULL,
commentDate datetime  NOT NULL,
users_userID int  NOT NULL,
application_appID int  NOT NULL,
CONSTRAINT comments_pk PRIMARY KEY  (comID)
);

-- Table: developers
CREATE TABLE developers (
developerID int  NOT NULL,
name varchar(20)  NOT NULL,
surname varchar(20)  NOT NULL,
eMail varchar(20)  NOT NULL,
company varchar(20)  NOT NULL,
CONSTRAINT developers_pk PRIMARY KEY  (developerID)
);

-- Table: priceHistory
CREATE TABLE priceHistory (
priceHistoryID int  NOT NULL,
price money  NOT NULL,
pChangeDate datetime  NOT NULL,
application_appID int  NOT NULL,
CONSTRAINT priceHistory_pk PRIMARY KEY  (priceHistoryID)
);

-- Table: statusHistory
CREATE TABLE statusHistory (
statusID int  NOT NULL,
status varchar(20)  NOT NULL,
statusUpdateDate datetime  NOT NULL,
application_appID int  NOT NULL,
CONSTRAINT statusHistory_pk PRIMARY KEY  (statusID)
);

-- Table: users
CREATE TABLE users (
userID int  NOT NULL,
name varchar(20)  NOT NULL,
surname varchar(20)  NOT NULL,
eMail varchar(20)  NOT NULL,
password varchar(20)  NOT NULL,
singUpDate datetime  NOT NULL,
CONSTRAINT users_pk PRIMARY KEY  (userID)
);

-- foreign keys
-- Reference: appHistory_application (table: appHistory)
ALTER TABLE appHistory ADD CONSTRAINT appHistory_application
FOREIGN KEY (application_appID)
REFERENCES application (appID);

-- Reference: appHistory_developers (table: appHistory)
ALTER TABLE appHistory ADD CONSTRAINT appHistory_developers
FOREIGN KEY (developers_developerID)
REFERENCES developers (developerID);

-- Reference: application_categories (table: application)
ALTER TABLE application ADD CONSTRAINT application_categories
FOREIGN KEY (categories_categoryID)
REFERENCES categories (categoryID);

-- Reference: application_developers (table: application)
ALTER TABLE application ADD CONSTRAINT application_developers
FOREIGN KEY (developers_developerID)
REFERENCES developers (developerID);

-- Reference: application_users (table: application)
ALTER TABLE application ADD CONSTRAINT application_users
FOREIGN KEY (users_userID)
REFERENCES users (userID);

-- Reference: comments_application (table: comments)
ALTER TABLE comments ADD CONSTRAINT comments_application
FOREIGN KEY (application_appID)
REFERENCES application (appID);

-- Reference: comments_users (table: comments)
ALTER TABLE comments ADD CONSTRAINT comments_users
FOREIGN KEY (users_userID)
REFERENCES users (userID);

-- Reference: priceHistory_application (table: priceHistory)
ALTER TABLE priceHistory ADD CONSTRAINT priceHistory_application
FOREIGN KEY (application_appID)
REFERENCES application (appID);

-- Reference: statusHistory_application (table: statusHistory)
ALTER TABLE statusHistory ADD CONSTRAINT statusHistory_application
FOREIGN KEY (application_appID)
REFERENCES application (appID);

-- sequences
-- Sequence: application_seq
CREATE SEQUENCE application_seq
START WITH 1 
INCREMENT BY 1
NO MINVALUE
NO MAXVALUE
NO CYCLE
NO CACHE;

-- Sequence: categories_seq
CREATE SEQUENCE categories_seq
START WITH 1 
INCREMENT BY 1
NO MINVALUE
NO MAXVALUE
NO CYCLE
NO CACHE;

-- Sequence: comments_seq
CREATE SEQUENCE comments_seq
START WITH 1 
INCREMENT BY 1
NO MINVALUE
NO MAXVALUE
NO CYCLE
NO CACHE;

-- Sequence: developers_seq
CREATE SEQUENCE developers_seq
START WITH 1 
INCREMENT BY 1
NO MINVALUE
NO MAXVALUE
NO CYCLE
NO CACHE;

-- Sequence: priceHistory_seq
CREATE SEQUENCE priceHistory_seq
START WITH 1 
INCREMENT BY 1
NO MINVALUE
NO MAXVALUE
NO CYCLE
NO CACHE;

-- Sequence: statusHistory_seq
CREATE SEQUENCE statusHistory_seq
START WITH 1 
INCREMENT BY 1
NO MINVALUE
NO MAXVALUE
NO CYCLE
NO CACHE;

-- Sequence: users_seq
CREATE SEQUENCE users_seq
START WITH 1 
INCREMENT BY 1
NO MINVALUE
NO MAXVALUE
NO CYCLE
NO CACHE;

-- End of file.

