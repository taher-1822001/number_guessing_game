#! /bin/bash
PSQL="psql --username=freecodecamp --dbname=number_guess --no-align --tuples-only -c"

echo "Enter your username:"
read USERNAME
USERNAME_AVAIL=$($PSQL "SELECT username FROM users WHERE username='$USERNAME'")
GAMES_PLAYED=$($PSQL "SELECT COUNT(*) FROM users INNER JOIN games USING(user_id) WHERE USERNAME='$USERNAME'")
BEST_GAME=$($PSQL "SELECT MIN(number_guesses) FROM users INNER JOIN games USING(user_id) WHERE USERNAME='$USERNAME'")
if [[ -z $USERNAME_AVAIL ]]
then
INSERT_USER=$($PSQL "INSERT INTO users(username) VALUES('$USERNAME')")
echo "Welcome, $USERNAME! It looks like this is your first time here."
else
echo "Welcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
fi
RANDOM_NUM=$((1 + $RANDOM % 1000))
GUESS=1
echo "Guess the secret number between 1 and 1000:"
while read NUM
do
    if [[ ! $NUM =~ ^[0-9]+$ ]]
    then
    echo "That is not an integer, guess again:"
    else
        if [[ $NUM -eq $RANDOM_NUM ]]
        then
        break;
        else
        if [[ $NUM -gt $RANDOM_NUM ]]
            then
            echo -n "It's lower than that, guess again:"
            elif [[ $NUM -lt $RANDOM_NUM ]]
            then
            echo -n "It's higher than that, guess again:"
            fi
        fi
    fi
    GUESS=$(( $GUESS + 1))
done

if [[ $GUESS == 1 ]]
then
  echo "You guessed it in $GUESS tries. The secret number was $RANDOM_NUM. Nice job!"
  else
  echo "You guessed it in $GUESS tries. The secret number was $RANDOM_NUM. Nice job!"
fi

USER_ID=$($PSQL "SELECT user_id FROM users WHERE username='$USERNAME'")
INSERT_GAME=$($PSQL "INSERT INTO games(number_guesses, user_id) VALUES($GUESS, $USER_ID)")