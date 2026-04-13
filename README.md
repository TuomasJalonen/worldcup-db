# World Cup Database

This project imports FIFA World Cup match data from a CSV file into a PostgreSQL database and runs analytical queries using Bash and SQL.

## Files

- `worldcup.sql` — database schema and tables
- `insert_data.sh` — imports data from `games.csv`
- `queries.sh` — runs SQL queries
- `games.csv` — source data

## Database Structure

### teams
- team_id (PK)
- name

### games
- game_id (PK)
- year
- round
- winner_id (FK → teams
- opponent_id (FK → teams)
- winner_goals
- opponent_goals

## Usage

Create database and tables:

```bash
psql -U postgres < worldcup.sql
```

Import data:

```bash
./insert_data.sh
```

Run queries:

```bash
./queries.sh
```

## Features

- Bash CSV parsing
- Conditional inserts to avoid duplicate teams
- Foreign key relationships
- SQL joins and aggregates
- PostgreSQL scripting with psql

Created as part of the freeCodeCamp Relational Database certification.
