#' Metadados das obras de Machado de Assis
#'
#' Dataset contendo informações sobre as obras completas de Machado de Assis
#' disponíveis no site do MEC.
#'
#' @format Um data frame com colunas:
#' \describe{
#'   \item{titulo}{Título da obra}
#'   \item{ano}{Ano de publicação (quando disponível)}
#'   \item{genero}{Gênero literário (romance, conto, poesia, crônica, teatro)}
#'   \item{arquivo}{Nome do arquivo PDF original}
#' }
#' @source \url{https://machado.mec.gov.br/}
"obras_metadata"

#' Textos completos das obras de Machado de Assis
#'
#' Dataset contendo os textos completos das obras de Machado de Assis,
#' limpos e prontos para análise de texto.
#'
#' @format Um data frame com colunas:
#' \describe{
#'   \item{titulo}{Título da obra}
#'   \item{texto}{Texto completo da obra como string única}
#' }
#' @source \url{https://machado.mec.gov.br/}
"obras_textos"

#' Stopwords em Português
#'
#' Lista de palavras vazias (stopwords) em português para filtragem
#' em análises de texto.
#'
#' @format Um tibble com uma coluna:
#' \describe{
#'   \item{palavra}{A palavra vazia (character)}
#' }
"stopwords_pt"
