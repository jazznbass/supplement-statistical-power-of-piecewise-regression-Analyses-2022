
```{r problemintensity-plot-1, fig.cap="Figure: Alpha and Beta error proportions."}
#tiff(filename = "FIGURE2.tiff", width = 3000, height = 3000, units = "px", pointsize = 20, bg = "white", compression = "zip",res = 300)
plot.mc(out)
#dev.off()
```

```{r problemintensity-plot-2, fig.cap="Figure: Proportion correct decisions based on alpha-level cut-off of 0.05)"}
plot.mc(out, type = 2)
```



bench::mark(
  df_fast = df_fast(A = 1:10, B = 10:1, C = 10:1),
  df      = data.frame(A = 1:10, B = 10:1, C = 10:1)
)[c("expression", "min", "median", "itr/sec", "n_gc")]

system.time(for(i in 1:1000000) data[[1]]$values)

system.time(for(i in 1:1000000) dat$values)
system.time(for(i in 1:1000000) dat2$values)


bench::mark(
  df_fast = as.list(data[[1]]),
  df      = unlist(data, recursive = FALSE),
  df2     = unlist(data, recursive = FALSE, use.names = FALSE),
  check = FALSE
)[c("expression", "min", "median", "itr/sec", "n_gc")]

?bench::mark

