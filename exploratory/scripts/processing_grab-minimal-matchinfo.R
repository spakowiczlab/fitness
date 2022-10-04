matched.dat <- read.csv("T:/Labs/Presley/FITNESS-lung/Microbiome- Rebecca/clinical-OC-matched_resolved.csv",
                        stringsAsFactors = F)
microbe.key <- matched.dat %>%
  select(id, patient.id,redcap_event_name, sequence.id) %>%
  distinct()

write.csv(microbe.key, "T:/Labs/Presley/FITNESS-lung/Microbiome- Rebecca/key_fitness-microbe-clin.csv",
          row.names = F)
