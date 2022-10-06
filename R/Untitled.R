ext_tracks_file <- paste0("http://rammb.cira.colostate.edu/research/",
                          "tropical_cyclones/tc_extended_best_track_dataset/",
                          "data/ebtrk_atlc_1988_2015.txt")
start_end_vowel <- "^[AEIOU]{1}"
vowel_state_lgl <- grepl(start_end_vowel, state.name)
head(vowel_state_lgl)
head(state.name)
