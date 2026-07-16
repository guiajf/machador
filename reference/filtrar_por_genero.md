# Filtrar obras por gênero

Filtrar obras por gênero

## Usage

``` r
filtrar_por_genero(genero)
```

## Arguments

- genero:

  Vetor de gêneros literários

## Value

Data frame com metadados das obras filtradas

## Examples

``` r
filtrar_por_genero("romance")
#> Error in machador::obras_metadata %>% dplyr::filter(genero %in% !!genero): could not find function "%>%"
filtrar_por_genero(c("romance", "conto"))
#> Error in machador::obras_metadata %>% dplyr::filter(genero %in% !!genero): could not find function "%>%"
```
