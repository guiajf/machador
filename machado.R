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

library(machador)
library(tidytext)
library(dplyr)
library(ggplot2)

# 1. Tokenizar o texto usando a função do seu pacote
dom_casmurro_tidy <- preparar_tidytext("Dom Casmurro")

# 2. Remover as suas stopwords personalizadas
# Como a coluna se chama "palavra" em ambos os dataframes, o anti_join funciona direto
dom_casmurro_limpo <- dom_casmurro_tidy %>%
  anti_join(stopwords_pt, by = "palavra") %>%
  count(palavra, sort = TRUE) %>%
  slice_max(n, n = 20)

# 3. Visualizar o resultado
print(dom_casmurro_limpo)

# 4. Gerar o gráfico
ggplot(dom_casmurro_limpo, aes(x = reorder(palavra, n), y = n, fill = n)) +
  geom_col(show.legend = FALSE) +
  coord_flip() +
  labs(
    title = "20 palavras mais frequentes em Dom Casmurro",
    subtitle = "Com remoção de stopwords personalizadas (stpw.txt)",
    x = NULL, 
    y = "Frequência"
  ) +
  theme_minimal()


library(tibble)

# Carregar suas stopwords
stopwords_pt <- tibble(palavra = readLines("stpw.txt", encoding = "UTF-8"))

# Salvar na pasta data do pacote
save(stopwords_pt, file = "data/stopwords_pt.rda")

devtools::document()
devtools::install()
usethis::use_git()
usethis::git_push()
