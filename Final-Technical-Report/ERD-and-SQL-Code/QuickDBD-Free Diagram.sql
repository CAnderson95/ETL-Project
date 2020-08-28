-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/kvT0Z3
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

-- Modify this code to update the DB schema diagram.
-- To reset the sample schema, replace everything with
-- two dots ('..' - without quotes).

CREATE TABLE "Restaurant_Info" (
    "Name" varchar(200)   NOT NULL,
    "Street_Address" varchar(200)   NOT NULL,
    "Rating" int   NOT NULL,
    "Num_Reviews" int   NOT NULL,
    "URL" string   NOT NULL,
    CONSTRAINT "pk_Restaurant_Info" PRIMARY KEY (
        "Name"
     ),
    CONSTRAINT "uc_Restaurant_Info_Street_Address" UNIQUE (
        "Street_Address"
    )
);

CREATE TABLE "Restaurant_Location" (
    "Name" varchar(200)   NOT NULL,
    "Street_Address" varchar(200)   NOT NULL,
    "Postcode" int   NOT NULL,
    "Longitude" float   NOT NULL,
    "Latitude" float   NOT NULL
);

CREATE TABLE "Borough" (
    "Borough" varchar(200)   NOT NULL,
    "Postcode" int   NOT NULL,
    CONSTRAINT "pk_Borough" PRIMARY KEY (
        "Borough"
     )
);

-- could potentially provide a look at number
-- of restaurants nearby? idk
-- provides specific borough name
-- Table documentation comment 1 (try the PDF/RTF export)
CREATE TABLE "Hotels" (
    "ParID" int   NOT NULL,
    "Postcode" int   NOT NULL,
    "Borough" varchar(200)   NOT NULL,
    "Latitude" float   NOT NULL,
    "Longitude" float   NOT NULL,
    "NTA" string   NOT NULL,
    "Street_Address" varchar(200)   NOT NULL,
    CONSTRAINT "pk_Hotels" PRIMARY KEY (
        "Postcode"
     )
);

ALTER TABLE "Restaurant_Location" ADD CONSTRAINT "fk_Restaurant_Location_Name_Street_Address" FOREIGN KEY("Name", "Street_Address")
REFERENCES "Restaurant_Info" ("Name", "Street_Address");

ALTER TABLE "Restaurant_Location" ADD CONSTRAINT "fk_Restaurant_Location_Postcode" FOREIGN KEY("Postcode")
REFERENCES "Borough" ("Postcode");

ALTER TABLE "Borough" ADD CONSTRAINT "fk_Borough_Postcode" FOREIGN KEY("Postcode")
REFERENCES "Hotels" ("Postcode");

ALTER TABLE "Hotels" ADD CONSTRAINT "fk_Hotels_Borough" FOREIGN KEY("Borough")
REFERENCES "Borough" ("Borough");

