#!/bin/sh

echo Practice generator for getting a deeper understanding of triads.
echo Take the I triad in root position on that string set.
echo Then work out the first inversion \(manually\), and start tapping \(for visualisation, not a technique workout\).
echo Do this up and down the neck.\\n\\nPress \[W\] to continue through the exercises.\\n

echo --------------------------------------------------------------\\n

# function for waiting for the space bar.
wait_for_space() {
    local prompt="$1"
    printf "%s" "$prompt"
    while true; do
        read -rsn1 -p "" key
        if [ "$key" = 'W' ]; then
            updated_prompt="${prompt//\[ \]/[X]}"
            printf "\r%s" "$updated_prompt"
            break
        fi
    done
}

# Output the date in YYYYMMDD format
DATE_INT=$(date +%Y%m%d)

KEYS=(G Eb B D Bb Gb A F Db E C Ab G Eb Cb D Bb F# A F C# E C Ab)
CAGED=(C A G E D)
STRING_SET=("6 to 4" "5 to 3" "4 to 2" "3 to 1")

echo Today\'s Key is ${KEYS[DATE_INT % ${#KEYS[@]}]}, in the CAGED position ${CAGED[DATE_INT % ${#CAGED[@]}]}.
echo Play these inversions on strings ${STRING_SET[DATE_INT % ${#STRING_SET[@]}]}.\\n
printf "The order of keys is: "; for i in {0..23}; do printf "%s " "${KEYS[$(((START+i)%24))]}"; done; echo \\n

wait_for_space "[ ] Level 1: Play the four chord tones of the I7, IV7, and V7 chords, and the maj I IV V arpeggios."
echo  
wait_for_space "[ ] Level 2: Play 2 notes per bar against the backing track, to help you know what bar you are on."
echo  
wait_for_space "[ ] Level 3: Take the order of keys above and find the first inversion in all of them sequentially."
echo  
wait_for_space "[ ] Level 4: Do this again for 1st and 2nd inversions."
echo  
wait_for_space "[ ] Level 5: Sequential inversions for each chord. Sometimes it makes sense to go sequentially high to low."
echo \\n
wait_for_space "🎉 Practice complete!! 🎉"
echo \\n
