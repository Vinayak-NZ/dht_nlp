## ---- chi-square-test

chi_square_stat <- chisq.test(chisquare_input, correct = FALSE)

## ---- output-chi-square

kbl(chi_square_table) %>%
  kable_classic() %>%
  add_header_above(c(" " = 1, "Sentiment" = 3)) %>% 
  footnote(general = paste0(" = ", 
                            round(chi_square_stat$statistic[[1]], 2), 
                            ", p = .", 
                            signif(chi_square_stat$p.value[[1]], 1)), 
           general_title = paste0("χ2", 
                                  "(", 
                                  chi_square_stat$parameter[[1]], 
                                  ")"),
           footnote_as_chunk = T, title_format = "italic")


