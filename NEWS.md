# setupR (development version)

## Major Improvements

### Security

* **CRITICAL FIX**: Fixed path traversal vulnerability in `add_template()` where the `save_as` parameter could be exploited to write files outside the intended directory (e.g., `save_as = "../../../etc/passwd"`). Now validates that `save_as` contains only a filename without directory separators.

### Bug Fixes

* Fixed bug where `add_template()` with default `template = NULL` would error instead of using the default template. Now defaults to `"dev_history.Rmd"`.
* Fixed issue where `template` parameter would accept `NULL` causing unclear error messages from `match.arg()`.
* Improved error message formatting in `add_template()` (removed awkward multi-line string concatenation).

### Error Handling & Validation

* Added comprehensive input validation to `add_template()`:
  * Validates `save_as` doesn't contain directory separators
  * Validates `save_as` is not empty or whitespace-only
  * Uses `normalizePath(".", mustWork = TRUE)` to ensure working in valid directory
* Improved error handling in `fct_add_rprofile_template()`:
  * Now validates template file exists before attempting to read
  * Added error handling for file read operations
  * Returns informative error if template cannot be found
* Better error messages using cli formatting:
  * Show actual file paths instead of placeholder variable names
  * Provide actionable guidance (e.g., "Use `overwrite = TRUE`")
  * Display user-provided values in error messages

### User Experience

* **Return Values**: Both `add_template()` and `fct_add_rprofile_template()` now return values invisibly:
  * `add_template()` returns the path to created file
  * `fct_add_rprofile_template()` returns `TRUE`/`FALSE` indicating clipboard success
* **Better Feedback**: Enhanced user messaging:
  * Informative messages when clipboard is unavailable
  * Clear guidance on next steps after template creation
  * Success confirmations with proper formatting

### Documentation

* Significantly improved `add_template()` documentation:
  * Lists all available templates with descriptions
  * Shows multiple usage examples
  * Documents parameter types and defaults
  * Explains partial matching feature
* Enhanced `fct_add_rprofile_template()` documentation:
  * Explains what the template includes
  * Documents scope parameter options clearly
  * Shows examples for both user and project scopes
* **README improvements**:
  * Replaced "TODO" placeholder with comprehensive usage examples
  * Added "Available Templates" section listing all templates
  * Shows practical examples of each function
  * Better explains what setupR does

### Testing

* Added comprehensive test coverage:
  * Security: Tests for path traversal rejection
  * Validation: Tests for empty filename rejection
  * Functionality: Tests for overwrite parameter behavior
  * Error handling: Tests for file reading errors
  * Edge cases: Tests for argument matching
* Added tests for `fct_add_rprofile_template()` (previously untested)
* Added `mockery` to suggested packages for testing

### Code Quality

* Removed redundant `else if` statement (replaced with clearer logic)
* Added inline comments explaining code sections
* Improved code structure and readability
* More consistent error handling patterns
* Better use of cli package features

## Dependencies

* Added `mockery` to Suggests for improved testing capabilities

---

# setupR 0.0.0.900

* Initial development version
