# INSTALL AND LOAD PACKAGES ################################

# Install pacman ("package manager") if needed
if (!require("pacman")) install.packages("pacman")

# pacman must already be installed; then load contributed
# packages (including pacman) with pacman
pacman::p_load(datasets, magrittr, pacman, tidyverse)
# datasets: for demonstration purposes
# magrittr: for pipes
# pacman: for loading/unloading packages
# tidyverse: for so many reasons

# LOAD AND PREPARE DATA ####################################
library(tidyverse)
# Get info on "quakes" dataset
?quakes

# Get variable names
quakes %>% names()

# Save "mag" to "df" and print first few data points
df <- quakes %>%
  pull(mag) %>%   # Save mag as vector
  glimpse()       # Show beginning values

# EXPLORE DATA #############################################

# Histogram (with base graphics)
df %>% hist()

# Boxplot of values
df %>% boxplot(horizontal = T)

# Summary of magnitude
df %>% summary()

# T-TESTS ##################################################

# Use t-test for one-sample. By default, the sample mean is
# compared to a population mean of 0.
df %>% t.test()

# One-sided t-test with population mean = 4.6
df %>% 
  t.test(
    alternative = "greater", # Use directional hypothesis
    mu = 4.6                 # Set population mean
  )

# CLEAN UP #################################################

# Clear data
rm(list = ls())  # Removes all objects from environment

# Clear packages
detach("package:datasets", unload = T)  # For base packages
p_unload(all)  # Remove all contributed packages

# Clear plots
graphics.off()  # Clears plots, closes all graphics devices

# Clear console
cat("\014")  # Mimics ctrl+L

# Clear mind :)