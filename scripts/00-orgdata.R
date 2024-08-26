# data organisation script ------------------------------------------------

## a script `sourced` by the .qmd to organise the data for the analysis.

# info --------------------------------------------------------------------

## use changelog
# snippet changelog

## use snippets for todos
# snippet todo-bug
# snippet todo-check-me
# snippet todo-document-me
# snippet todo-fix-me
# snippet todo-optimise-me
# snippet todo-test-me

# use snippets for code chunks
# snippet saveplot
# snippet loadlatestdata


# change log --------------------------------------------------------------

## changelog


# additional libraries ----------------------------------------------------


# additional setup --------------------------------------------------------


# read raw data -----------------------------------------------------------

## read in raw data
# use data.table::fread for csv
# use readxl::read_xlsx for xslx
# use odbc::dbConnect in "Connections" tab for accdb
# use odbcDriverConnect("Driver={Microsoft Access Driver (*.mdb, *.accdb)};DBQ=C:/Users/SG14/.../test.mdb") for mdb / accdb / etc


# save data ---------------------------------------------------------------

# ## save list
# save_lst <- c(
#
#   ### model data
#   "dat" # dat
#
# )
#
# ## save image
# if (save_it) {
#   fle_nm <- paste0(prj_nm, "-data.RData")
#   save(list = save_lst, file = here("data", fle_nm))
# }
