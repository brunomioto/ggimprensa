
<!-- README.md is generated from README.Rmd. Please edit that file -->

# ggimprensa

<!-- badges: start -->
<!-- badges: end -->

Esse pacote foi inspirado no pacote
[ggthemes](https://github.com/jrnold/ggthemes)

## Instalação

Você pode instalar o pacote ggimprensa com a seguinte função:

``` r
# install.packages("devtools")
devtools::install_github("brunomioto/ggimprensa")
```

## Uso

Os temas existentes no pacote atualmente são:

-   `tema_poder360()` referente ao jornal [Poder
    360](https://www.poder360.com.br/)

-   `tema_g1()` referente ao jornal [g1 - Globo](https://g1.globo.com/)

-   `tema_nexo()` referente ao [Nexo
    Jornal](https://www.nexojornal.com.br/)

``` r
library("ggplot2")
library("ggimprensa")
```

### Poder 360

``` r
p1 <- ggplot(pinguins_grupos, aes(x = ilha, y = n)) +
  geom_col(fill = "#fd541e")+
  labs(
    title = "Número de pinguins por ilha",
    subtitle = "Registros feitos de 2007 a 2009",
    caption = "Fonte: {palmerpenguins} traduzido no pacote {dados}"
  )+
  scale_y_continuous(expand = expansion(mult = c(0,0.1)))+
  tema_poder360()

p1
```

<img src="man/figures/README-exemplo poder360-1.png" width="80%" />

Caso queira adicionar a faixa superior ao gráfico, utilize a função
`linha_poder360()`

``` r
linha_poder360(p1)
```

<img src="man/figures/README-linha-1.png" width="80%" />

### G1

``` r
p2 <- ggplot(pinguins_grupos, aes(x = ilha, y = n)) +
  geom_col(fill = "#c6160d")+
  labs(
    title = "Número de pinguins por ilha",
    subtitle = "Registros feitos de 2007 a 2009",
    caption = "Fonte: {palmerpenguins} traduzido no pacote {dados}"
  )+
  scale_y_continuous(expand = expansion(mult = c(0,0.1)))+
  tema_g1()

p2
```

<img src="man/figures/README-exemplo g1-1.png" width="80%" />

### Nexo

``` r
p3 <- ggplot(pinguins_grupos, aes(x = ilha, y = n)) +
  geom_col(fill = "#15c5ce")+
  labs(
    title = "Número de pinguins por ilha",
    subtitle = "Registros feitos de 2007 a 2009",
    caption = "Fonte: {palmerpenguins} traduzido no pacote {dados}"
  )+
  scale_y_continuous(expand = expansion(mult = c(0,0.1)))+
  tema_nexo()

p3
```

<img src="man/figures/README-exemplo nexo-1.png" width="80%" />
