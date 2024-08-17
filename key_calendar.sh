# Each day a new key and CAGED position to play through.
# This will give me familiarity with both, helping with freboard memorisation, improvisation, theory, etc.
# Keys and CAGED positions on a 23 * 5 = 115 day cycle (we already have the lowest common multiple).
# These variables will be pulled into other scripts to save repeated code.

KEYS=(G Eb B D Bb Gb A F Db E C Ab G Eb Cb D Bb F# A F C# E C Ab)
CAGED=(C A G E D)

# Use date in YYYYMMDD format for starting point. 
DATE_INT=$(date +%Y%m%d)
START_INDEX=$((DATE_INT % ${#KEYS[@]}))
