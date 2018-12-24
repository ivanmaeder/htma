isMedianWithinSampleRange = function(median, sample) {
  range = range(sample)

  if (range[1] <= median & range[2] >= median) {
    return(T)
  }
  
  return(F)
}

createNewPopulation = function() {
  # sample(x=10000, size=500, replace=T)
  rnorm(10000, mean=5000, sd=1)
}

checkRandomSamples = function(population) {
  hits = 0
  
  for (i in 1:100) {
    newSample = sample(population, 5)
    isMedianWithinSampleRange(median, newSample)

    if (runExperiment(population)) {
      hits = hits + 1
    }
  }
  
  return(hits)
}

#

hitsPerRun = c()

for (i in 1:100) {
  population = createNewPopulation()
  median = median(population)
  
  hitsPerRun[i] = checkRandomSamples(population)
}

mean(hitsPerRun)