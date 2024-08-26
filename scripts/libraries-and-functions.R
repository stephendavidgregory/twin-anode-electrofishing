# libraries & functions ---------------------------------------------------

# libraries
library(here)
library(ggplot2)
library(extrafont)
library(data.table)
library(FSA)

## potentially useful packages
# library(mathml) # for producing latex output from expressions - see https://github.com/mgondan/mathml

# functions

# ggplot style
sgg <- function(fs = 16) {
  theme(text = element_text(family = "Times New Roman", size = fs),
        panel.background = element_blank(),
        axis.line = element_line(colour = "black"),
        strip.text.x = element_text(size = fs),
        axis.text = element_text(size = fs),
        axis.title = element_text(size = fs),
        legend.title = element_text(size = fs),
        legend.text = element_text(size = fs),
        complete = FALSE)
}

# remove space between panels
squeeze_panels <- theme(panel.spacing = grid::unit(0, "lines"))

# default ggplot colours - specify n
ggplotColours <- function(n = 6, h = c(0, 360) + 15){
  if ((diff(h) %% 360) < 1) h[2] <- h[2] - 360/n
  hcl(h = (seq(h[1], h[2], length = n)), c = 100, l = 65)
}

# an alternative colour blind palette - use: scale_fill_manual(values = cbPalette), scale_colour_manual(values = cbPalette), etc.
cbPalette <- c("#999999", "#E69F00", "#56B4E9", "#009E73", "#F0E442", "#0072B2", "#D55E00", "#CC79A7")
