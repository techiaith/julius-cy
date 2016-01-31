mkdfa.pl julius
generate.dSYM -n 100 julius | sort | sed 's/<s>//g' | sed 's/<\/s>//g'
