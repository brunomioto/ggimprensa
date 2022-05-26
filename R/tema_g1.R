#' Tema inspirado nos graficos do G1 (globo.com)
#'
#'
#' @inheritParams ggplot2::theme_grey
#' @family themes g1
#' @export
#' @importFrom grid unit
#' @note
#'  Fontes originais
#'
#'  Titulo e subtitulo:
#'
#'  Grafico:
tema_g1 <- function(base_size = 12, base_family = "sans") {
  (ggimprensa::tema_base(base_size = base_size, base_family = base_family)
   + theme(plot.margin = margin(t = 10, r = 10, b = 10, l = 10),
     plot.background = element_rect(fill = "#ffffff", color = NA),
     panel.background = element_rect(fill = NA, color = NA),
     plot.title = element_text(size = rel(2), face = "bold"),
     plot.subtitle = element_text(color = "#7e7e7e"),
     plot.title.position = "plot",
     plot.caption = element_text(hjust = 0,
                                 color = "#313131"),
     axis.line.x = element_line(),
     axis.line.y = element_blank(),
     axis.text.x = element_text(color = "#263238",
                                size = rel(1.2)),
     axis.text.y = element_text(color = "#656565",
                                size = rel(1.2),
                                vjust = 0),
     axis.title = element_blank(),
     axis.ticks = element_blank(),
     panel.grid = element_line(color = "#d9d9d9", size = 0.1),
     panel.grid.major.x = element_blank(),
     panel.grid.minor = element_blank()
   ))
}
