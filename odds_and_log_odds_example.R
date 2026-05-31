set.seed(42)

log.odds <- c()

for (i in 1:1000) {
  divider <- sample(x=1:99, size=1, replace=FALSE)
  win.lose <- c(divider, 101-divider)

  log.odds[i] <- log(win.lose[1]) - log(win.lose[2])
}

hist(log.odds, breaks = 30, xlab="", ylab="", main="", freq = FALSE, yaxt="n", xlim=c(-6,6))

x <- seq(from=-8, to=8, by=0.01)
y <- dnorm(x=x, mean=mean(log.odds), sd=sd(log.odds))

lines(x, y, lwd=2, col="blue")
