x = matrix(runif(1e5*500), ncol = 500)


Rprof()
system.time({
  ntrials <- 100000
  counter <- 0
  
  A <- sample(3:12, ntrials, replace = TRUE)
  B <- sample(3:12, ntrials, replace = TRUE, prob = seq(2, 1, length = 10))
  C <- sample(2:8, ntrials, replace = TRUE)
  D <- sample(2:8, ntrials, replace = TRUE, prob = seq(1, 3, length = 7))
  
  AMissed <- A > 6
  BMissed <- B > 6
  CMissed <- C > 6
  DMissed <- D > 6
  
  counter <- sum(AMissed + BMissed + CMissed + DMissed >= 2)
  
  counter / ntrials
})
Rprof(NULL)
summaryRprof()
