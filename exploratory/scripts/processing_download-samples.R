urls <- read.table("//fs/ess/PAS1695/projects/fitness/data/one_codex_fastq_download_urls.txt", sep = "\t")

urls.wget <- paste("wget", urls$V1)

urls.wget <- gsub("response-content-disposition=attachment; ", "", urls.wget)
make.wgets <- function(urls){
  
  urls.list <- split(urls, 
                     ceiling(
                       seq_along(urls) / 10
                     )
  )
  
  for (l in 1:length(urls.list)) {
    
    fileConn <- file(paste0("download_scripts/download_",
                            l,
                            ".pbs")
    )
    
    writeLines(c(paste0("#PBS -N download_fitness_", l),
                 "#PBS -A PAS1695",
                 "#PBS -l walltime=10:00:00",
                 "#PBS -l nodes=1:ppn=28",
                 "#PBS -j oe",
                 "",
                 "cd /fs/ess/PAS1695/projects/fitness/data/fastqs/",
                 paste(urls.list[[l]], sep = "\n"),
                 ""),
               fileConn)
    close(fileConn)
  }
}


make.wgets(urls.wget)
