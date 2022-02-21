##################################
# Content: Analysis
# Study: HLM for single case studies
# Sample: Monte-Carlo
# Coding: Juergen Wilbert
###################################

#library(scan)
#SCAN()

source("scan_variation.R")
source("add-function.R")

########### how strong is the problem?

starttime <- proc.time()

out <- montecarloSC(
  n = 10000,
  seed = 1237,
  iter = seq(2, 22, length = 11),
  cases = 1,
  d.level = -0.5,
  m = "i",
  s = 1,
  MT = 30,
  B.start = 0.33,
  stat = c("plm", "plm.poisson"),
  distribution = "poisson",
  filename = "problemintensity"
)

duration <- proc.time() - starttime
duration

load("problemintensity.Rdata")
out
tiff(
  filename = "FIGURE2.tiff", width = 3000, height = 3000, units = "px",
  pointsize = 20, bg = "white", compression = "zip",res = 300
)
plot.mc(out)
dev.off()

plot.mc(out, type = 2)


set.seed(1240)
dat <- rSC(d.level = -6, m = 12, s = 1, MT = 30, B.start = 0.33, distribution = "poisson")
tiff(filename = "FIGURE1.tiff", width = 3000, height = 2000, units = "px", pointsize = 20, bg = "white", compression = "zip",res = 300)

plotSC(dat, FUN.AB = mean,ylab = "Frequency", ylim = c(0,NA))
dev.off()

describeSC(dat)
plm(dat, family = "poisson")
plm(dat)

dat
############# Number of measurement times

starttime <- proc.time()

out <- montecarloSC(n = 10000, seed = 1237, iter = seq(12,40, length = 15), cases = 1, d.level = -0.5, m = 12, s = 1, MT = "i", B.start = 0.33, stat = c("plm","plm.poisson"), distribution = "poisson", filename = "MTs")

duration <- proc.time() - starttime
duration

load("MTs.Rdata")
out
tiff(filename = "FIGURE3.tiff", width = 3000, height = 3000, units = "px", pointsize = 20, bg = "white", compression = "zip",res = 300)
plot.mc(out)
dev.off()
plot.mc(out, type = 2)


########### how effective is the intervention

starttime <- proc.time()
out <- montecarloSC(n = 10000, seed = 1237, iter = -(1:11)/12, cases = 1, d.level = "i", m = 12, s = 1, MT = 30, B.start = 0.33, stat = c("plm","plm.poisson"), distribution = "poisson", filename = "dlevel")
(duration <- proc.time() - starttime)

load("dlevel.Rdata")
out
plot.mc(out)
plot.mc(out, type = 2)

# V2.0
starttime <- proc.time()
#out <- montecarloSC(n = 10000, seed = 1237, iter = -(0:10)/12, cases = 1, d.level = "i", m = 12, s = 1, MT = 30, B.start = 0.33, stat = c("plm","plm.poisson"), distribution = "poisson", filename = "dlevel2")
out <- montecarloSC(n = 10000, seed = 1237, iter = seq(-10,12, by = 2)/12, cases = 1, d.level = "i", m = 12, s = 1, MT = 30, B.start = 0.33, stat = c("plm","plm.poisson"), distribution = "poisson", filename = "dlevel2")

(duration <- proc.time() - starttime)
load("dlevel2.Rdata")
out
out$data[6,"b.norm"] <- out$data[6,"a.norm"]
out$data[6,"b.poisson"] <- out$data[6,"a.poisson"]
#out$xlab <- "Intervention effect (proportion reduction)"
out$xlab <- "Intervention effect (proportion of frequency)"
tiff(filename = "FIGURE4.tiff", width = 3000, height = 3000, units = "px", pointsize = 19, bg = "white", compression = "zip",res = 300)
plot.mc(out, type = 3, pos.legend = "top")
text(0,0.0,"\u03b1\nerror")
dev.off()


dat <- rSC(n = 1, d.level = 1, cases = 1, d.level = "i", m = 12, s = 1, MT = 30, B.start = 0.33, stat = c("plm","plm.poisson"), distribution = "poisson", filename = "dlevel2")



########### robustness when a trend is present

starttime <- proc.time()
out <- montecarloSC(n = 10000, seed = 1237, iter = (-6:12)/30, cases = 1, d.trend = "i", d.level = -0.5, m = 12, s = 1, MT = 30, B.start = 0.33, stat = c("plm","plm.poisson"), distribution = "poisson", filename = "trend")


(duration <- proc.time() - starttime)
load("trend.Rdata")
out$xlab <- "Trend effect (proportion change across all measurements)"
out$data$iter <- out$data$iter/12*30

tiff(filename = "FIGURE5.tiff", width = 3000, height = 3000, units = "px", pointsize = 20, bg = "white", compression = "zip",res = 300)
plot.mc(out,pos.legend = "top")

dev.off()


set.seed(1240)
dat <- rSC(d.level = -6, d.trend = -0.2, m = 12, s = 1, MT = 30, B.start = 0.33, distribution = "poisson")
plotSC(dat, ylab = "Frequency", ylim = c(0,NA))
describeSC(dat)
plm(dat, family = "poisson")
plm(dat)


########### effect of outliers
starttime <- proc.time()
out <- montecarloSC(n = 10000, seed = 1237, iter = seq(0.0,0.26, length = 14), cases = 1, d.level = -0.5, m = 12, s = 1, MT = 30, B.start = 0.33, stat = c("plm","plm.poisson"), distribution = "poisson", filename = "outlier", extreme.p = "i", extreme.d = c(-10))

duration <- proc.time() - starttime
duration

load("outlier.Rdata")
out$xlab <-  "Trend effect (proportion of target behavior frequency across measurements)"

plot.mc(out)
plot.mc(out, type = 2)



### downwards outliers
out <- montecarloSC(n = 10000, seed = 1237, iter = seq(0.0,0.26, length = 14), cases = 1, d.level = -0.5, m = 12, s = 1, MT = 30, B.start = 0.33, stat = c("plm","plm.poisson"), distribution = "poisson", filename = "outlier_downwards", extreme.p = "i", extreme.d = c(-12,-10))

duration <- proc.time() - starttime
duration

load("outlier_downwards.Rdata")

out$xlab <- "Proportion extreme outliers \n(decrease in frequency between 83% and 100%)"
attach(out$data)
out$data$correct.norm <- b.norm-a.norm
out$data$correct.poisson <- b.poisson-a.poisson
detach(out$data)
out
tiff(filename = "FIGURE6.tiff", width = 3000, height = 3000, units = "px", pointsize = 20, bg = "white", compression = "zip",res = 300)
plot.mc(out)
dev.off()

plot.mc(out, type = 2)

### upwards outliers
starttime <- proc.time()

out <- montecarloSC(n = 10000, seed = 1237, iter = seq(0.0,0.26, length = 14), cases = 1, d.level = -0.5, m = 12, s = 1, MT = 30, B.start = 0.33, stat = c("plm","plm.poisson"), distribution = "poisson", filename = "outlier_upwards", extreme.p = "i", extreme.d = c(+10,+12))

duration <- proc.time() - starttime
duration

load("outlier_upwards.Rdata")

out$xlab <- "Proportion extreme outliers \n(increase in frequency between 83% and 100%)"
attach(out$data)
out$data$correct.norm <- b.norm-a.norm
out$data$correct.poisson <- b.poisson-a.poisson
detach(out$data)
out

tiff(filename = "FIGURE7.tiff", width = 3000, height = 3000, units = "px", pointsize = 20, bg = "white", compression = "zip",res = 300)
plot.mc(out)
dev.off()
plot.mc(out, type = 2)



set.seed(1237)
dat <- rSC(d.level = -0.5, m = 12, s = 1, MT = 30, B.start = 0.33, distribution = "poisson", extreme.p = 0.15, extreme.d = c(-12,-10))
names(dat) <- "Example extreme outlier"
plotSC(dat)



########### how hard is it to come up with a precise measurement?


### variable level d = 0.00
n <- 100
nr <- 20*n
out <- montecarloSC(n = n, seed = 1237, iter = seq(10,40, length = 16), cases = 1, d.level = -5, m = 10, s = 1, MT = "i", B.start = 0.5, stat = c("plm","plm.poisson"), distribution = "poisson", filename = "test", extreme.p = 0.1, extreme.d = c(10,20))
out

dat <- rSC(n = 1, cases = 1, d.level = -10, s = 10, MT = 40, B.start = 0.5, distribution = "poisson")
plotSC(dat)
plm(dat)

plm(dat, family = "poisson")


############## CRAP CRAP CRAP #################

### variable level d = 0.00
n <- 5
nr <- 20*n
out <- montecarloSC(n = 5, seed = 1237, iter = seq(1,51, length = 26), cases = "i", d.level = 1, MT = round(runif(nr,15,25)), B.start = round(runif(nr,5,9)))
out
### variable level d = 0.20
nr <- 20*n
starttime <- proc.time()
out <- montecarloSC(n = 500, seed = 1237, iter = seq(1,51, length = 26), cases = "i", d.level = runif(nr, 0.00,0.4), MT = round(runif(nr,15,25)), B.start = round(runif(nr,5,9)))
proc.time() - starttime

### variable level d = 0.40
nr <- 20*n
out <- montecarloSC(n = 500, seed = 1237, iter = seq(1,51, length = 26), cases = "i", d.level = runif(nr, 0.00,0.8), MT = round(runif(nr,15,25)), B.start = round(runif(nr,5,9)))

### variable level d = 0.50
nr <- 20*n
out <- montecarloSC(n = 500, seed = 1237, iter = seq(1,51, length = 26), cases = "i", d.level = runif(nr, 0.00,1), MT = round(runif(nr,15,25)), B.start = round(runif(nr,5,9)))


### variable level d = 0.60
nr <- 20*n
out <- montecarloSC(n = 500, seed = 1237, iter = seq(1,51, length = 26), cases = "i", d.level = runif(nr, 0.00,1.2), MT = round(runif(nr,15,25)), B.start = round(runif(nr,5,9)))

### variable level d = 0.80
nr <- 20*n
out <- montecarloSC(n = 500, seed = 1237, iter = seq(1,51, length = 26), cases = "i", d.level = runif(nr, 0.00,1.6), MT = round(runif(nr,15,25)), B.start = round(runif(nr,5,9)))


load("n=250,seed=1237,iter=seq(1, 51, length = 26),cases=i,d.level=runif(nr, 0, 0.4),MT=round(runif(nr, 15, 25)),B.start=round(runif(nr, 5, 9)) .RData")
plot.mc(out)

y2 <- list()
load("n=500,seed=1237,iter=seq(1, 51, length = 26),cases=i,d.level=runif(nr, 0, 0.4),MT=round(runif(nr, 15, 25)),B.start=round(runif(nr, 5, 9)) .RData")
y2[[1]] <- out$data$b.hplm
x <- out$data$iter
load("n=500,seed=1237,iter=seq(1, 51, length = 26),cases=i,d.level=runif(nr, 0, 0.8),MT=round(runif(nr, 15, 25)),B.start=round(runif(nr, 5, 9)) .RData")
y2[[2]] <- out$data$b.hplm
load("n=500,seed=1237,iter=seq(1, 51, length = 26),cases=i,d.level=runif(nr, 0, 1),MT=round(runif(nr, 15, 25)),B.start=round(runif(nr, 5, 9)) .RData")
y2[[3]] <- out$data$b.hplm
load("n=500,seed=1237,iter=seq(1, 51, length = 26),cases=i,d.level=runif(nr, 0, 1.2),MT=round(runif(nr, 15, 25)),B.start=round(runif(nr, 5, 9)) .RData")
y2[[4]] <- out$data$b.hplm
load("n=500,seed=1237,iter=seq(1, 51, length = 26),cases=i,d.level=runif(nr, 0, 1.6),MT=round(runif(nr, 15, 25)),B.start=round(runif(nr, 5, 9)) .RData")
y2[[5]] <- out$data$b.hplm

load("n=500,seed=1237,iter=seq(1, 51, length = 26),cases=i,d.level=0,MT=round(runif(nr, 15, 25)),B.start=round(runif(nr, 5, 9)) .RData")
y2[[6]] <- out$data$a.hplm
out



plot(x, ylim = c(0,1), type = "n", lwd = 2, xlim = c(1,max(x)),ylab = "Proportion significant", xlab = out$xlab)
#for(i in 1:length(y2))
#	lines(x, y2[[i]], type = "l", col = "black", lwd = "2", lty = i)
for(i in 1:5)
	lines(x, loess(y2[[i]]~x, span = 0.4)$fitted, type = "l", col = "black", lwd = 3, lty = i)
lines(x, loess(y2[[6]]~x, span = 0.4)$fitted, type = "l", col = "black", lwd = 3, lty = i)

legend("bottomright", legend = c(0.2,0.4,"0.5",0.6, 0.8), col = c("black"), lty = 1:length(y2), lwd = 2, title = "Effectsize d", bg = "white")

abline(h = c(0.8), col = "red")

legend("bottomright", legend = c(0.2,0.4,"0.5",0.6, 0.8,"0.0"), col = c("black"), lty = 1:length(y2), lwd = 2, title = "Effectsize d", bg = "white")

abline(h = c(0.8, 0.05), col = "red")


### slope effect

### variable level d = 0.00
n <- 500
nr <- 26*n

out <- montecarloSC(n = 500, seed = 1237, iter = seq(1,51, length = 26), cases = "i", d.slope = 0, MT = round(runif(nr,15,25)), B.start = round(runif(nr,5,9)),test.parameter = "slope")
out
### variable level d = 0.05
starttime <- proc.time()
out <- montecarloSC(n = 500, seed = 1237, iter = seq(1,51, length = 26), cases = "i", d.slope = runif(nr, 0.00,0.1), MT = round(runif(nr,15,25)), B.start = round(runif(nr,5,9)),test.parameter = "slope")
proc.time() - starttime

### variable level d = 0.10
starttime <- proc.time()
out <- montecarloSC(n = 500, seed = 1237, iter = seq(1,51, length = 26), cases = "i", d.slope = runif(nr, 0.05,0.15), MT = round(runif(nr,15,25)), B.start = round(runif(nr,5,9)),test.parameter = "slope")
proc.time() - starttime


### variable level d = 0.06
starttime <- proc.time()
out <- montecarloSC(n = 500, seed = 1237, iter = seq(1,51, length = 26), cases = "i", d.slope = runif(nr, 0.01,0.11), MT = round(runif(nr,15,25)), B.start = round(runif(nr,5,9)),test.parameter = "slope")
proc.time() - starttime

### variable level d = 0.07
starttime <- proc.time()
out <- montecarloSC(n = 500, seed = 1237, iter = seq(1,51, length = 26), cases = "i", d.slope = runif(nr, 0.02,0.12), MT = round(runif(nr,15,25)), B.start = round(runif(nr,5,9)),test.parameter = "slope")
proc.time() - starttime




### variable level d = 0.08
starttime <- proc.time()
out <- montecarloSC(n = 500, seed = 1237, iter = seq(1,51, length = 26), cases = "i", d.slope = runif(nr, 0.03,0.13), MT = round(runif(nr,15,25)), B.start = round(runif(nr,5,9)),test.parameter = "slope")
proc.time() - starttime


y2 <- list()
load("n=500,seed=1237,iter=seq(1, 51, length = 26),cases=i,d.slope=runif(nr, 0, 0.1),MT=round(runif(nr, 15, 25)),B.start=round(runif(nr, 5, 9)),test.parameter=slope .RData")
y2[[1]] <- out$data$b.hplm
x <- out$data$iter

load("n=500,seed=1237,iter=seq(1, 51, length = 26),cases=i,d.slope=runif(nr, 0.01, 0.11),MT=round(runif(nr, 15, 25)),B.start=round(runif(nr, 5, 9)),test.parameter=slope .RData")
y2[[2]] <- out$data$b.hplm


load("n=500,seed=1237,iter=seq(1, 51, length = 26),cases=i,d.slope=runif(nr, 0.02, 0.12),MT=round(runif(nr, 15, 25)),B.start=round(runif(nr, 5, 9)),test.parameter=slope .RData")
y2[[3]] <- out$data$b.hplm


load("n=500,seed=1237,iter=seq(1, 51, length = 26),cases=i,d.slope=runif(nr, 0.05, 0.15),MT=round(runif(nr, 15, 25)),B.start=round(runif(nr, 5, 9)),test.parameter=slope .RData")
y2[[4]] <- out$data$b.hplm


y2[[6]] <- out$data$a.hplm


plot(x, ylim = c(0,1), type = "n", lwd = 2, xlim = c(1,max(x)),ylab = "Proportion significant", xlab = out$xlab)
#for(i in 1:length(y2))
#	lines(x, y2[[i]], type = "l", col = "black", lwd = "2", lty = i)
for(i in 1:4)
	lines(x, loess(y2[[i]]~x, span = 0.4)$fitted, type = "l", col = "black", lwd = 3, lty = i)
lines(x, loess(y2[[6]]~x, span = 0.4)$fitted, type = "l", col = "black", lwd = 3, lty = i)

legend("bottomright", legend = c("0.05","0.06","0.07","0.08"), col = c("black"), lty = 1:length(y2), lwd = 2, title = "Effectsize d", bg = "white")

abline(h = c(0.8), col = "red")

legend("bottomright", legend = c("0.05","0.06","0.07","0.08","0.00"), col = c("black"), lty = 1:length(y2), lwd = 2, title = "Effectsize d", bg = "white")

abline(h = c(0.8, 0.05), col = "red")












### itarating rtt with slope effect
nr <- 100*250
out <- montecarloSC(n = 250,seed = 1235,iter = seq(0.4,0.95, length = 12), cases = 40, d.slope = runif(nr, 0.0,0.1142857), MT = round(runif(nr,15,25)), B.start = round(runif(nr,5,9)), rtt = "i", test.parameter = "slope")

starttime - proc.time()
plot.mc(out)
### variable slope d = 0.057 (total d = 0.8)

nr <- 100*500
#0.8/14*2
out <- montecarloSC(n = 250,seed = 1236, iter = seq(1,51, length = 26), cases = "i", d.slope = runif(nr, 0.0,0.1142857), MT = round(runif(nr,15,25)), B.start = round(runif(nr,5,9)),test.parameter = "slope")
#load("n=250,iter=seq(1, 41, length = 21),cases=i,d.slope=runif(nr, 0, 0.1),MT=round(runif(nr, 15, 25)),B.start=round(runif(nr, 5, 12)),test.parameter=slope .RData")
#plot.mc(out)



out
#### example single-cases template



### SLOPE
set.seed(1234)
dat <- rSC(cases = 3, d.slope =  runif(nr, 0.0,0.8/14*2), MT = round(runif(nr,15,25)), B.start = round(runif(nr,5,9)))
plotSC(dat[[1]])

##############
### DISSOZIATION DER EFFEKTE
###

set.seed(1237)
dat <- rSC(30, MT= round(runif(nr, 15, 25)),B.start=round(runif(nr, 5, 9)))
hplm(dat)

set.seed(1237)
dat <- rSC(30, MT= round(runif(nr, 15, 25)),B.start=round(runif(nr, 5, 9)), d.trend = rnorm(nr, 0.1, 0.1))
hplm(dat)

set.seed(1237)
dat <- rSC(30, MT= round(runif(nr, 15, 25)),B.start=round(runif(nr, 5, 9)), d.level=rnorm(nr, 0.5, 0.5), d.trend = rnorm(nr, 0.1, 0.1))
hplm(dat)


set.seed(1237)
dat <- rSC(30, MT= round(runif(nr, 15, 25)),B.start=round(runif(nr, 5, 9)), d.slope=rnorm(nr, 0.2, 0.1), d.level=rnorm(nr, 0.5, 0.5), d.trend = rnorm(nr, 0.1, 0.1))
hplm(dat)


