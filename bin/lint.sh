#!/usr/bin/env bash

division_line() {
    local word=$1
    local total_length=50
    local word_length=${#word}
    local num_exclamations=$(( (total_length - word_length) / 2 ))

    printf "\n"
		printf "%$((${num_exclamations}+1))s" | tr ' ' '!'
		printf "%s" "$word"
		printf "%$((${num_exclamations}+1))s\n" | tr ' ' '!'
	}


division_line " Rubocop "
rubocop -a
division_line " Erb Lint "
erblint --lint-all -a
division_line " Bundle Audit "
bundle-audit --update
division_line " Brakeman "
brakeman -q -w2
