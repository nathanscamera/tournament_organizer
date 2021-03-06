-- Table definitions for the tournament project.
--
-- To initialize:
-- createdb tournament
-- psql tournament

-- drop database to prevent duplicate database.
DROP DATABASE IF EXISTS tournament;
-- create database
CREATE DATABASE tournament;
-- connect to database
\c tournament

CREATE TABLE players  ( id serial primary key,
                        name varchar (25) not null,
                        created_at timestamp default current_timestamp );

CREATE TABLE matches  ( id serial primary key,
                        winner_id int,
                        loser_id int,
                        foreign key (winner_id) references players(id),
                        foreign key (loser_id) references players(id) );
