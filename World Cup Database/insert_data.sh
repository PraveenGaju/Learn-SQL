#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.

#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.

# empty database to rerun file
echo $($PSQL "TRUNCATE TABLE games, teams")
cat games.csv | while IFS="," read YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS
do
  if [[ $WINNER != "winner" ]]
  then
    #get winner team name
    TEAM1_NAME=$($PSQL "SELECT name FROM teams WHERE name='$WINNER'")
    #if not found
    if [[ -z $TEAM1_NAME ]]
    then
      INSERT_TEAM1_NAME=$($PSQL "INSERT INTO teams(name) VALUES('$WINNER')")
      if [[ $INSERT_TEAM1_NAME == "INSERT 0 1" ]]
      then
        echo Inserted into, $WINNER
      fi
    fi
  fi

  if [[ $OPPONENT != "opponent" ]]
  then
    #get opponent team name
    TEAM2_NAME=$($PSQL "SELECT name FROM teams WHERE name='$OPPONENT'")
    #if not found
    if [[ -z $TEAM2_NAME ]]
    then
      INSERT_TEAM2_NAME=$($PSQL "INSERT INTO teams(name) VALUES('$OPPONENT')")
      if [[ $INSERT_TEAM2_NAME == "INSERT 0 1" ]]
      then
        echo Inserted into, $OPPONENT
      fi
    fi
  fi

  #insert games table data
  if [[ YEAR != "year" ]]
  then
    #get winner_id
    WINNER_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER'")
    #get opponent_id
    OPPONENT_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT'")
    #insert new game rows
    INSERT_GAME=$($PSQL "INSERT INTO games(year, round, winner_id, opponent_id, winner_goals, opponent_goals) VALUES($YEAR, '$ROUND', $WINNER_ID, $OPPONENT_ID, $WINNER_GOALS, $OPPONENT_GOALS)")
    if [[ $INSERT_GAME == "INSERT 0 1" ]]
    then
      echo New game added: $YEAR, $ROUND, $WINNER_ID VS $OPPONENT_ID score $WINNER_GOALS : $OPPONENT_GOALS
    fi
  fi
done
