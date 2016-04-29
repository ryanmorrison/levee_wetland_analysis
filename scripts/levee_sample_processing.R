# Load libraries
library(reshape2)
library(dplyr)
library(ggplot2)

# Load functions
source("scripts/calc_area_diff.R")

# Levee sample processing ----

## Load GIS results of hydric soil units
l_hydric_01 <- read.csv("data/SSURGO_leveed_01.txt")
l_hydric_02 <- read.csv("data/SSURGO_leveed_02.txt")
l_hydric_03 <- read.csv("data/SSURGO_leveed_03.txt")
l_hydric_04 <- read.csv("data/SSURGO_leveed_04.txt")
l_hydric_05 <- read.csv("data/SSURGO_leveed_05.txt")
l_hydric_06 <- read.csv("data/SSURGO_leveed_06.txt")
l_hydric_07 <- read.csv("data/SSURGO_leveed_07.txt")
l_hydric_08 <- read.csv("data/SSURGO_leveed_08.txt")
l_hydric_09 <- read.csv("data/SSURGO_leveed_09.txt")
l_hydric_10 <- read.csv("data/SSURGO_leveed_10.txt")
l_hydric_11 <- read.csv("data/SSURGO_leveed_11.txt")
l_hydric_12 <- read.csv("data/SSURGO_leveed_12.txt")
l_hydric_13 <- read.csv("data/SSURGO_leveed_13.txt")
l_hydric_14 <- read.csv("data/SSURGO_leveed_14.txt")
l_hydric_15 <- read.csv("data/SSURGO_leveed_15.txt")
l_hydric_16 <- read.csv("data/SSURGO_leveed_16.txt")
l_hydric_17 <- read.csv("data/SSURGO_leveed_17.txt")
l_hydric_18 <- read.csv("data/SSURGO_leveed_18.txt")
l_hydric_19 <- read.csv("data/SSURGO_leveed_19.txt")
l_hydric_20 <- read.csv("data/SSURGO_leveed_20.txt")

## Load GIS results of nwi units
l_nwi_01 <- read.csv("data/NWI_leveed_01.txt")
l_nwi_02 <- read.csv("data/NWI_leveed_02.txt")
l_nwi_03 <- read.csv("data/NWI_leveed_03.txt")
l_nwi_04 <- read.csv("data/NWI_leveed_04.txt")
l_nwi_05 <- read.csv("data/NWI_leveed_05.txt")
l_nwi_06 <- read.csv("data/NWI_leveed_06.txt")
l_nwi_07 <- read.csv("data/NWI_leveed_07.txt")
l_nwi_08 <- read.csv("data/NWI_leveed_08.txt")
l_nwi_09 <- read.csv("data/NWI_leveed_09.txt")
l_nwi_10 <- read.csv("data/NWI_leveed_10.txt")
l_nwi_11 <- read.csv("data/NWI_leveed_11.txt")
l_nwi_12 <- read.csv("data/NWI_leveed_12.txt")
l_nwi_13 <- read.csv("data/NWI_leveed_13.txt")
l_nwi_14 <- read.csv("data/NWI_leveed_14.txt")
l_nwi_15 <- read.csv("data/NWI_leveed_15.txt")
l_nwi_16 <- read.csv("data/NWI_leveed_16.txt")
l_nwi_17 <- read.csv("data/NWI_leveed_17.txt")
l_nwi_18 <- read.csv("data/NWI_leveed_18.txt")
l_nwi_19 <- read.csv("data/NWI_leveed_19.txt")
l_nwi_20 <- read.csv("data/NWI_leveed_20.txt")

## Calculate difference in hydric soil and wetland areas for each sample
l_area_diff_01 <- calc_area_diff(l_hydric_01, l_nwi_01)
l_area_diff_02 <- calc_area_diff(l_hydric_02, l_nwi_02)
l_area_diff_03 <- calc_area_diff(l_hydric_03, l_nwi_03)
l_area_diff_04 <- calc_area_diff(l_hydric_04, l_nwi_04)
l_area_diff_05 <- calc_area_diff(l_hydric_05, l_nwi_05)
l_area_diff_06 <- calc_area_diff(l_hydric_06, l_nwi_06)
l_area_diff_07 <- calc_area_diff(l_hydric_07, l_nwi_07)
l_area_diff_08 <- calc_area_diff(l_hydric_08, l_nwi_08)
l_area_diff_09 <- calc_area_diff(l_hydric_09, l_nwi_09)
l_area_diff_10 <- calc_area_diff(l_hydric_10, l_nwi_10)
l_area_diff_11 <- calc_area_diff(l_hydric_11, l_nwi_11)
l_area_diff_12 <- calc_area_diff(l_hydric_12, l_nwi_12)
l_area_diff_13 <- calc_area_diff(l_hydric_13, l_nwi_13)
l_area_diff_14 <- calc_area_diff(l_hydric_14, l_nwi_14)
l_area_diff_15 <- calc_area_diff(l_hydric_15, l_nwi_15)
l_area_diff_16 <- calc_area_diff(l_hydric_16, l_nwi_16)
l_area_diff_17 <- calc_area_diff(l_hydric_17, l_nwi_17)
l_area_diff_18 <- calc_area_diff(l_hydric_18, l_nwi_18)
l_area_diff_19 <- calc_area_diff(l_hydric_19, l_nwi_19)
l_area_diff_20 <- calc_area_diff(l_hydric_20, l_nwi_20)

## Combine the calculation results for area differences
l_area_diffs_combined <- data.frame(rbind(l_area_diff_01,
                                          l_area_diff_02,
                                          l_area_diff_03,
                                          l_area_diff_04,
                                          l_area_diff_05,
                                          l_area_diff_06,
                                          l_area_diff_07,
                                          l_area_diff_08,
                                          l_area_diff_09,
                                          l_area_diff_10,
                                          l_area_diff_11,
                                          l_area_diff_12,
                                          l_area_diff_13,
                                          l_area_diff_14,
                                          l_area_diff_15,
                                          l_area_diff_16,
                                          l_area_diff_17,
                                          l_area_diff_18,
                                          l_area_diff_19,
                                          l_area_diff_20))


# Nonlevee sample processing ----

## Load GIS results of hydric soil units
n_hydric_01 <- read.csv("data/SSURGO_nonleveed_01.txt")
n_hydric_02 <- read.csv("data/SSURGO_nonleveed_02.txt")
n_hydric_03 <- read.csv("data/SSURGO_nonleveed_03.txt")
n_hydric_04 <- read.csv("data/SSURGO_nonleveed_04.txt")
n_hydric_05 <- read.csv("data/SSURGO_nonleveed_05.txt")
n_hydric_06 <- read.csv("data/SSURGO_nonleveed_06.txt")
n_hydric_07 <- read.csv("data/SSURGO_nonleveed_07.txt")
n_hydric_08 <- read.csv("data/SSURGO_nonleveed_08.txt")
n_hydric_09 <- read.csv("data/SSURGO_nonleveed_09.txt")
n_hydric_10 <- read.csv("data/SSURGO_nonleveed_10.txt")
n_hydric_11 <- read.csv("data/SSURGO_nonleveed_11.txt")
n_hydric_12 <- read.csv("data/SSURGO_nonleveed_12.txt")
n_hydric_13 <- read.csv("data/SSURGO_nonleveed_13.txt")
n_hydric_14 <- read.csv("data/SSURGO_nonleveed_14.txt")
n_hydric_15 <- read.csv("data/SSURGO_nonleveed_15.txt")
n_hydric_16 <- read.csv("data/SSURGO_nonleveed_16.txt")
n_hydric_17 <- read.csv("data/SSURGO_nonleveed_17.txt")
n_hydric_18 <- read.csv("data/SSURGO_nonleveed_18.txt")
n_hydric_19 <- read.csv("data/SSURGO_nonleveed_19.txt")
n_hydric_20 <- read.csv("data/SSURGO_nonleveed_20.txt")

## Load GIS results of nwi units
n_nwi_01 <- read.csv("data/NWI_nonleveed_01.txt")
n_nwi_02 <- read.csv("data/NWI_nonleveed_02.txt")
n_nwi_03 <- read.csv("data/NWI_nonleveed_03.txt")
n_nwi_04 <- read.csv("data/NWI_nonleveed_04.txt")
n_nwi_05 <- read.csv("data/NWI_nonleveed_05.txt")
n_nwi_06 <- read.csv("data/NWI_nonleveed_06.txt")
n_nwi_07 <- read.csv("data/NWI_nonleveed_07.txt")
n_nwi_08 <- read.csv("data/NWI_nonleveed_08.txt")
n_nwi_09 <- read.csv("data/NWI_nonleveed_09.txt")
n_nwi_10 <- read.csv("data/NWI_nonleveed_10.txt")
n_nwi_11 <- read.csv("data/NWI_nonleveed_11.txt")
n_nwi_12 <- read.csv("data/NWI_nonleveed_12.txt")
n_nwi_13 <- read.csv("data/NWI_nonleveed_13.txt")
n_nwi_14 <- read.csv("data/NWI_nonleveed_14.txt")
n_nwi_15 <- read.csv("data/NWI_nonleveed_15.txt")
n_nwi_16 <- read.csv("data/NWI_nonleveed_16.txt")
n_nwi_17 <- read.csv("data/NWI_nonleveed_17.txt")
n_nwi_18 <- read.csv("data/NWI_nonleveed_18.txt")
n_nwi_19 <- read.csv("data/NWI_nonleveed_19.txt")
n_nwi_20 <- read.csv("data/NWI_nonleveed_20.txt")

## Calculate difference in hydric soil and wetland areas for each sample
n_area_diff_01 <- calc_area_diff(n_hydric_01, n_nwi_01)
n_area_diff_02 <- calc_area_diff(n_hydric_02, n_nwi_02)
n_area_diff_03 <- calc_area_diff(n_hydric_03, n_nwi_03)
n_area_diff_04 <- calc_area_diff(n_hydric_04, n_nwi_04)
n_area_diff_05 <- calc_area_diff(n_hydric_05, n_nwi_05)
n_area_diff_06 <- calc_area_diff(n_hydric_06, n_nwi_06)
n_area_diff_07 <- calc_area_diff(n_hydric_07, n_nwi_07)
n_area_diff_08 <- calc_area_diff(n_hydric_08, n_nwi_08)
n_area_diff_09 <- calc_area_diff(n_hydric_09, n_nwi_09)
n_area_diff_10 <- calc_area_diff(n_hydric_10, n_nwi_10)
n_area_diff_11 <- calc_area_diff(n_hydric_11, n_nwi_11)
n_area_diff_12 <- calc_area_diff(n_hydric_12, n_nwi_12)
n_area_diff_13 <- calc_area_diff(n_hydric_13, n_nwi_13)
n_area_diff_14 <- calc_area_diff(n_hydric_14, n_nwi_14)
n_area_diff_15 <- calc_area_diff(n_hydric_15, n_nwi_15)
n_area_diff_16 <- calc_area_diff(n_hydric_16, n_nwi_16)
n_area_diff_17 <- calc_area_diff(n_hydric_17, n_nwi_17)
n_area_diff_18 <- calc_area_diff(n_hydric_18, n_nwi_18)
n_area_diff_19 <- calc_area_diff(n_hydric_19, n_nwi_19)
n_area_diff_20 <- calc_area_diff(n_hydric_20, n_nwi_20)

## Combine the calculation results for area differences
n_area_diffs_combined <- data.frame(rbind(n_area_diff_01,
                                          n_area_diff_02,
                                          n_area_diff_03,
                                          n_area_diff_04,
                                          n_area_diff_05,
                                          n_area_diff_06,
                                          n_area_diff_07,
                                          n_area_diff_08,
                                          n_area_diff_09,
                                          n_area_diff_10,
                                          n_area_diff_11,
                                          n_area_diff_12,
                                          n_area_diff_13,
                                          n_area_diff_14,
                                          n_area_diff_15,
                                          n_area_diff_16,
                                          n_area_diff_17,
                                          n_area_diff_18,
                                          n_area_diff_19,
                                          n_area_diff_20))

# Combine leveed and nonleveed areas ----
l_area_diffs_combined$sample_type = "levee"
n_area_diffs_combined$sample_type = "nonlevee"
all_area_diffs <- rbind(l_area_diffs_combined, n_area_diffs_combined)
by_type <- group_by(all_area_diffs, sample_type)
mean_by_type <- summarize(by_type, mean(percent_diff))
write.table(x = mean_by_type, file = "output/area_diff_results.txt")

qplot(x = sample_type, y = percent_diff, data = by_type, geom = "boxplot")
ggsave("output/percent_diff_boxplot.pdf")
