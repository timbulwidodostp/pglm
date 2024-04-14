# Olah Data Semarang
# WhatsApp : +6285227746673
# IG : @olahdatasemarang_
# Fixed Effect Poisson Model Use Package pglm With (In) R Software
# Install Fixed Effect Poisson Model Use Package pglm With (In) R Software
install.packages("readxl")
install.packages("httr")
install.packages("pglm")
library("httr")
library("readxl")
library("pglm")
# Import Data Excel Into R From Github Olah Data Semarang (timbulwidodostp)
github_link <- "https://github.com/timbulwidodostp/pglm/raw/main/pglm/ships.xlsx"
temp_file <- tempfile(fileext = ".xlsx")
req <- GET(github_link, 
# authenticate using GITHUB_PAT
authenticate(Sys.getenv("GITHUB_PAT"), ""),
# write result to disk
write_disk(path = temp_file))
ships <- readxl::read_excel(temp_file)
# Estimate Fixed Effect Poisson Model Use Package pglm With (In) R Software
res <- pglm(accident ~ op_75_79+co_65_69+co_70_74+co_75_79+lnservice,family = poisson, 
data = ships, effect = "twoways", model="within", index = c("ship", "time"))
summary(res)
res <- pglm(accident ~ op_75_79+co_65_69+co_70_74+co_75_79+lnservice,family = poisson, 
data = ships, effect = "individual", model="within", index = c("ship"))
summary(res)
# Fixed Effect Poisson Model Use Package pglm With (In) R Software
# Olah Data Semarang
# WhatsApp : +6285227746673
# IG : @olahdatasemarang_
# Finished
