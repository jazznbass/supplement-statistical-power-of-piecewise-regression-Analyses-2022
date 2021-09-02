

montecarloSC <- function(iter, seed = 1234, xlab = "d level", ylab = "Proportion",  stat = "plm",rand.test.stat = c("Mean B-A", "B"), test.parameter = "level", cases = 1, d.level = 0, MT = 20, B.start = 6, d.slope = 0, d.trend = 0, m = 20, s = 10, rtt = 0.8,extreme.p = 0, extreme.d = c(-4,-3), n = 500, limit = 5, exclude.equal = "auto", filename = NULL, distribution = "normal") {
	set.seed(seed)
	a.norm <- rep(NA,length(iter))
	b.norm <- rep(NA,length(iter))

	a.poisson <- rep(NA,length(iter))
	b.poisson <- rep(NA,length(iter))


	for(i in 1:length(iter)) {
		cases.2 <- cases
		d.level.2 <- d.level
		d.trend.2 <- d.trend
		MT.2 <- MT
		B.start.2 <- B.start
		d.slope.2 <- d.slope
		d.trend.2 <- d.trend
		s.2 <- s
		m.2 <- m
		rtt.2 <- rtt
		extreme.p.2 <- extreme.p
		extreme.d.2 <- extreme.d

		if(d.level[1] == "i")
			d.level.2 <- iter[i]
		if(rtt[1] == "i")
			rtt.2 <- iter[i]
		if(MT[1] == "i")
			MT.2 <- iter[i]
		if(B.start[1] == "i")
			B.start.2 <- iter[i]
		if(d.slope[1] == "i")
			d.slope.2 <- iter[i]
		if(d.trend[1] == "i")
			d.trend.2 <- iter[i]
		if(extreme.p[1] == "i")
			extreme.p.2 <- iter[i]
		if(cases[1] == "i")
			cases.2 <- iter[i]
		if(m[1] == "i")
			m.2 <- iter[i]
		if(distribution == "poisson" && d.level == "i" && any(iter < 1)) {
			d.level.2 <- m.2*d.level.2
		}
		if(distribution == "poisson" && d.level < 1) {
			d.level.2 <- m.2*d.level.2
		}

		res <- power.testSC(rand.test.stat = rand.test.stat, test.parameter = test.parameter, stat = stat, cases = cases.2, d.level = d.level.2, d.trend = d.trend.2,MT = MT.2, rtt = rtt.2,B.start = B.start.2, d.slope = d.slope.2, m = m.2, s = s.2, extreme.p = extreme.p.2, extreme.d = extreme.d.2, n = n, limit = limit, silent = TRUE, exclude.equal = exclude.equal, distribution = distribution)
		if(test.parameter == "level") {
			b.norm[i] <- res$power.plm.level
			b.poisson[i] <- res$power.plm.poisson.level
			a.norm[i] <- res$alphaerror.plm.level
			a.poisson[i] <- res$alphaerror.plm.poisson.level
		}
		if(test.parameter == "slope") {
			b.norm[i] <- res$power.plm.slope
			b.poisson[i] <- res$power.plm.poisson.slope
			a.norm[i] <- res$alphaerror.norm.slope
			a.poisson[i] <- res$alphaerror.plm.poisson.slope
		}

	}
	dat <- data.frame(iter = iter, a.norm = a.norm, b.norm = b.norm, a.poisson = a.poisson, b.poisson = b.poisson)

	x <- sys.call()
	tmp <- as.list(x)
	xlab <- names(tmp)[which(tmp == "i")]

	xlab <- switch(xlab,
		"cases" 	= "Number of cases",
		"d.level" 	= "Level effect (proportion reduction)",
		"rtt" 		= "Reliability",
		"m" 		= "Mean frequency",
		"MT"		= "Measurement times",
		"B.start" 	= "Start of intervention",
		"d.trend" 	= "Trend effect (proportion reduction per measurement)",
		"d.slope" 	= "Slope effect (in d/mt)",
		"extreme.p" = "Proportion extreme outliers"

	)


	out <- list(data = dat, xlab = xlab, ylab = ylab, call = x)
	plot.mc(out)
	if(is.null(filename)) {
		fn <- paste(names(x)[-1],x[-1], collapse = ",", sep = "=")
	} else {fn <- filename}
	saveRDS(out, file = paste(fn,".rds", collapse = "", sep = ""))
	write.csv(out$data, file = paste(fn,".csv", collapse = "",sep = ""))
	out$outfile <- paste(fn,".rds", collapse = "", sep = "")
	cat("Written file:", out$outfile,"\n")
	out
}

plot.mc <- function(dat, pos.legend = "topleft", reverse = FALSE, type = 1) {
	d <- dat$data

	xlim <- c(d$iter[1], d$iter[length(d$iter)])
	if(type == 1) {
		plot(d$iter, d$b.norm, xlim = xlim, ylim = c(0,1), type = "b", lwd = 2, ylab = dat$ylab, xlab = dat$xlab)
		lines(d$iter, d$a.norm, type = "b", col = "black", lty = "dotted", lwd = "2")
		lines(d$iter, d$b.poisson, type = "b", col = "grey", lty = "solid", lwd = "2")
		lines(d$iter, d$a.poisson, type = "b", col = "grey", lty = "dotted", lwd = "2")
		legend(pos.legend, c("1-\u03b2 Gaussian","\u03b1 Gaussian","1-\u03b2 Poisson","\u03b1 Poisson"), col = c("black","black","grey","grey"), lty = c(1,3,1,3), lwd = 2)
		abline(h = c(0.8, 0.05))
	}
	if(type == 2) {
		plot(d$iter, d$b.norm-d$a.norm, xlim = xlim, ylim = c(0,1), type = "b", lwd = 2, ylab = dat$ylab, xlab = dat$xlab)
		lines(d$iter, d$b.poisson-d$a.poisson, type = "b", col = "black", lty = "dotted", lwd = "2")
		legend(pos.legend, c("Correct Gaussian","Correct Poisson"), col = c("black","black","red","red"), lty = c(1,3,1,3), lwd = 2)
		abline(h = c(0.75))

	}
	if(type == 3) {
		plot(d$iter, d$b.norm, xlim = xlim, ylim = c(0,1), type = "b", lwd = 2, ylab = dat$ylab, xlab = dat$xlab)
		#lines(d$iter, d$a.norm, type = "b", col = "black", lty = "dotted", lwd = "2")
		lines(d$iter, d$b.poisson, type = "b", col = "grey", lty = "solid", lwd = "2")
		#lines(d$iter, d$a.poisson, type = "b", col = "grey", lty = "dotted", lwd = "2")
		legend(pos.legend, c("1-\u03b2 Gaussian","1-\u03b2 Poisson"), col = c("black","grey"), lty = c(1,1), lwd = 2)
		abline(h = c(0.8, 0.05))
	}



	#if(!any(is.na(d$b.norm)))
		#lines(d$iter, loess(b.norm~iter, data = d)$fitted,  col = "red", lty = "dotted", lwd = "2")
	#if(!any(is.na(d$a.norm)))
		#lines(d$iter, loess(a.hplm~iter, data = d)$fitted,  col = "red", lty = "dotted", lwd = "2")
	x <- dat$call
}

