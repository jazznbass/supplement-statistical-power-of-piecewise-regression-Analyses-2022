library(tidyverse)
library(scan)

stat <- list(plm_level = plm_mc)

stat <- list(plm_level_glm = scan:::.opt$mc_fun$plm_poisson_level)

base_design <- design_template(
  n = n_sims,
  start_value = 15,
  level = 15 * -0.50,
  trend = rnorm(n_sims, 0, 0.2 * 15 /30),
  slope = rnorm(n_sims, 0, 0.2 * abs(15 * -0.50) /20),
  phase.design = list(A = 10, B = 20),
  distribution = "poisson"
)

design <- modifyList(
  base_design,
  design_template(
    start_value = i,
    level = i*j,
    trend = rnorm(n_sims, 0, 0.2*i/30),
    slope = rnorm(n_sims, 0, 0.25*abs((i*j))/20)
  )
)

res <- mc_scan(
  iterations = list(
    i = seq(5, by = 5, length = 10),
    j = seq(-0.3, by = -0.05, length = 7),
    n_sims = 100
  ),
  design = design,
  method = list(plm_level = plm_mc),
  alpha_test = FALSE
)

saveRDS(res, "problemintesity_by_level.rds")

plot_mc(res)

attr(res, "computation_duration")[1]/60

# crap

res2 <- readRDS("problemintesity_by_level.rds")
attr(res2, "computation_duration")

