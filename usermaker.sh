#!/bin/bash
#ask for input "do you want to make a user?"
echo "Would you like to create a user?"
read response
if [[ $response == "yes" ]]; then
#if given the corrent input, bash makes the user"
  echo "Username:"
  read username

  if [[ `adduser $username` == 0 ]]; then
    echo "User $username Created!"
    sudo id username
  # TODO: Add user to a specific group
  # TODO: prompt asking to add $username to group
  else
    echo "Oops, something went wrong"
  fi

else
  echo "Goodbye"
fi
