
<!-- README.md is generated from README.Rmd. Please edit that file -->

# **ggimprensa** <img src="man/figures/logo.png" align="right" height="120" />

<!-- badges: start -->

[![Twitter
Follow](https://img.shields.io/twitter/follow/BrunoHMioto?color=%2315202B&label=Seguir%20%40BrunoHMioto&style=social)](https://twitter.com/BrunoHMioto)
[![Codecov test
coverage](https://codecov.io/gh/brunomioto/ggimprensa/branch/master/graph/badge.svg)](https://app.codecov.io/gh/brunomioto/ggimprensa?branch=master)
[![R-CMD-check](https://github.com/brunomioto/ggimprensa/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/brunomioto/ggimprensa/actions/workflows/R-CMD-check.yaml)
<!-- badges: end -->

Temas dos principais jornais brasileiros para o ggplot2.

Esse pacote foi inspirado no pacote
[ggthemes](https://github.com/jrnold/ggthemes).

O objetivo deste pacote é ajudar os usuários a criar gráficos mais
bonitos de forma fácil e rápida.

## Instalação

Você pode instalar o pacote ggimprensa com a seguinte função:

``` r
# install.packages("remotes")
remotes::install_github("brunomioto/ggimprensa")
```

## Uso

Os temas existentes no pacote atualmente são:

- `tema_folha()` referente ao jornal [Folha de São
  Paulo](https://www.folha.uol.com.br/)

- `tema_g1()` referente ao jornal [g1 - Globo](https://g1.globo.com/)

- `tema_nexo()` referente ao [Nexo
  Jornal](https://www.nexojornal.com.br/)

- `tema_poder360()` referente ao jornal [Poder
  360](https://www.poder360.com.br/)

``` r
library("ggplot2")
library("ggimprensa")
```

### Folha de São Paulo

``` r
p1 <- pinguins_grupos |> 
  ggplot(aes(x = ilha, y = n)) +
  geom_col(fill = "#f47080")+
  labs(
    title = "Número de pinguins por ilha",
    subtitle = "Registros feitos de 2007 a 2009",
    caption = "Fonte: {palmerpenguins} traduzido no pacote {dados}"
  )+
  scale_y_continuous(expand = expansion(mult = c(0,0.05)))+
  tema_folha()

p1
```

<img src="man/figures/README-exemplo_folha-1.png" width="80%" />

#### Paleta de cores - Folha de São Paulo

Para a Folha, também é possível colorir os gráficos com a paleta de
cores do jornal. Para isso, utilize a função `scale_fill_folha()` para
preenchimentos e `scale_color_folha()` para contornos.

``` r
p1_paleta <- pinguins |> 
  group_by(especie, ilha) |> 
  count() |> 
  ggplot(aes(x = ilha, y = n)) +
  geom_col(aes(fill = especie))+
  labs(
    title = "Número de pinguins por ilha",
    subtitle = "Registros feitos de 2007 a 2009",
    caption = "Fonte: {palmerpenguins} traduzido no pacote {dados}"
  )+
  scale_y_continuous(expand = expansion(mult = c(0,0.05)))+
  scale_fill_folha()+
  tema_folha()

p1_paleta
```

<img src="man/figures/README-paleta_folha-1.png" width="80%" />

### G1

``` r
p2 <-  pinguins_grupos |> 
  ggplot(aes(x = ilha, y = n)) +
  geom_col(fill = "#c6160d")+
  labs(
    title = "Número de pinguins por ilha",
    subtitle = "Registros feitos de 2007 a 2009",
    caption = "Fonte: {palmerpenguins} traduzido no pacote {dados}"
  )+
  scale_y_continuous(expand = expansion(mult = c(0,0.05)))+
  tema_g1()

p2
```

<img src="man/figures/README-exemplo_g1-1.png" width="80%" />

### Nexo

``` r
p3 <-  pinguins_grupos |> 
  ggplot(aes(x = ilha, y = n)) +
  geom_col(fill = "#15c5ce")+
  labs(
    title = "Número de pinguins por ilha",
    subtitle = "Registros feitos de 2007 a 2009",
    caption = "Fonte: {palmerpenguins} traduzido no pacote {dados}"
  )+
  scale_y_continuous(expand = expansion(mult = c(0,0.05)))+
  tema_nexo()

p3
```

<img src="man/figures/README-exemplo_nexo-1.png" width="80%" />

### Poder 360

``` r
p4 <-  pinguins_grupos |> 
  ggplot(aes(x = ilha, y = n)) +
  geom_col(fill = "#fd541e")+
  labs(
    title = "Número de pinguins por ilha",
    subtitle = "Registros feitos de 2007 a 2009",
    caption = "Fonte: {palmerpenguins} traduzido no pacote {dados}"
  )+
  scale_y_continuous(expand = expansion(mult = c(0,0.05)))+
  tema_poder360()

p4
```

<img src="man/figures/README-exemplo_poder360-1.png" width="80%" />

Caso queira adicionar a faixa superior ao gráfico, utilize a função
`linha_poder360()`

``` r
linha_poder360(p4)
```

<img src="man/figures/README-linha-1.png" width="80%" />

## Sobre fake news

Todos sabemos que as **fake news** são um problema nos dias de hoje, e
alguns podem levantar o (válido) ponto sobre este pacote contribuir com
isso. No entanto, alguns pontos devem ser levados em consideração:

- O pacote [ggthemes](https://github.com/jrnold/ggthemes) já existe há
  um bom tempo, com temas dos principais jornais do mundo.

- Para criar uma notícia falsa, é muito mais simples criar uma montagem
  com o tema dos gráficos do que programar com ggplot2. Além disso,
  sabemos que uma simples montagem já é mais que o suficiente para uma
  notícia falsa circular.

- O **objetivo** principal deste pacote é ajudar os usuários a criar
  gráficos mais bonitos de forma fácil e rápida. Não são todos os
  usuários que sabem quais as melhores práticas de visualização de
  dados, mas reconhecem que alguns jornais brasileiros fazem um ótimo
  trabalho e podem utilizar isso como um ponto de partida.

## Melhorias e sugestões

Tem alguma ideia para o pacote ou sugestão de como posso melhorá-lo?
Crie uma nova [issue](https://github.com/brunomioto/ggimprensa/issues)
para que eu possa ajudar!

## Créditos

Esse pacote foi criado por [Bruno
Mioto](https://twitter.com/BrunoHMioto)

A hex logo foi criada por [Ícaro
Bernardes](https://twitter.com/IcaroBSC)
