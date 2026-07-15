# Script para criar o dataset stopwords_pt do pacote machador
library(tibble)

# Ler o arquivo de texto
stopwords_pt <- tibble(palavra = readLines("data-raw/stpw.txt", encoding = "UTF-8"))

# Salvar como .rda na pasta data/
usethis::use