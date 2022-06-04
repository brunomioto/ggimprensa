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
#'  Titulo e subtitulo:
#'
#'  Grafico:
tema_folha <- function(base_size = 12, base_family = "sans") {
  (tema_base(base_size = base_size, base_family = base_family)
   + theme(#plot.margin = margin(t = 10, r = 10, b = 10, l = 10),
           plot.background = element_rect(fill = "#ffffff", color = NA),
           panel.background = element_rect(fill = NA, color = NA),
           plot.title = element_text(size = rel(1), face = "bold"),
           plot.subtitle = element_text(size = rel(0.7)),
           plot.title.position = "plot",
           plot.caption = element_text(hjust = 0,
                                       size = rel(0.6)),
           plot.caption.position = "plot",
           axis.line = element_blank(),
           #axis.text.x = element_text(size = rel(1.2)),
           axis.text.y = element_text(size = rel(0.8)),
           axis.title = element_blank(),
           axis.ticks = element_blank(),
           axis.ticks.y = element_line(color = "#cbcbcb", size = 0.01),
           #panel.grid = element_line(color = "#e0e0e0", size = 0.01),
           panel.grid = element_blank(),
           panel.grid.major.x = element_blank(),
           panel.grid.minor = element_blank()
   ))
}
