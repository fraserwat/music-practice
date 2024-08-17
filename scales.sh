#!/bin/sh

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Get today's key and related variables.
source $SCRIPT_DIR/key_calendar.sh
# Need this for sorting out progress through the practice routine.
source $SCRIPT_DIR/wait_for_key_press.sh

echo "Practice generator for better understanding of keys and scales."
echo "Press [W] to continue through the exercises.\n"
echo "--------------------------------------------------------------\n"

echo "Today's Key is ${KEYS[$START_INDEX]}, in the CAGED position ${CAGED[DATE_INT % ${#CAGED[@]}]}.\n"

# Going to add 1 bpm every day from today (17th August)
start_date="20240817"  # Format: YYYYMMDD
days_since=$(( ($(date -j -f "%Y%m%d" "$(date +%Y%m%d)" +%s) - $(date -j -f "%Y%m%d" "$start_date" +%s)) / 86400 ))
wait_for_key_press "W" "[ ] Level 1: For today's key + position, play continuous 3nps legato for 1 min on each string pair. 16th notes at $((60 + days_since)) BPM."
echo

# TODO: Integrate this into the script, you should have to write it out in the terminal.
CIRCLE_OF=(Fifths Fourths)
wait_for_key_press "W" "[ ] Level 2: Write out the Circle of ${CIRCLE_OF[DATE_INT % ${#CIRCLE_OF[@]}]}, starting from ${KEYS[$START_INDEX]}."
echo
wait_for_key_press "W" "[ ] Level 3: Take a short melody + chords behind it, learn it in all string groups, and cycle through every key."
echo
wait_for_key_press "W" "[ ] Level 4: Play through a backing track. https://www.youtube.com/playlist?list=PLvPS3L8EbAx9wEH5Nq_aU2J0Lm9TcCFYP."
echo

# IV not in chord progression, using it to embellish V. Eventually, can go beyond this to emphasise different modes, work through different chords, etc.
echo "\n"
wait_for_key_press "W" "🎉 Practice complete!! 🎉"
echo