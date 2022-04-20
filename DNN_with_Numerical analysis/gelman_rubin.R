setwd("C:/Users/Lukas/AA_Python/RSCAM/Bayesian NN")

library(coda)

c1 <- read.csv('rw_chain1.csv', header = FALSE)
c2 <- read.csv('rw_chain2.csv', header = FALSE)
c3 <- read.csv('rw_chain3.csv', header = FALSE)

mcmc1 <- as.mcmc(c1)
mcmc2 <- as.mcmc(c2)
mcmc3 <- as.mcmc(c3)

gelman.diag(mcmc.list(list(mcmc1, mcmc2, mcmc3)))

effectiveSize(mcmc3)

