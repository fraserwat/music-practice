#!/bin/sh

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
source $SCRIPT_DIR/key_calendar.sh

# Get today's key and related variables.
CHORD_PROG=("blues" "ii-V-I" "royal road" "I-V-vi-IV")
STRING_SET=("6 to 4" "5 to 3" "4 to 2" "3 to 1")
# Need this for sorting out progress through the practice routine.
source $SCRIPT_DIR/wait_for_key_press.sh

echo "Practice generator for getting a deeper understanding of triads."
echo "Press [W] to continue through the exercises.\n"
echo "--------------------------------------------------------------\n"

echo "Today's Key is ${KEYS[$START_INDEX]}, in the CAGED position ${CAGED[DATE_INT % ${#CAGED[@]}]}."
# echo "Play these inversions on strings ${STRING_SET[DATE_INT % ${#STRING_SET[@]}]}.\n"
echo "Play these inversions on strings (4 to 2).\n"

printf "The order of keys is: "
for i in {0..23}; do 
    current_index=$(( (START_INDEX + i) % ${#KEYS[@]} ))
    printf "%s " "${KEYS[current_index]}"
done
echo "\n"

wait_for_key_press "W" "[ ] Level 1: Play arpeggios over a blues progression in ${KEYS[DATE_INT % ${#KEYS[@]}]}."
echo
wait_for_key_press "W" "[ ] Level 2: Improvise over a blues progression for today's key."
echo
wait_for_key_press "W" "[ ] Level 3: In the keys above, play inversions up and down the string set. Major then minor at each."
echo
wait_for_key_press "W" "[ ] Level 4: Comp over adjacent chords in ${KEYS[DATE_INT % ${#KEYS[@]}]} Major."
echo "\n"
wait_for_key_press "W" "🎉 Practice complete!! 🎉"
echo