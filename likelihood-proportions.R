#The likelihood of getting 4 or fewer boys out of 10 births is 39%.
#400 or fewer out of 1,000 is less than 1 in 7 billion.

#Really?

thisNumberOrFewer = function(numberOfBoys, births) {
  hits = 0
  
  while (numberOfBoys >= 0) {
    hits = hits + choose(births, numberOfBoys)
    
    numberOfBoys = numberOfBoys - 1
  }
  
  return(hits / 2^births)
}

#4 or fewer boys from 10 births:

print(thisNumberOrFewer(4, 10))

#Is this math correct? 1 boy from 1 birth:

births = 1
hits = 0

hits = hits + choose(births, 1)

print(hits / 2^births * 100)

#1 or 0 boys from 1 birth:

print(thisNumberOrFewer(1, 1))

#400 or fewer boys from 1000 births:

print(thisNumberOrFewer(400, 1000))