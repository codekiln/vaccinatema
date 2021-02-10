
DROP TABLE IF EXISTS location_availability;
DROP TABLE IF EXISTS locations;

CREATE TABLE locations (
  id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  name VARCHAR
(200) NOT NULL,
  bookinglink VARCHAR
(1000) NOT NULL,
  address VARCHAR
(1000) NOT NULL,
  serves VARCHAR
(500),
  siteInstructions VARCHAR
(2000) NOT NULL,
  daysOpen VARCHAR
(500) NOT NULL,
  county VARCHAR
(200) NOT NULL,
  latitude NUMERIC
(8) NOT NULL,
  longitude NUMERIC
(8) NOT NULL
);


CREATE TABLE location_availability (
  id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  location_id INT,
  lastupdated VARCHAR
(200),
  CONSTRAINT fk_location
      FOREIGN KEY
(location_id) 
	  REFERENCES locations
(id)
);