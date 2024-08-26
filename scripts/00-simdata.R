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


# simulated data details --------------------------------------------------

## number of simulations
nsims <- 1e3

## true number of fish
N <- 100

## number of samples (also known as runs)
k <- 3

## capture probability
p <- 0.7


# make example data -------------------------------------------------------

## catches per sample
catches <- matrix(data = NA, ncol = k, nrow = nsims,
                  dimnames = list(1:nsims, paste("catch", 1:k)))
remaining <- matrix(data = NA, ncol = k + 1, nrow = nsims)
remaining[, 1] <- N
for (i in 1:k) {
  catches[, i] <- rbinom(n = nsims, size = remaining[, i], prob = p)
  remaining[, i + 1] <- (remaining[, i] - catches[, i])
}

## estimates
n_lst <- apply(catches, 1, removal)

## convert to matrix
n_mat <- do.call("rbind", lapply(n_lst, "[[", "est"))

## add to catches
n <- data.table("sim" = 1:nsims, catches, n_mat)

## plot point estimates
foo <- melt(n[, .(sim, No, p)], id.vars = "sim")
p0 <- ggplot(data = foo, mapping = aes(x = variable, y = value)) +
  geom_boxplot() +
  facet_wrap(~ variable, scales = "free")

## save plot
if (make_plots) {
  cairo_pdf(here("plots", "example-simulation.pdf"),
            width = 7, height = 7)
  print(p0)
  dev.off()
  jpeg(here("plots", "example-simulation.jpg"),
       res = 300, width = (480 * 5), height = (480 * 5))
  print(p0)
  dev.off()
}


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
