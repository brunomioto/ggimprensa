#' Tema inspirado nos graficos do Nexo Jornal
#'
#'
#' @inheritParams ggplot2::theme_grey
#' @family themes nexo
#' @export
#' @importFrom grid unit
#' @note
#'  Fontes originais
#'
#'  Titulo e subtitulo: Sentinel
#'
#'  Grafico: Gotham Rounded
tema_nexo <- function(base_size = 12, base_family = "sans") {
  (tema_base(base_size = base_size, base_family = base_family)
   + theme(#plot.margin = margin(t = 18, r = 20, b = 6, l = 20),
           plot.background = element_rect(fill = "#eeeeee", color = NA),
           panel.background = element_rect(fill = NA, color = NA),
           plot.title = element_text(size = rel(2)),
           plot.subtitle = element_text(color = "#7d7d7d",
                                        margin = margin(0,0,20,0)),
           plot.title.position = "plot",
           plot.caption = element_text(hjust = 0),
           plot.caption.position = "plot",
           axis.line.x = element_line(size = 1.2),
           axis.line.y = element_blank(),
           axis.text.x = element_text(color = "#263238",
                                      face = "bold",
                                      size = rel(1.2)),
           axis.text.y = element_text(color = "#656565",
                                      size = rel(1.2)),
           axis.title = element_blank(),
           axis.ticks.x = element_line(color = "#1b1b19", size = 0.8),
           axis.ticks.length.x = unit(5, "pt"),
           axis.ticks.y = element_blank(),
           panel.grid = element_line(color = "#b8b8b8", size = 0.1,
                                     linetype = "dashed"),
           panel.grid.major.x = element_blank(),
           panel.grid.minor.x = element_blank()
   ))
}
