#!/usr/bin/env bash
   function scrabble(){
    local word=$1
    local score=0
    declare -A letter_values=( 
                    [A]=1 [E]=1 [I]=1 [O]=1 [U]=1 [L]=1 [N]=1 [R]=1 [S]=1 [T]=1
                    [D]=2 [G]=2 
                    [B]=3 [C]=3 [M]=3 [P]=3 
                    [F]=4 [H]=4 [V]=4 [W]=4 [Y]=4 
                    [K]=5 
                    [J]=8 [X]=8 
                    [Q]=10 [Z]=10 )
    word=$(echo "$word" | tr 'a-z' 'A-Z')
    
    for ((i=0; i<${#word}; i++)); do
        letter="${word:i:1}"     
        if [ ${letter_values[$letter]} ]; then
        score=$((score + letter_values[$letter]))
        fi
   done
   echo "your word {$1} score is: $score"
   }
   
main () {
    # echo "enter a word: "
    # read word
    scrabble "$1"
   }
main "$@"
