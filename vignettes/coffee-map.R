library(tidyverse)
library(spData)
library(sf)
# found by searching for "global coffee data"
# u = "http://www.ico.org/prices/m1-exports.pdf"
# download.file(u, "data.pdf")
# install.packages("pdftables") # also requires an api key
# pdftables::convert_pdf(input_file = "data.pdf", output_file = "data.csv")
# d = read_csv("data.csv")
# d = d[-c(1:5), 1:3]
# names(d) = c("name_long", "y16", "y17")
# write_csv(d, "extdata/coffee-data.csv")
coffee_data = read_csv("~/repos/geocompr/extdata/coffee-data.csv")
world_coffee = left_join(world, coffee_data)
plot(world_coffee[c("y16", "y17")])
# for an interactive version
# library(tmap)
# qtm(world_coffee, c("y16", "y17"))
# tmap_mode("view")