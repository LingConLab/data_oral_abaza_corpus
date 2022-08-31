library(tidyverse)
read_csv("data_oral_abaza_corpus.csv") %>% 
  mutate(filename = str_replace_all(filename, "BidzhevaTA_1932", "bta32"),
         filename = str_replace_all(filename, "SanashokovaCKh", "sckh"),
         filename = str_replace_all(filename, "DzhuzhuevKM", "dkm"),
         filename = str_replace_all(filename, "UshaOSh", "uosh"),
         filename = str_replace_all(filename, "DzhuzhuevKM", "dkm"),
         filename = str_replace_all(filename, "OzovaSM", "osm"),
         filename = str_replace_all(filename, "AjsanovZDz", "azdz"),
         filename = str_replace_all(filename, "AsanaevaFM", "afm"),
         filename = str_replace_all(filename, "AjsanovaFB", "afb"),
         filename = str_replace_all(filename, "AjsanovZDz", "afb")) %>%  
  write_csv("data_oral_abaza_corpus.csv")
