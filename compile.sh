mkdfa.pl julius
generate -n 100 julius | sort | sed 's/<s>//g' | sed 's/<\/s>//g'
