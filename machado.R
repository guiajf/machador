library(dplyr)

# Referências:
# https://datavizsp25.classes.andrewheiss.com/example/14-example.html

listar_obras()
listar_obras() %>% filter(titulo == "Junqueira Freire")

install.packages("remotes")
remotes::install_github("guiajf/machador")

library(tokenizers)
library(tidyverse)
library(tidytext)
library(machador)
library(machador)
library(tidytext)
library(ggplot2)

library(machador)
library(dplyr)

# Extrair o texto de uma obra específica (ex: Dom Casmurro)
dom_casmurro <- obras_textos %>%
  filter(titulo == "Dom Casmurro") %>%
  pull(texto) %>%
  strsplit("\n") %>%  # Dividir em linhas
  unlist()

head(dom_casmurro, 9)

memorias_postumas <- obras_textos %>%
  filter(titulo == "Memórias Póstumas de Brás Cubas") %>%
  pull(texto) %>%
  strsplit("\n") %>%
  unlist()

head(memorias_postumas, 9)

# Usando a função obter_texto() do machador
texto <- obter_texto("Dom Casmurro")

# Dividir em linhas e ver as primeiras
linhas <- strsplit(texto, "\n")[[1]]
head(linhas, 9)

library(machador)
library(tidytext)
library(dplyr)
library(ggplot2)

preparar_tidytext("Dom Casmurro") %>%
  anti_join(stop_words, by = c("palavra" = "word")) %>%
  count(palavra, sort = TRUE) %>%
  slice_max(n, n = 20) %>%
  ggplot(aes(reorder(palavra, n), n, fill = n)) +
  geom_col(show.legend = FALSE) +
  coord_flip() +
  labs(title = "Palavras mais frequentes em Dom Casmurro",
       x = NULL, y = "Frequência")

library(usethis)

# Configurar Git (se ainda não configurou)
usethis::use_git()
# Quando perguntar quais arquivos adicionar, digite: 1 (para todos)

# Conectar ao GitHub
usethis::use_github()