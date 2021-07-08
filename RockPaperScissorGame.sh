#! /bin/bash -x

# WAP to simulate rock, paper and scissor with computer and user

#constant variable
ROCK=1
PAPER=2
SCISSOR=3
play=1

echo "Welcome To The Game"

while [ $play -eq 1 ]
do

	echo "select your option to play the game ROCK PAPER SCISSOR"
	echo "1) ROCK"
	echo "2) PAPER"
	echo "3) SCISSOR"
	read choice

	 case $choice in

                1) echo "YOU SELECTED ROCK"      ;;
                2) echo "YOU SELECTED PAPER"     ;;
                3) echo "YOU SELECTED SCISSOR"   ;;
                *) echo "INVALID SELECTION"      ;;
        esac

	CompSelection=$(( RANDOM%3 + 1 ))
	case $CompSelection in

                1) echo "COMPUTER SELECTED ROCK"      ;;
                2) echo "COMPUTER SELECTED PAPER"     ;;
                3) echo "COMPUTER SELECTED SCISSOR"   ;;
                *) echo "INVALID SELECTION"           ;;
        esac

	if [[ $choice -eq $ROCK ]] && [[ $CompSelection -eq $SCISSOR ]]
	then
		echo "YOU WIN"
	elif [[ $choice -eq $ROCK ]] && [[ $CompSelection -eq $PAPER ]]
	then
		echo "YOU LOSE"
	elif [[ $choice -eq $PAPER ]] && [[ $CompSelection -eq $ROCK ]]
	then
		echo "YOU WIN"
	elif [[ $choice -eq $PAPER ]] && [[ $CompSelection -eq $SCISSOR ]]
	then
		echo "YOY LOSE"
	elif [[ $choice -eq $SCISSOR ]] && [[ $CompSelection -eq $PAPER ]]
	then
		echo "YOU WIN"
	elif [[ $choice -eq $SCISSOR ]] && [[ $CompSelection -eq $STONE ]]
	then
		echo "YOU LOSE"
	fi
	read -p "to continue to play press 1 or else press 0 to stop" play
done
