#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

#ask for username
echo "Enter your username:"
read USERNAME
#check if username exists
USER_NAME_RESULT=$($PSQL "SELECT username FROM users WHERE username = '$USERNAME'")
#if not 
if [[ -z $USER_NAME_RESULT ]]
then
  echo "Welcome, $USERNAME! It looks like this is your first time here."
#input new user
  INSERT_NEW_USER=$($PSQL "INSERT INTO users(username) VALUES('$USERNAME')")
 
else
#get user_id
  
#get games played and best game
  GAMES_PLAYED=$($PSQL "SELECT COUNT(*) FROM games WHERE username = '$USERNAME'")
  BEST_GAME=$($PSQL "SELECT guesses FROM games WHERE username='$USERNAME' ORDER BY guesses ASC LIMIT 1")
echo "Welcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
fi

echo "Guess the secret number between 1 and 1000:"

#generate random number 
secret_number=$(( 1 + RANDOM % 1000 ))
#keep track of guesses
number_of_guesses=0

#start game loop
while true; do 

read GUESS
#make sure guess is integer
  if [[ ! $GUESS =~ ^[0-9]+$ ]]
  then 
    echo "That is not an integer, guess again:"

#check if guess is correct
  elif [[ $GUESS = $secret_number ]]
  then 
    (( number_of_guesses ++ ))
    INSERT_GAME=$($PSQL "INSERT INTO games(guesses, username) VALUES($number_of_guesses, '$USERNAME')")
    echo "You guessed it in $number_of_guesses tries. The secret number was $secret_number. Nice job!"
  break
#if guess is lower than number
  elif [[ $GUESS < $secret_number ]] 
  then 
    (( number_of_guesses ++ ))
    echo "It's higher than that, guess again:"
  else 
#if guess is higher than number
    (( number_of_guesses ++ ))
    echo "It's lower than that, guess again:"
fi 
done




