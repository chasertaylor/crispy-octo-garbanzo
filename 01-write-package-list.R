#' ---
#' output: github_document
#' ---

library(tidyverse)
library(here)

ipt <- installed.packages() %>%
  as_tibble() %>%
  select(Package, LibPath, Version, Priority, Built) %>%
  write_csv(here::here("data/package_list.csv"))
