#' Tema inspirado nos gráficos do jornal Poder 360
#'
#'
#' @inheritParams ggplot2::theme_grey
#' @family themes poder360
#' @export
#'
tema_poder360 <- function(base_size = 12, base_family = "sans") {
  (theme_foundation(base_size = base_size, base_family = base_family)
   + theme(plot.margin = margin(t = 18, r = 20, b = 6, l = 20),
         plot.background = element_rect(fill = "#eceff1", color = NA),
         panel.background = element_rect(fill = NA, color = NA),
         plot.title = element_text(hjust = 0.5,
                                   color = "#0a4b7f",
                                   face = "bold",
                                   size = rel(2)),
         plot.subtitle = element_text(hjust = 0.5,
                                      color = "#263238"),
         plot.caption = element_text(hjust = 0,
                                     color = "#78919d"),
         axis.text.x = element_text(color = "#263238"),
         axis.text.y = element_text(color = "#78909c"),
         axis.title = element_blank(),
         axis.ticks = element_blank(),
         panel.grid = element_blank()
   ))
}


#' Adiciona linha superior
#'
#' @param plot
#'
#' @return
#' @export
#'
linha_poder360 <- function(plot){
  rect <- grid::rectGrob(
    x = 0.5,
    y = 1,
    width = 0.25,
    height = 0.01,
    hjust = 0.5,
    vjust = 1,
    gp = grid::gpar(col = NA, fill = "#fd541e")
  )

  cowplot::ggdraw(plot) +
    cowplot::draw_grob(rect)
}



