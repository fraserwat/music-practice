#!/bin/sh

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Get today's key and related variables.
source $SCRIPT_DIR/key_calendar.sh
# Need this for sorting out progress through the practice routine.
source $SCRIPT_DIR/wait_for_key_press.sh

# Override the CAGED array from key_calendar.sh as I build up my knowledge
CAGED=(A G E)

starting_bpm=60
start_date="20241026"
days_since=$(( ($(date -j -f "%Y%m%d" "$(date +%Y%m%d)" +%s) - $(date -j -f "%Y%m%d" "$start_date" +%s)) / 86400 ))

echo "\nToday's Key is ${TODAYS_KEY}, in the CAGED position ${CAGED[DATE_INT % ${#CAGED[@]}]}. Play these inversions on strings ${STRING_SET}.\n"
printf "The order of keys is: "
for i in {0..11}; do 
    current_index=$(( (START_INDEX + i) % ${#KEYS[@]} ))
    printf "%s " "${KEYS[current_index]}"
done
echo "\n"

wait_for_key_press "W" "[ ] Notefinder: Start on today's key, find the notes above on every string. Descend from high E."
echo
wait_for_key_press "W" "[ ] Triads: In the keys above, play inversions up and down the string set. Major then minor at each."
echo
wait_for_key_press "W" "[ ] Arpeggios: CAGED sweeps up and down the neck in ${TODAYS_KEY} Maj/Min. Up one, down the next etc."
echo
wait_for_key_press "W" "[ ] Scales: Play ${TODAYS_KEY} Major in today's position. Try it in thirds, or starting on different strings."
echo
wait_for_key_press "W" "[ ] Technique: Work through todays key position and get a clear pinch harmonic in on each note from rest position."
echo
wait_for_key_press "W" "[ ] Legato: Go up and down ${TODAYS_KEY} ${TODAYS_MODE} in different subdivisions at $((starting_bpm + days_since)) BPM along with a drum track."
echo
wait_for_key_press "W" "[ ] Improv: Over a V7alt → imin cadance vamp, Play a diminished triad resolving to the minor scale."

echo "\n\n🎉 Practice complete!! 🎉\n\nNow go play and write songs!\n"
