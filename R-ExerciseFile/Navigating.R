# INSTALL AND LOAD PACKAGES ################################
install.packages("tidyverse")
# Load base packages manually
library(datasets)  # For example datasets 
#load third party Library
library(tidyverse)
# LOAD AND PREPARE DATA ####################################

?iris
df <- iris
head(df)
covid_df=read_csv("https://raw.githubusercontent.com/svkarthik86/Advanced-python/main/subset-covid-data.csv")

# ANALYZE DATA #############################################

hist(df$Sepal.Width, 
  main = "Histogram of Sepal Width",
  xlab = "Sepal Width (in cm)")

hist(covid_df$cases, 
     main = "Histogram of cases",
     xlab = "cases (n)")

# CLEAN UP #################################################

# Clear environment
rm(list = ls()) 

# Clear packages
detach("package:datasets", unload = TRUE)  # For base
detach("package:tidyverse", unload = TRUE)

# Clear plots
graphics.off()  # Clears plots, closes all graphics devices

# Clear console
cat("\014")  # ctrl+L

# Clear mind :)