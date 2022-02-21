design_template <- function(...) {
  as.list(substitute(...()))
}

mc <- function(iterations,
               design_iterations,
               base_design,
               stat,
               alpha_stat = TRUE,
               power_stat = TRUE
               ) {

  starttime <- proc.time()

  n_iterations <- prod(sapply(iterations, length))

  design <- modifyList(base_design, design_iterations)

  return_pa <- list()

  counter <- 0

  for(j in iterations$j) {
    for(i in iterations$i) {

      new_design <- do.call(
        "design_rSC",
        lapply(design, function(x) eval(x, envir = environment()))
      )

      pa <- power_test(
        design = new_design,
        stat = stat,
        design_is_one_study = FALSE,
        alpha_stat = alpha_stat,
        power_stat = power_stat,
        binom_test = FALSE
      )

      attr(pa, "i") <- i
      attr(pa, "j") <- j
      attr(pa, "design") <- new_design
      pa <- list(pa)

      return_pa <- c(return_pa, pa)

      counter <- counter + 1
      cat(round(counter/n_iterations*100), "%; ")
    }
  }

  attr(return_pa, "n_sims") <- n_sims
  attr(return_pa, "iterations") <- iterations
  attr(return_pa, "design_iterations") <- design_iterations
  attr(return_pa, "design") <- design
  attr(return_pa, "computation_duration") <- proc.time() - starttime

  return_pa
}
