if (interactive()) {
  suppressMessages(require(devtools))
}

# Handle packages not installed.
if (interactive() && getRversion() >= "4.0.0") {
  globalCallingHandlers(
    packageNotFoundError = function(err) {
      try(pak::handle_package_not_found(err))
    }
  )
}

# Description defaults.
options(
  usethis.description = list(
    "Authors@R" = utils::person(
      "jane", "doe",
      email = "jane.d@gmx.net",
      role = c("aut", "cre", "cph"),
      comment = c(ORCID = "")
    )
  ),
  usethis.destdir = "your/package/path",
  usethis.overwrite = TRUE
)

# Warn on partial matches
options(
  warnPartialMatchAttr = TRUE,
  warnPartialMatchDollar = TRUE,
  warnPartialMatchArgs = TRUE
)

# Enable autocompletions for package names in
# `require()`, `library()`
utils::rc.settings(ipck = TRUE)
