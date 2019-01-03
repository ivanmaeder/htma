#SINGLE SAMPLE MAJORITY RULE
#Given a characteristic that can apply to 0-100% of a population, if you
#choose 1 sample, 75% of the time the characteristic found in the sample
#will apply to the majority.

#To try to simulate a characteristic that can apply to 0-100% of the
#population, choose a number between 0 and 100.

threshold = sample(0:100, 1)

#That splits the population into two parts: those with, and those without
#the characteristic.

#Choose a random sample from that "population."

sample = sample(0:100, 1)

#Determine if it's on the side of the majority:

onMajoritySide = function(sample, threshold) {
  success = FALSE
  
  if (threshold < 50) {
    if (sample > threshold) {
      success = TRUE
    }
  } else {
    if (sample < threshold) {
      success = TRUE
    }
  }
  
  return(success)
}

print(onMajoritySide(sample, threshold))

#Do this a few more times and work out the average success:

hits = 0
NUMBER_OF_SIMULATIONS = 1000

for (i in 1:NUMBER_OF_SIMULATIONS) {
  threshold = sample(0:100, 1)
  sample = sample(0:100, 1)
  
  if (onMajoritySide(sample, threshold)) {
    hits = hits + 1
  }
}

print(hits / NUMBER_OF_SIMULATIONS * 100)