# Each day a new key and CAGED position to play through.
# Keys and CAGED positions on a 12 * 5 = 60 day cycle (we already have the lowest common multiple).
# These variables will be pulled into other scripts to save repeated code.

KEYS=(G Eb B D Bb Gb A F Db E C Ab)
STRINGS=("7 to 5" "6 to 4" "5 to 3" "4 to 2" "3 to 1")
CAGED=(C A G E D)
MODES=(Ionian Dorian Phrygian Lydian Mixolydian Aeolian Locrian)

# Use date in YYYYMMDD format for starting point. 
DATE_INT=$(date +%Y%m%d)
START_INDEX=$((DATE_INT % ${#KEYS[@]}))

# Todays workout
STRING_SET="${STRINGS[DATE_INT % ${#STRINGS[@]}]}"
TODAYS_MODE="${MODES[DATE_INT % ${#MODES[@]}]}"
TODAYS_KEY="${KEYS[$START_INDEX]}"
