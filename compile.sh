mkdfa.pl julius
generate -n 5000 julius | sort | sed 's/<s>//g' | sed 's/<\/s>//g'
