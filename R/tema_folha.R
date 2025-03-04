#' Tema inspirado nos graficos do jornal Folha de Sao Paulo
#'
#'
#' @inheritParams ggplot2::theme_grey
#' @family themes folha
#' @export
#' @importFrom grid unit
#' @note
#'  Fontes originais
#'
#'  Titulo e subtitulo: FolhaGrafico
#'
#'  Grafico: FolhaGrafico
tema_folha <- function(base_size = 12, base_family = "sans") {
  (tema_base(base_size = base_size, base_family = base_family)
   + theme(
     plot.background = element_rect(fill = "#ffffff", color = NA),
     panel.background = element_rect(fill = NA, color = NA),
     plot.title = element_text(size = rel(1), face = "bold"),
     plot.subtitle = element_text(size = rel(0.7)),
     plot.title.position = "plot",
     plot.caption = element_text(hjust = 0,
                                 size = rel(0.6)),
     plot.caption.position = "plot",
     axis.line = element_blank(),
     axis.text.x = element_text(color = "black"),
     axis.text.y = element_text(size = rel(0.8), color = "black"),
     axis.title = element_blank(),
     axis.ticks.y = element_blank(),
     axis.ticks.x = element_line(color = "#cbcbcb",linewidth = 0.2),
     panel.grid.major.x = element_blank(),
     panel.grid.major.y = element_line(color = "#e5e5e5"),
     panel.grid.minor = element_blank(),
     legend.position = "top",
     legend.title = element_blank(),
     legend.text = element_text(size = rel(0.8)),
     legend.justification = 0,
     legend.location = "plot"
   ))
}


#' Escala de preenchimento para a paleta de cores Folha
#'
#' Uma escala personalizada do ggplot2 para a estética de `fill` usando a paleta de cores Folha.
#' A paleta é composta por um conjunto de nove cores distintas,
#' projetadas para serem usadas em variáveis discretas de preenchimento em gráficos do ggplot2.
#'
#' @param ... Argumentos adicionais passados para \code{discrete_scale}.
#' @param na.value A cor a ser usada para valores ausentes. O valor padrão é \code{"grey50"}.
#'
#' @return Uma função de escala do ggplot2 que aplica a paleta de cores Folha.
#' @export
scale_fill_folha <- function(...,
                             na.value = "grey50") {

  paleta_folha <- c(
    "#f47080",
    "#135aa3",
    "#a5d4cf",
    "#ffcb4e",
    "#2c0051",
    "#f79b8b",
    "#87bbe6",
    "#e06760",
    "#d8bcd8"
  )

  ggplot2::discrete_scale("folha", palette = scales::manual_pal(paleta_folha), ...)
}

#' Escala de cor para a paleta de cores Folha
#'
#' Uma escala personalizada do ggplot2 para a estética de `color` usando a paleta de cores Folha. A paleta é composta por um conjunto de nove cores distintas, projetadas para serem usadas em variáveis discretas de cor em gráficos do ggplot2.
#'
#' @param ... Argumentos adicionais passados para \code{discrete_scale}.
#' @param na.value A cor a ser usada para valores ausentes. O valor padrão é \code{"grey50"}.
#'
#' @return Uma função de escala do ggplot2 que aplica a paleta de cores Folha.
#' @export
scale_color_folha <- function(...,
                              na.value = "grey50") {

  paleta_folha <- c(
    "#f47080",
    "#135aa3",
    "#a5d4cf",
    "#ffcb4e",
    "#2c0051",
    "#f79b8b",
    "#87bbe6",
    "#e06760",
    "#d8bcd8"
  )

  ggplot2::discrete_scale("folha", palette = scales::manual_pal(paleta_folha), ...)
}
