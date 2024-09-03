#' Read Flist
#' @param flist The file path to the flist in question. 
#'
#'
#'
read_flist <- function(flist, header=F) {
  flist_table <- tryCatch(
      {
        data.table::fread(flist, header = header)
      },
      error = function(cond) {
        # TODO: Depending on verbosity, update error message?
        cat("Error in reading in file list:\n", cond$message)
        stop(cond)
      }
    )

    if (ncol(flist_table) < 2 ) {
      stop("File must contain at least file path and case/control status. Please see documentation/vignettes for information.")
    }

    # add extra column if only 2 supplied. 
    

    column_names <- colnames(flist_table)
    # Extract only the first threee columns
    col_sliced_flist <- flist_table[ , c('V1', 'V2', 'V3')]
    colnames(col_sliced_flist) <- c("path", "type", "name")

    return(col_sliced_flist)

}



#' Read File Input
#'
#' `read_file_input` takes in a file that contains a list of all 
#' input LC-MS data mzXML files and their associated metadata. 
#' This assumes that the file in question does not have a header
#' 
#'  @param  filepath    This is a string path toe the input file. 
#'  
#' @return a list containing a metadata data frame and a list of 
#'          files to the LC-MS mzXML files. 
read_file_input <- function(filepath, header){
    if(is.null(filpath)) {
        error_message <- paste("File path", filepath, "is null")
        stop(error_message)
    }
    if(file.exists(filpath)) {
        error_message <- paste("File path", filepath, "does not exist.")
        stop(error_message)
    }


}