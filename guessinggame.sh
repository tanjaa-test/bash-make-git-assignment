function guessinggame {
    actual_count=$(ls -l | grep ^- | wc -l)
    while true; do

        echo "How many files are in the current directory?"
        read guess

        if [[ $guess -lt $actual_count ]]; then
            echo "Sorry, your guess is too low. Please try again."

        elif [[ $guess -gt $actual_count ]]; then
            echo "Sorry, your guess is too high. Please try again."

        else
            echo "Yay! Congratuations! Your guess is correct. You get chocolade!"
            break
        fi
    done
}

guessinggame
