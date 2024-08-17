# Helper function for when I'm going through steps in my practice routines.
wait_for_key_press() {
    local key="$1"
    local prompt="$2"
    printf "%s" "$prompt"
    while true; do
        read -rsn1 -p "" input_key
        if [ "$input_key" = "$key" ]; then
            updated_prompt="${prompt//\[ \]/[X]}"
            printf "\r%s" "$updated_prompt"
            break
        fi
    done
}