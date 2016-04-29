# This function calculates the difference in total areas for hydric soils
# and NWI wetland polygons

calc_area_diff <- function(hydric_sample, nwi_sample) {
  nwi_sum_area <- sum(nwi_sample$AREA_km2)
  hydric_sum_area <- sum(hydric_sample$AREA_km2)
  wetland_diff <- nwi_sum_area - hydric_sum_area
  percent_diff <- wetland_diff/hydric_sum_area * 100
  diff_table <- data.frame("nwi_area_km2" = nwi_sum_area,
                           "hydric_area_km2" = hydric_sum_area,
                           "area_diff_km2" = wetland_diff,
                           "percent_diff" = percent_diff)
  return(diff_table)
}