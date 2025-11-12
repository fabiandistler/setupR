
<!-- README.md is generated from README.Rmd. Please edit that file -->

# setupR (under development)

<!-- badges: start -->

[![R-CMD-check](https://github.com/fabiandistler/setupR/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/fabiandistler/setupR/actions/workflows/R-CMD-check.yaml)
[![Codecov test
coverage](https://codecov.io/gh/fabiandistler/setupR/branch/main/graph/badge.svg)](https://app.codecov.io/gh/fabiandistler/setupR?branch=main)
[![Lifecycle:
experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://lifecycle.r-lib.org/articles/stages.html#experimental)
<!-- badges: end -->

The goal of setupR is to help with common data science workflows. There
are templates for data import and cleaning functions, targets pipelines,
and more. The package makes heavy use of great packages like `{fusen}`,
`{targets}`, `{usethis}`, and others.

## Installation

You can install the development version of setupR like so:

``` r
# install.packages("pak")
pak::pak("fabiandistler/setupR")
```

## Documentation

Full documentation website on: <https://fabiandistler.github.io/setupR>

## Usage

setupR provides ready-to-use templates for common data science workflows:

``` r
library(setupR)

# Add a development history template to your project
add_template()

# Add a targets pipeline configuration
add_template("_targets.R")

# Add data loading and cleaning templates
add_template("flat_fct_load_data.Rmd")
add_template("flat_fct_clean_data.Rmd")

# Add exploratory data analysis template
add_template("exploratory_data_analysis.qmd", save_as = "my_eda.qmd")

# Add statistical modeling workflow template
add_template("model_workflow_for_inference.qmd")

# Set up R profile with best practices
fct_add_rprofile_template("project")
```

### Available Templates

- **dev_history.Rmd** - Development workflow documentation
- **flat_fct_load_data.Rmd** - Data loading function template (fusen)
- **flat_fct_clean_data.Rmd** - Data cleaning function template (fusen)
- **exploratory_data_analysis.qmd** - Quarto EDA template
- **model_workflow_for_inference.qmd** - Statistical modeling workflow
- **_targets.R** - Targets pipeline configuration
- **R profile template** - Best-practice R profile settings

## Code of Conduct

Please note that the setupR project is released with a [Contributor Code
of
Conduct](https://contributor-covenant.org/version/2/1/CODE_OF_CONDUCT.html).
By contributing to this project, you agree to abide by its terms.
