# Tidyverse is a suit of packages aimed at data science
# For more information, check out https://www.tidyverse.org/
# This script follows Child_Variants_Script.R, only it aims to showcase tidyverse

# The code below loads the tidyverse package, and installs it if it is not already installed.
if (!require(tidyverse)) install.packages('tidyverse')
library(tidyverse)

# Load data into enviornment
load(file = "data/Child_Variants.rda")

# Getting the mean value of one column can be accomplished in the same way as base R
mean(Child_Variants$MutantReadPercent)

# But tidyverse allows lots of flexibility in grouping and filtering columns
# For example, we can filter which values and therefore rows have mutant reads over 70%
filter.child <- Child_Variants %>% filter(MutantReadPercent >= 70)

# We can also sums the mutation counts for each base:
mutation.counts <- filter.child %>%
  filter(REF== "A" | REF=="T" | REF=="G" | REF=="C") %>%  # filter for only A/T/C/G values
  group_by(REF) %>% #group by REF values
  summarise(Counts=n()) #output count of every group

# Plots the mutant reads column (with ggplot instead of base R)
ggplot(Child_Variants, aes(x=MutantReadPercent)) +
  geom_histogram(bins=50) +
  ylim(0,2000) +
  labs(title="Mutation Frequency Histogram",x="Mutant Read Percent", y = "Frequency")

# GGplots are famous because of thei customisability, the above is a very basic graph.
# Lets add a few aesthetic controls to make it look prettier
ggplot(Child_Variants, aes(x=MutantReadPercent)) +
  geom_histogram(bins=50, color="black", fill="grey") + # change the histogram bar aesthetics
  ylim(0,2000) +
  labs(title="Mutation Frequency Histogram",x="Mutant Read Percent", y = "Frequency") +
  theme_bw() # use the preloaded black and white theme
# For more ideas of how you could modify the above histogram, check out http://www.sthda.com/english/wiki/ggplot2-histogram-plot-quick-start-guide-r-software-and-data-visualization


# plots of overall distribution and the filtered set of percentage mutations
ggplot(Child_Variants, aes(y=MutantReadPercent)) +
  geom_boxplot()

ggplot(filter.child, aes(y=MutantReadPercent)) +
  geom_boxplot()

# As before, we can modify our ggplot boxplots
ggplot(Child_Variants, aes(y=MutantReadPercent)) +
  geom_boxplot(fill="gray") +
  labs("Mutant Read Percent Boxplot", y ="Mutant Read Percent") +
  theme_bw() +
  theme(axis.title.x=element_blank(),
        axis.text.x=element_blank(),
        axis.ticks.x=element_blank()) # remove x axis


# Plots the total mutation counts from the filtered subset
ggplot(mutation.counts, aes(x=REF, y=Counts, fill=REF)) +
  geom_bar(stat="identity") +
  ylim(0,3000)

# As always, we can modify the plot to our specifications
ggplot(mutation.counts, aes(x=REF, y=Counts, fill=REF)) +
  geom_bar(stat="identity") +
  ylim(0,3000)+
  geom_text(aes(label=Counts), vjust=-0.3, size=3.5)+ #add count numbers
  labs(title="Mutation Counts") +
  theme_bw()
