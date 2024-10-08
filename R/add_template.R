# WARNING - Generated by {fusen} from dev/flat_add_template.Rmd: do not edit by hand

#' Add Rmd template
#'
#' Choose from various templates to be added to your project.
#'
#' @param template Various templates to choose from.
#' @param save_as Name of output file.
#' @param overwrite Logical. Whether to overwrite existing template file.
#' @param open Logical. Whether to open file after creation.
#' @rdname add_template
#' @return
#' Create Rmd file(s) template(s) and return its (their) path
#' @export
#'
#' @examples
#' # For classical use in your package
#' \dontrun{
#' # add only the dev_history file in an existing package
#' add_template()
#' }
add_template <- function(
    template = NULL,
    save_as = template,
    overwrite = FALSE,
    open = FALSE) {
  # Template choices
  choices <- c(
    "dev_history.Rmd", "flat_fct_load_data.Rmd", "flat_fct_clean_data.Rmd",
    "exploratory_data_analysis.qmd",
    "model_workflow_for_inference.qmd", "_targets.R"
  )

  template <- match.arg(template, choices)


  if (template != "_targets.R") {
    # Check if the file already exists
    pkg <- normalizePath(".")

    full_dev_dir <- file.path(pkg, "dev")

    file_path <- file.path(full_dev_dir, save_as[1])
    if (file.exists(file_path) && !overwrite) {
      cli::cli_abort(c("{.var file_path} already exists. Please choose a
                     different name or delete the existing file."))
    }

    if (!dir.exists(full_dev_dir)) {
      dir.create(full_dev_dir)
    }

    save_as <- paste0("dev/", save_as)
  } else if (template == "_targets.R") {
    save_as <- paste0("./", save_as)
  }

  usethis::use_template(
    template = template[1],
    save_as = save_as,
    data = list(), # Use to autofill fields?
    open = open,
    package = "setupR"
  )
}
