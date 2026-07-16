# Obter texto de uma obra específica

Obter texto de uma obra específica

## Usage

``` r
obter_texto(titulo)
```

## Arguments

- titulo:

  Título da obra

## Value

Texto completo da obra

## Examples

``` r
obter_texto("Dom Casmurro")
#> Error in machador::obras_textos %>% dplyr::filter(titulo == !!titulo) %>%     dplyr::pull(texto): could not find function "%>%"
```
