CREATE DATABASE vacations;
\c vacations

CREATE TABLE destinations (
    id SERIAL,
    name VARCHAR(255),
    average_temp INTEGER,
    has_beaches BOOLEAN,
    has_mountains BOOLEAN,
    cost_of_flight INTEGER
);

CREATE TABLE airlines (
    id SERIAL,
    name VARCHAR(255)
);

-- ADDING DATA TO TABLE airlines
INSERT INTO airlines ( name ) VALUES ( 'Spirit' );
INSERT INTO airlines ( name ) VALUES ( 'Lufthansa' );
INSERT INTO airlines ( name ) VALUES ( 'Delta' );
INSERT INTO airlines ( name ) VALUES ( 'Southwest' );

-- ADDING DATA TO TABLE destinations
INSERT INTO destinations ( name, average_temp, has_beaches, has_mountains, cost_of_flight) VALUES ( 'Thailand', 82, true, true, 765);
INSERT INTO destinations ( name, average_temp, has_beaches, has_mountains, cost_of_flight) VALUES ( 'Minnesota', 41, false, false, 235);
INSERT INTO destinations ( name, average_temp, has_beaches, has_mountains, cost_of_flight) VALUES ( 'New Zealand', 66, true, true, 433);
INSERT INTO destinations ( name, average_temp, has_beaches, has_mountains, cost_of_flight) VALUES ( 'England', 45, false, false, 290);
INSERT INTO destinations ( name, average_temp, has_beaches, has_mountains, cost_of_flight) VALUES ( 'Tristan da Cunha', 59, true, true, 1304);

--COMMANDS TO COMPLETE CHALLENGES:
SELECT name FROM destinations;

SELECT name FROM destinations
      WHERE has_beaches = true;

SELECT name FROM destinations
  WHERE has_beaches = true AND has_mountains = true;

  