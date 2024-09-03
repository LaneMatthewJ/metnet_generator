library(mockery)

describe("Read Flist ", {
  it("throws an error if only one column is in the file", {
    input_file_path <- '../test_data/test_input_file/input_single_col.tsv'

    expected_error <- "File must contain at least file path and case/control status. Please see documentation/vignettes for information."
    expect_error(read_flist(input_file_path), expected_error) 
  })
  # it("reads in file with no columns and returns datatable with columns", {
  #   input_file_path <- '../test_data/test_input_file/input_no_header.tsv'

  #   expected_output <- data.frame(
  #     path = c(
  #       "/path/to/file/aflc1.mzXML",
  #       "/path/to/file/aflc2.mzXML",
  #       "/path/to/file/aflns1.mzXML",
  #       "/path/to/file/aflns2.mzXML",
  #       "/path/to/file/afls1.mzXML",
  #       "/path/to/file/afls2.mzXML"
  #     ),
  #     type = c(
  #       'control',
  #       'control',
  #       'nonsulfated',
  #       'nonsulfated',
  #       'sulfated',
  #       'sulfated'
  #     ),
  #     name = c(
  #       "aflc1",
  #       "aflc2",
  #       "aflns1",
  #       "aflns2",
  #       "afls1",
  #       "afls2"
  #     )
  #   )

  #   actual_output <- read_flist(input_file_path) #header = F by default
 
  #   expect_equal(actual_output, expected_output) 
  # })
  # it("reads in file with more", {})
})

describe("Read File Input Flist ", { 

})
# removes test files so as not to clutter everything up
