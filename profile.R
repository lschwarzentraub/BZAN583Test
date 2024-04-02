x = matrix(runif(1e5*500), ncol = 500)


Rprof()
system.time({
ntrials <- 100000
counter <- 0

for (trial in 1:ntrials) {
  AMissed <- sum(sample(3:12,1,TRUE) > 6)
  BMissed <- sum(sample(3:12,1,TRUE,seq(2,1,length=10)) > 6)
  CMissed <- sum(sample(2:8,1,TRUE) > 6)
  DMissed <- sum(sample(2:8,1,TRUE,seq(1,3,length=7)) > 6)
  
  if ((AMissed+BMissed+CMissed+DMissed) >= 2) (counter <- counter + 1)
}

counter/ntrials
})
Rprof(NULL)
summaryRprof()
