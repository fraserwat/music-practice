#!/bin/sh

# Need this for sorting out progress through the practice routine.
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
source $SCRIPT_DIR/wait_for_key_press.sh

echo "Practice generator for getting a deeper understanding of triads."
echo "Press [W] to continue through the exercises.\n"
echo "--------------------------------------------------------------\n"

KEYS=(G Eb B D Bb Gb A F Db E C Ab G Eb Cb D Bb F# A F C# E C Ab)
CAGED=(C A G E D)
STRING_SET=("6 to 4" "5 to 3" "4 to 2" "3 to 1")

# Use date in YYYYMMDD format for starting point. 
DATE_INT=$(date +%Y%m%d)
START_INDEX=$((DATE_INT % ${#KEYS[@]}))

echo "Today's Key is ${KEYS[$START_INDEX]}, in the CAGED position ${CAGED[DATE_INT % ${#CAGED[@]}]}."
# echo "Play these inversions on strings ${STRING_SET[DATE_INT % ${#STRING_SET[@]}]}.\n"
echo "Play these inversions on strings (4 to 2).\n"

printf "The order of keys is: "
for i in {0..23}; do 
    current_index=$(( (START_INDEX + i) % ${#KEYS[@]} ))
    printf "%s " "${KEYS[current_index]}"
done
echo "\n"

wait_for_key_press "W" "[ ] Level 1: For today's key, play through 1/4 note arpeggios over 12 bar blues chord changes."
echo
wait_for_key_press "W" "[ ] Level 2: Improvise over 12 bar blues for today's key."
echo
wait_for_key_press "W" "[ ] Level 3: Take the order of keys above, starting from the lowest inversion on the string set, working up and down again."
echo

# IV not in chord progression, using it to embellish V. Eventually, can go beyond this to emphasise different modes, work through different chords, etc.
wait_for_key_press "W" "[ ] Level 4: Take adjacent chords (e.g. V and IV) and play around with them on a loop. Just a ${KEYS[DATE_INT % ${#KEYS[@]}]}7 loop for now."
echo "\n"
wait_for_key_press "W" "🎉 Practice complete!! 🎉"
echo