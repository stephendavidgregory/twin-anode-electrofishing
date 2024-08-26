# analysis 1 script -------------------------------------------------------

## a script `sourced` by the .qmd to run the first analysis.


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


# read in organised data --------------------------------------------------

# ## read in latest processed data
# f_nms <- list.files(path = here("Data"), pattern = __DATANAME__)
# if (length(f_nms) != 0) {
#   f_dts <- as.Date(gsub("[a-zA-Z_.]", "\\1", f_nms), "%d%m%Y")
#   f_fle <- f_nms[order(f_dts, decreasing = TRUE)][1]
#   load(here("data", f_fle))
# }


# section -----------------------------------------------------------------


# save results ------------------------------------------------------------

# ## save list
# save_lst <- c(
#
#   ### model results
#   "res" # res
#
# )
#
# ## save image
# if (save_it) {
#   fle_nm <- paste0(prj_nm, "-results.RData")
#   save(list = save_lst, file = here("results", fle_nm))
# }
