load(file = "data/Child_Variants.rda")
#loads data into environment

summary(Child_Variants)
# get an overview of our data (min, max, mean, median, 1& 3rd quartiles for each column)

mean(Child_Variants$MutantReadPercent)
#returns mean of the mutant percent column

logic.child <- Child_Variants$MutantReadPercent >=70
#logic test that informs us which values and therefore rows have mutant reads over 70%
filter.child <- Child_Variants[logic.child,]
#creates a new data-frame with just those TRUE values from the logic test preformed prior

sum(filter.child$REF == 'G')
sum(filter.child$REF == 'A')
sum(filter.child$REF == 'T')
sum(filter.child$REF == 'C')
#sums the mutation counts for each base

mutation.counts <- c(2347,2584,2616,2288)
#places the summed counts into a vector

hist(Child_Variants$MutantReadPercent, breaks = 40, main = 'Mutation frequency Histogram', ylim = c(0, 2000), xlab = 'Mutant Read Percent')
#plots the mutant reads column

boxplot(Child_Variants$MutantReadPercent)
boxplot(filter.child$MutantReadPercent)
#plots of overall distribution and the filtered set of percentage mutations

colours.graph <- c('black','green','red','blue')
barplot(mutation.counts, col=colours.graph, names.arg = c('G','A','T','C'), ylim = c(0, 3000), main = 'Mutation counts')
#plots the total mutation counts from the filtered subset
