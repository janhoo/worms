#' @title worms: Use WoRMS RESTful webservice to scrape Aphia information from World Register of Marine Species (WoRMS)
#' 
#' @description The worms package provides two kinds of functions: 
#' 
#' a) retrieving taxonomic information using WoRMS' RESTful Webservice 
#' by using taxon name search, fuzzy matching, or  Aphia ID search
#' implementing methods documented at \url{http://www.marinespecies.org/rest/}
#' 
#' b) functions that parse the data for synonyms in order to complete the dataset so that
#' for every taxon in the dataset the respective accepted-status taxon exists as well.
#' Constructed references to the respective accepted-status taxa help aggregating biodiversity data without synonyms, 
#' alternative writing standards, and common misspellings leading to errors.
#' 
#' 
#' @references 
#' Information from World Register of Marine Species is free to use under the condition that 
#' they are cited (CC-BY).
#' The citation for the full database is:  
#' 
#' WoRMS Editorial Board (2017). World Register of Marine Species. 
#' Available from http://www.marinespecies.org at VLIZ. 
#' Accessed <today>. 
#' doi:10.14284/170  
#' 
#' Check out \url{https://github.com/janhoo/worms/} for the developement version.
#' 
#' @keywords worms 
#' @docType package
#' @name worms
NULL