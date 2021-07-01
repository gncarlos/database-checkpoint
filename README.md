# database-checkpoint

## CHALLENGE 1:
  ### Query:
    SELECT name FROM destinations;
  ### Results:
  ![screenshot for challenge 1](https://snipboard.io/hEcraD.jpg)
## CHALLENGE 2
  ### Query:
    SELECT name FROM destinations
      WHERE has_beaches = true;
  ### Results:
  ![screenshot for challenge 2](https://snipboard.io/qfIxJB.jpg)
## CHALLENGE 3
  ### Query:
    SELECT * FROM destinations
      WHERE average_temp > 60;
  ### Results:
  ![screenshot for challenge 3](https://snipboard.io/FOfCNd.jpg)
## CHALLENGE 4
  ### Query:
    SELECT name FROM destinations
      WHERE has_beaches = true AND has_mountains = true;
  ### Results:
  ![screenshot for challenge 4](https://snipboard.io/QtoNl0.jpg)
## CHALLENGE 5
  ### Query:
    SELECT name FROM destinations
      WHERE cost_of_flight < 500 AND has_mountains = true;
  ### Results:
  ![screenshot for challenge 5](https://snipboard.io/hwZnmr.jpg)
## CHALLENGE 6
  ### Query:
    INSERT INTO destinations VALUES (6, 'The Bahamas', 78, true, false, 345);
  ### Results:
    INSERT 0 1
  ![screenshot for challenge 6](https://snipboard.io/TsNn5I.jpg)
## CHALLENGE 7
  ### Query:
    UPDATE destinations SET cost_of_flight = '1000'
      WHERE name = 'New Zealand';
  ### Results:
    UPDATE 1
  ![screenshot for challenge 7](https://snipboard.io/hJtuXo.jpg)
## CHALLENGE 8
  ### Query:
    DELETE FROM destinations
      WHERE name = 'Minnesota';
  ### Results:
    DELETE 1
  ![screenshot for challenge 8](https://snipboard.io/MAvei3.jpg)
## CHALLENGE 9
  ### Query:
    UPDATE destinations SET name = 'Scotland'
      WHERE name = 'England';
  ### Results:
  ![screenshot for challenge 9](https://snipboard.io/PUTz1v.jpg)
## CHALLENGE 10
  ### Query:
    CREATE TABLE airlines_destinations (
      id SERIAL,
      airlines_id INTEGER,
      destinations_id INTEGER
      );

      INSERT INTO airlines_destinations ( airlines_id, destinations_id )
        SELECT airlines.id, destinations.id FROM airlines, destinations
          WHERE airlines.name ='Spirit' AND destinations.name ='New Zealand';

      INSERT INTO airlines_destinations ( airlines_id, destinations_id )
        SELECT airlines.id, destinations.id FROM airlines, destinations
          WHERE airlines.name ='Spirit' AND destinations.name ='Scotland';

      INSERT INTO airlines_destinations ( airlines_id, destinations_id )
        SELECT airlines.id, destinations.id FROM airlines, destinations
          WHERE airlines.name ='Lufthansa' AND destinations.name ='Tristan da Cunha';

      INSERT INTO airlines_destinations ( airlines_id, destinations_id )
        SELECT airlines.id, destinations.id FROM airlines, destinations
          WHERE airlines.name ='Lufthansa' AND destinations.name ='Scotland';

      INSERT INTO airlines_destinations ( airlines_id, destinations_id )
        SELECT airlines.id, destinations.id FROM airlines, destinations
          WHERE airlines.name ='Lufthansa' AND destinations.name ='Thailand';

      INSERT INTO airlines_destinations ( airlines_id, destinations_id )
        SELECT airlines.id, destinations.id FROM airlines, destinations
          WHERE airlines.name ='Delta' AND destinations.name ='Thailand';

      INSERT INTO airlines_destinations ( airlines_id, destinations_id )
        SELECT airlines.id, destinations.id FROM airlines, destinations
          WHERE airlines.name ='Delta' AND destinations.name ='Scotland';

      INSERT INTO airlines_destinations ( airlines_id, destinations_id )
        SELECT airlines.id, destinations.id FROM airlines, destinations
          WHERE airlines.name ='Southwest' AND destinations.name ='New Zealand';

      INSERT INTO airlines_destinations ( airlines_id, destinations_id )
        SELECT airlines.id, destinations.id FROM airlines, destinations
          WHERE airlines.name ='Southwest' AND destinations.name ='Tristan da Cunha';

  ### Results:
    CREATE TABLE
    INSERT 0 1
  ![screenshot for challenge 10](https://snipboard.io/yMBwRj.jpg)
## CHALLENGE 11
  ### Query:
    SELECT airlines.name FROM airlines
      WHERE airlines.id IN (SELECT airlines_id FROM airlines_destinations
        WHERE destinations_id = (SELECT destinations.id FROM destinations
          WHERE destinations.name = 'New Zealand'));
  ### Results:
  ![screenshot for challenge 11](https://snipboard.io/PLtQey.jpg)
## CHALLENGE 12
  ### Query:
  ### Results:
  ![screenshot for challenge 12](https://github.com/gncarlos/database-checkpoint/blob/main/screenshots/res_12.PNG?raw=true)
## CHALLENGE 13
  ### Query:
    SELECT * FROM destinations;
  ### Results:
  ![screenshot for challenge 13](https://snipboard.io/qNbmCL.jpg)
