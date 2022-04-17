create database if not exists review;
use reviews;

create external table if not exists reviews (
  `Id` int,
  `Title` string,
  `Cast` string,
  `Tomatometer` string,
  `Audience_Score` string,
  `Character` string,
  `Box_Office` string,
  `Year` string
)
row format delimited
fields terminated by ','
lines terminated by '\n'
stored as textfile 
location '/data';
