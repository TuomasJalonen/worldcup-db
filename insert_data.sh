#! /bin/bash

PSQL="psql --username=${PGUSER:-postgres} --dbname=${PGDATABASE:-worldcup} -t --no-align -c"

if [[ $1 == "test" ]]
then
  PSQL="psql --username=${PGUSER:-postgres} --dbname=${PGDATABASE_TEST:-worldcuptest} -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.

cat games.csv | while IFS="," read -r YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS
do
  # skip header row
  [ "$YEAR" = "year" ] && continue

  # get winner_id
  WINNER_ID=$($PSQL "SELECT team_id FROM teams WHERE name = '$WINNER'")
  # if not found
  if [[ ! $WINNER_ID ]]
  then
      # add team to teams table
      WINNER_INSERT_OUT=$($PSQL "INSERT INTO teams(name) VALUES('$WINNER')")
      # get winner_id
      WINNER_ID=$($PSQL "SELECT team_id FROM teams WHERE name = '$WINNER'")
  fi

  # get opponent_id
  OPPONENT_ID=$($PSQL "SELECT team_id FROM teams WHERE name = '$OPPONENT'")
  # if not found
  if [[ ! $OPPONENT_ID ]]
  then
      # add team to teams table
      OPPONENT_INSERT_OUT=$($PSQL "INSERT INTO teams(name) VALUES('$OPPONENT')")
      # get opponent_id
      OPPONENT_ID=$($PSQL "SELECT team_id FROM teams WHERE name = '$OPPONENT'")
  fi

  # add data to games
  GAMES_INSERT_OUT=$($PSQL "INSERT INTO games(year, round, winner_id, opponent_id, winner_goals, opponent_goals) VALUES($YEAR, '$ROUND', $WINNER_ID, $OPPONENT_ID, $WINNER_GOALS, $OPPONENT_GOALS)")

done
