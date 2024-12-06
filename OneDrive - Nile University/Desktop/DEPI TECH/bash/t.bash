#!/bin/bash

function two_fer() {
    local name=$1

    if [ -n $name ];
    then
        echo "one for ${name}, and one for me."
    else
        echo "one for you, and one for me."
    fi
}

function main () {
        two_fer "$1"
   }
   
main "$@"