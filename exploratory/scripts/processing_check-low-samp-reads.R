library(dplyr)
library(biomformat)

sampinf.clas <- read.csv("T:/Labs/Spakowicz/projects/fitness/data/onecodex/One Codex Results (Long) (2021-06-29 20_02).csv")
sampinf <- read.csv("T:/Labs/Spakowicz/projects/fitness/data/onecodex/One Codex Sample Sheet.csv")

test <- sampinf.clas %>%
  group_by(Sample.Name) %>%
  summarize(nreads = sum(Reads)) %>%
  arrange(nreads) %>%
  # filter(nreads < 2e6) %>%
  rename("Name" = "Sample.Name") %>%
  left_join(sampinf)


samp.biom <- read_biom("T:/Labs/Spakowicz/projects/fitness/data/onecodex/One Codex BIOM (2021-06-29 20_02).biom")

check <- biomformat::biom_data(samp.biom)

test <- lapply(samp.biom$data, function(x) x[2])
summary(unlist(test))


data <- bind_rows(samp.biom$data)


test <- as.matrix(check)
sampsums <- colSums(test)
bad.vals <- sampsums[sampsums < 2e6]
bad.vals
