# machador

Obras completas de Machado de Assis para análise de texto em R.

## Instalação

```r
# Instalar do GitHub
install.packages("remotes")
remotes::install_github("seu-usuario/machador")

### USO

library(machador)
library(tidytext)
library(ggplot2)

# Listar todas as obras
listar_obras()

# Filtrar por gênero
filtrar_por_genero("romance")

# Obter texto de uma obra
texto <- obter_texto("Dom Casmurro")

# Análise com tidytext
preparar_tidytext("Dom Casmurro") %>%
  anti_join(stop_words) %>%
  count(palavra, sort = TRUE) %>%
  slice_max(n, n = 20) %>%
  ggplot(aes(reorder(palavra, n), n, fill = n)) +
  geom_col(show.legend = FALSE) +
  coord_flip() +
  labs(title = "Palavras mais frequentes em Dom Casmurro")
  
### Dados

Fonte: Machado de Assis - MEC
Licença dos dados: Domínio público
Total de obras: 116 obras em 8 gêneros

### Licença

MIT © Guilherme Ferreira

