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
  ![screenshot for challenge 3](https://github.com/gncarlos/database-checkpoint/blob/main/screenshots/res_03.PNG?raw=true)
## CHALLENGE 4
  ### Query:
    SELECT name FROM destinations
      WHERE has_beaches = true AND has_mountains = true;
  ### Results: ![screenshot for challenge 4](https://github.com/gncarlos/database-checkpoint/blob/main/screenshots/res_04.PNG?raw=true)
## CHALLENGE 5
  ### Query:
    SELECT name FROM destinations
      WHERE cost_of_flight < 500 AND has_mountains = true;
  ### Results:
  ![screenshot for challenge 5](https://github.com/gncarlos/database-checkpoint/blob/main/screenshots/res_05.PNG?raw=true)
## CHALLENGE 6
  ### Query:
    INSERT INTO destinations VALUES (6, 'The Bahamas', 78, true, false, 345);
  ### Results:
    INSERT 0 1
  ![screenshot for challenge 6](https://github.com/gncarlos/database-checkpoint/blob/main/screenshots/res_06.PNG?raw=true)
## CHALLENGE 7
  ### Query:
    UPDATE destinations SET cost_of_flight = '1000'
      WHERE name = 'New Zealand';
  ### Results:
    UPDATE 1
  ![screenshot for challenge 7](https://github.com/gncarlos/database-checkpoint/blob/main/screenshots/res_07.PNG?raw=true)
## CHALLENGE 8
  ### Query:
    DELETE FROM destinations
      WHERE name = 'Minnesota';
  ### Results:
    DELETE 1
  ![screenshot for challenge 8](https://github.com/gncarlos/database-checkpoint/blob/main/screenshots/res_08.PNG?raw=true)
## CHALLENGE 9
  ### Query:
    UPDATE destinations SET name = 'Scotland'
      WHERE name = 'England';
  ### Results:
  ![screenshot for challenge 9](https://github.com/gncarlos/database-checkpoint/blob/main/screenshots/res_09.PNG?raw=true)
## CHALLENGE 10
  ### Query:
    CREATE TABLE airlines_destinations (
      id SERIAL,
      airlines_id INTEGER,
      destinations_id INTEGER
      );
  ### Results:
  ![screenshot for challenge 10](https://github.com/gncarlos/database-checkpoint/blob/main/screenshots/res_10.PNG?raw=true)
## CHALLENGE 11
  ### Query:
    SELECT airlines.name FROM airlines
      WHERE airlines.id IN (SELECT airlines_id FROM airlines_destinations
      WHERE destinations_id = (SELECT destinations.id FROM destinations
      WHERE destinations.name = 'New Zealand'));
  ### Results:
  ![screenshot for challenge 11](https://github.com/gncarlos/database-checkpoint/blob/main/screenshots/res_11.PNG?raw=true)
## CHALLENGE 12
  ### Query:
  ### Results:
  ![screenshot for challenge 12](https://github.com/gncarlos/database-checkpoint/blob/main/screenshots/res_12.PNG?raw=true)
## CHALLENGE 13
  ### Query:
    SELECT * FROM destinations;
  ### Results:
  ![screenshot for challenge 13](https://github.com/gncarlos/database-checkpoint/blob/main/screenshots/res_13.PNG?raw=true)
