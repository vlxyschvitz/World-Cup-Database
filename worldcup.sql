camper: /project$ psql --username=freecodecamp --dbname=postgres
psql (12.17 (Ubuntu 12.17-1.pgdg22.04+1))
SSL connection (protocol: TLSv1.3, cipher: TLS_AES_256_GCM_SHA384, bits: 256, compression: off)
Type "help" for help.

postgres=> CREATE DATABASE worldcup;
CREATE DATABASE
postgres=> \c worldcup
SSL connection (protocol: TLSv1.3, cipher: TLS_AES_256_GCM_SHA384, bits: 256, compression: off)
You are now connected to database "worldcup" as user "freecodecamp".
worldcup=> 
worldcup=> CREATE TABLE teams (
worldcup(>     team_id SERIAL PRIMARY KEY,
worldcup(>     name VARCHAR UNIQUE NOT NULL
worldcup(> );
CREATE TABLE
worldcup=> CREATE TABLE games (
worldcup(>     game_id SERIAL PRIMARY KEY,
worldcup(>     year INT NOT NULL,
worldcup(>     round VARCHAR NOT NULL,
worldcup(>     winner_id INT NOT NULL,
worldcup(>     opponent_id INT NOT NULL,
worldcup(>     winner_goals INT NOT NULL,
worldcup(>     opponent_goals INT NOT NULL,
worldcup(>     FOREIGN KEY (winner_id) REFERENCES teams (team_id),
worldcup(>     FOREIGN KEY (opponent_id) REFERENCES teams (team_id)
worldcup(> );
CREATE TABLE
worldcup=> 
