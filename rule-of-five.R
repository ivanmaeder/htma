#RULE OF 5
#Range from a sample of 5 will contain the mean with 93.75% probability.

MAX_VALUE = 10000

NUMBER_OF_RUNS = 1000
NUMBER_OF_SAMPLES_TAKEN_PER_RUN = 100

POPULATION_SIZE = 500

#Uniform distribution
v = c()

for (i in 1:NUMBER_OF_RUNS) {
  s = sample(1:POPULATION_SIZE, MAX_VALUE, replace=T)
  m = median(s)
  
  hits = 0

  for (j in 1:NUMBER_OF_SAMPLES_TAKEN_PER_RUN) {
    r = range(sample(s, 5))
    if (r[1] <= m & r[2] >= m) {
      hits = hits + 1
    }
  }

  v[i] = hits
}

mean(v)