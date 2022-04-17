### Steps to initalize Docker with Hadoop & Hive

- Put the `docker-compose` and `.env` in the same folder
- Go to that folder using the terminal and execute `docker-compose up -d` to get the docker containers up and running.
- Run `docker stats` to ensure that everything is running smoothly
- Copy the data.csv to the namenode by `docker cp data.csv namenode:/data.csv`
- Access the namenode's terminal using `docker exec -it namenode /bin/bash`
- Rename the csv to reviewsData.csv `mv data.csv reviewsData.csv`
- Create hdfs directory `hdfs dfs -mkdir /data`
- Load the data in hdfs `hdfs dfs -put reviewsData.csv /data/reviewsData.csv
- Exit the namenode server `exit`
- Connect to the hive-server `docker exec -it hive-server bash`
- Start hiveserver2 `hiveserver`
- Beeline is the command line interface with Hive. Let’s connect to hiveserver2 now. `beeline` 
- Connect to hiveserver2 `!connect jdbc:hive2://127.0.0.1:10000 scott tiger`
- Create new database `create database review`;
- Use the database created `use review`;
- Copy and paste the sql-schema `schema.hql`
- Display the 10 rows of the data using `select * from reviews limit 10;
