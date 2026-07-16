# Preparar texto para análise com tidytext

Preparar texto para análise com tidytext

## Usage

``` r
preparar_tidytext(titulo)
```

## Arguments

- titulo:

  Título da obra

## Value

Data frame tokenizado pronto para tidytext

## Examples

``` r
preparar_tidytext("Memórias Póstumas de Brás Cubas")
#> Error in machador::obras_textos %>% dplyr::filter(titulo == !!titulo) %>%     dplyr::pull(texto): could not find function "%>%"
```
