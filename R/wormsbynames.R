#' @title GET AphiaRecordsByNames 
#' 
#' @description takes character vector with taxon names and retrives AphiaRecords from WoRMS 
#'
#' @param taxon_names character vector with names of taxa to look up.
#' @param chunksize only 50 taxa can be looked up per request, so request are split up into chunks (should be 50 or less)
#' @param verbose be verbose
#' @param like Add a "\%"-sign after the ScientificName (SQL LIKE function). Default=true
#' @param marine_only Limit to marine taxa. Default=true
#' @param sleep_btw_chunks_in_sec pause between requests 
#' 
#' @return a data frame.
#' @details This function will take a character vector with taxon names, 
#' retrive AphiaRecords from www.marinespecies.org using the 
#' GET /AphiaRecordsByName/{ScientificName} Method described at
#' http://www.marinespecies.org/rest/.
#' Results will be outbut to a data.frame with each row being a record.
#' For each name given, only the first AphiaRecord will be retrived. Further records about 
#' deleted and ressurected ids are not preserved
#' For each given scientific name, try to find one or more AphiaRecords. This allows you to match multiple names in one call.
#' GET taxonomic information from WORMS
#' @examples
#' taxon_names<-c("Abietinaria abietina",  "Abludomelita" , "Abludomelita obtusata", "Garbage", "Abra alba" )
#' w<-wormsbynames(taxon_names)
#' failed_species<-rownames(w[is.na(w[,1]),])
wormsbynames <- function(taxon_names,verbose=TRUE,chunksize=50,like="false", marine_only="true",sleep_btw_chunks_in_sec=0.1){
  library(httr)
  library(plyr)

  search_options<-paste0("like=",like,"&marine_only=",marine_only)
  my_worms<-list()
  request<-"http://www.marinespecies.org/rest/AphiaRecordsByNames"
  #li<-setNames(    as.list(c(a[[1]],"false","true")) , c( rep("scientificnames[]",length(a[[1]])),"like","marine_only" ) )     
  # r<-GET("http://www.marinespecies.org/rest/AphiaRecordsByName", query = list("scientificnames[]" = "Abietinaria%20abietina","scientificnames[]" = "Acanthocardia%20echinata"))
  search_items<-taxon_names
  wrapname<-gsub(" ", "%20", search_items)
  chunk<-split(wrapname, ceiling(seq_along(search_items)/chunksize))
  chunkid<-split(1:length(search_items), ceiling(seq_along(search_items)/chunksize))
  for (round in 1:length(chunk)){
    if(verbose){
      cat("requesting ",length(chunk[[round]])," items, chunk ",round,"/",length(chunk), ". \n",sep = "")
    }
    m<-paste(paste(paste0("scientificnames[]=",chunk[[round]]),collapse="&"),search_options,sep="&")
    r<-GET(paste(request,m,sep="?"))
    Sys.sleep(sleep_btw_chunks_in_sec)
    
    if(verbose){
      if(r$status_code==200){
        cat("success (Status ",r$status_code,") \n",sep = "")
      } else {
        cat("operation NOT successful (Status ",r$status_code,")"," skipping chunk","\n",sep = "")
      }
    }
    
    # gather lists in master list
    r_parsed<-content(r,as="parsed")
    for (i in 1:length(r_parsed)){
      w_index<-unlist(chunkid[round])[i]
      #cat(round,i,unlist(chunkid[round])[i],class(i),"\n")
      if(is.null(r_parsed[[i]][[1]])){
        my_worms[[w_index]]<-NA
        cat("failed finding Aphia record for                ",taxon_names[w_index], "\n")
      } else {
        my_worms[[w_index]]<-r_parsed[[i]][[1]]
      }
    }
    
    
  }
  # pull dataframe out of master list
  non.null.list <- lapply(my_worms, lapply, function(x)ifelse(is.null(x), NA, x))
  worms<-rbind.fill(lapply(non.null.list, as.data.frame,stringsAsFactors = F))
  rownames(worms)<-taxon_names
  return(worms)
}













if(FALSE){   ### testing the function
  taxon_names<-c("Abietinaria abietina",  "Abludomelita" , "Abludomelita obtusata", "Garbage", "Abra alba" )
  head(w<-wormsbynames(taxon_names))
  (failed_species<-rownames(w[is.na(w[,1]),]))
}








