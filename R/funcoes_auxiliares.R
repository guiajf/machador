#' Filtrar obras por gênero
#'
#' @param genero Vetor de gêneros literários
#' @return Data frame com metadados das obras filtradas
#' @export
#' @examples
#' filtrar_por_genero("romance")
#' filtrar_por_genero(c("romance", "conto"))
filtrar_por_genero <- function(genero) {
  machador::obras_metadata %>%
    dplyr::filter(genero %in% !!genero)
}

#' Obter texto de uma obra específica
#'
#' @param titulo Título da obra
#' @return Texto completo da obra
#' @export
#' @examples
#' obter_texto("Dom Casmurro")
obter_texto <- function(titulo) {
  machador::obras_textos %>%
    dplyr::filter(titulo == !!titulo) %>%
    dplyr::pull(texto)
}

#' Preparar texto para análise com tidytext
#'
#' @param titulo Título da obra
#' @return Data frame tokenizado pronto para tidytext
#' @export
#' @examples
#' preparar_tidytext("Memórias Póstumas de Brás Cubas")
preparar_tidytext <- function(titulo) {
  texto <- obter_texto(titulo)

  if (length(texto) == 0) {
    stop("Obra não encontrada")
  }

  tibble::tibble(texto = texto) %>%
    tidytext::unnest_tokens(palavra, texto)
}

#' Listar todas as obras disponíveis
#'
#' @return Data frame com todas as obras
#' @export
listar_obras <- function() {
  machador::obras_metadata
}

#' Buscar obras por palavra-chave no título
#'
#' @param palavra Palavra-chave para busca
#' @return Data frame com obras que contêm a palavra no título
#' @export
#' @examples
#' buscar_por_titulo("Casmurro")
buscar_por_titulo <- function(palavra) {
  machador::obras_metadata %>%
    dplyr::filter(stringr::str_detect(titulo, regex(palavra, ignore_case = TRUE)))
}
