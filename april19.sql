CREATE DATABASE rcb_players;
CREATE DATABASE bollywood_actors;
CREATE DATABASE mi_players;
CREATE DATABASE csk_players;

use rcb_players;
CREATE TABLE players_list(sl_no int,name varchar(20),age int,origin varchar(20),salary int,achievements int,jersey_no int,height int,weight int,remarks varchar(20));
SELECT * FROM players_list;

use bollywood_actors;
CREATE TABLE actor_info(sl_no int,name varchar(20),age int,no_of_movies int,height int,weight int,no_of_songs int,married varchar(20),gender varchar(20),live_in varchar(20));
SELECT * FROM actor_info;

use mi_players;
CREATE TABLE players_name(sl_no int,name varchar(20),age int,ph_no bigint,height int,weight int,salary int,married varchar(20),origin_country varchar(20));
SELECT * FROM players_name;

use csk_players;
CREATE TABLE players_details(sl_no int,name varchar(20),origin varchar(20),salary int,ph_no int,married varchar(20),height int,weight int,indian varchar(20),achievements varchar(20));
SELECT * FROM players_details;


