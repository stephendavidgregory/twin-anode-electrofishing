# r setup -----------------------------------------------------------------

# timer
timer <- Sys.time()

# save it
save_it <- 1

# notify
notify_me <- 1

# changelog
change_log <- 0 ## SG (2023-02-23) DO NOT USE UNTIL FIXED!

# make plots
make_plots <- 1

# show MSGS
show_msgs <- 0

# do CHKS
do_chks <- 0

# run examples
run_egs <- 0

# testing / debugging
testing <- 1

# today"s date
tday <- format(Sys.time(), "%d%m%Y")

# project name
if (all(c("here", "stringr") %in% rownames(installed.packages()))) {
  prj_nm <- here::here() |> stringr::str_extract("[^/]*$")
} else {
  prj_nm <- readline("Please enter a project name: ")
}
