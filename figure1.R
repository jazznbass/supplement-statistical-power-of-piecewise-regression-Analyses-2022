library(scplot)
library(scan)


n2 <- 10
x1 <- c(rep(17.5, n2), rep(7.5, n2))
x1 <- x1 - seq(0.1, 4, length = n2*2)
x2 <- x1 +2.5
x3 <- x1 - 2.5

case <- scdf(x1 = x1, x2 = x2, x3 = x3, dvar = "x1", phase_design = list(A = n2, B = n2))

scplot(case) %>%
  add_theme("minimal") %>%
  set_yaxis(limits = c(0,22), line = list(
    arrow = arrow(ends = "last", length = unit(5, "points")))) %>%
  set_casenames("") %>%
  set_ylabel("Intensity\nof\nobserved\nbehaviour", angle = 0) %>%
  set_xlabel("") %>%
  set_phasenames(labels = c("Length of\nphase A", "Length of\nphase B")) %>%
  add_title("") %>%
  set_dataline(point = list(size = 1)) %>%
  add_dataline("x2", point = list(size = 1, colour = "grey90"), colour = "grey90") %>%
  add_dataline("x3", point = list(size = 1, colour = "grey90"), colour = "grey90") %>%
  add_text("Strength of the\nintervention effect",x = n2+1, y = 11, hjust = 0, face = 3) %>%
  add_arrow(x0 = n2+0.5, y0 = 15.5, x1 = n2+0.5, y1 = 5.5, ends = "both") %>%
  add_arrow(x0 = 1, y0 = 22, x1 = n2, y1 = 22, ends = "both") %>%
  add_arrow(x0 = n2+1, y0 = 22, x1 = n2*2, y1 = 22, ends = "both") %>%
  add_arrow(x0 = 1, y0 = 4, x1 = n2*2, y1 = 0, ends = "both") %>%
  add_text("Trend effect",x = 3, y = 4.5, hjust = 0, face = 3) %>%
  set_separator(linetype = "dashed", size = 0.2)



