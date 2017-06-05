#' @name worms
#' @title worms: Use WoRMS RESTful webservice to scrape Aphia information from \url{http://www.marinespecies.org}
#' 
#' @description worms provides functions to crape Aphia information from \href{www.marinespecies.org}{WoRMS}.
#' It implements methods documented at \url{http://www.marinespecies.org/rest/}.
#' 
#' @section worms functions:
#' wormsbynames implements the GET AphiaRecordsByNames method 
#' For each given scientific name, try to find one or more AphiaRecords. 
#' FIXME only the first record per name is currently preserved.
#' This allows you to match multiple names in one call
#' @keywords worms 
#' @docType package
#' 
NULL