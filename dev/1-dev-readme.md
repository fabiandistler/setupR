
<!-- Generated from 1-dev-readme.Rmd. Please edit that file -->

# Package overview for `{fusen}` dev workflow.

## Package structure.

``` r
withr::with_dir(
  here::here(),
  fusen::draw_package_structure()
)
#> ── Reading NAMESPACE file ──────────────────────────────────────────────────────
#> ── flat_add_template.Rmd ───────────────────────────────────────────────────────
#> ── flat_fct_add_rprofile_template.Rmd ──────────────────────────────────────────
#> ── keep ────────────────────────────────────────────────────────────────────────
#> 
#> - flat_add_template.Rmd
#>   - flat_title
#>       + flat_add_template.Rmd empty
#>   - path
#>       + dev/flat_add_template.Rmd
#>   - state
#>       + 🍏 active
#>   - R
#>     - R/add_template.R
#>       + 👀 add_template
#>   - tests
#>       + tests/testthat/test-add_template.R
#>   - vignettes
#> - flat_fct_add_rprofile_template.Rmd
#>   - flat_title
#>       + flat_fct_add_rprofile_template.Rmd empty
#>   - path
#>       + dev/flat_fct_add_rprofile_template.Rmd
#>   - state
#>       + 🍏 active
#>   - R
#>     - R/fct_add_rprofile_template.R
#>       + 👀 fct_add_rprofile_template
#>       + 🙈 copy_to_clipboard
#>   - tests
#>       + tests/testthat/test-fct_add_rprofile_template.R
#>   - vignettes
#> - keep
#>   - path
#>       + keep
#>   - state
#>       + 🍏 active
#>   - R
#>     - R/setupR-package.R
#>       + 🙈 
#>   - tests
#>   - vignettes
```
