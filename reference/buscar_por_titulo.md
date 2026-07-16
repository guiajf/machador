# Buscar obras por palavra-chave no título

Buscar obras por palavra-chave no título

## Usage

``` r
buscar_por_titulo(palavra)
```

## Arguments

- palavra:

  Palavra-chave para busca

## Value

Data frame com obras que contêm a palavra no título

## Examples

``` r
buscar_por_titulo("Casmurro")
#> Error in machador::obras_metadata %>% dplyr::filter(stringr::str_detect(titulo,     regex(palavra, ignore_case = TRUE))): could not find function "%>%"
```
