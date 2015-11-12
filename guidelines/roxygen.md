

# Text formatting reference sheet

Taken from <https://github.com/yihui/roxygen2/blob/master/vignettes/formatting.Rmd>

Within roxygen tags, you use `.Rd` syntax to format text. This vignette shows you examples of the most important commands. The full details are described in [R extensions](http://cran.r-project.org/doc/manuals/R-exts.html#Marking-text).

Note that `\` and `%` are special characters. To insert literals, escape with a backslash: `\\`, `\%`.

## Character formatting

* `\emph{italics}`

* `\strong{bold}`

* `\code{r_function_call(with = "arguments")}`, `\code{NULL}`, `\code{TRUE}`

* `\pkg{package_name}`

## Links

To other documentation:

* `\code{\link{function}}`: function in this package

* `\code{\link[MASS]{stats}}`: function in another package

* `\link[=dest]{name}`: link to dest, but show name

* `\linkS4class{abc}`: link to an S4 class

To the web:

* `\url{http://rstudio.com}`

* `\href{http://rstudio.com}{Rstudio}`

* `\email{hadley@@rstudio.com}` (note the doubled `@`)

## Lists

* Ordered (numbered) lists:

    ```{r}
    #' \enumerate{
    #'   \item First item
    #'   \item Second item
    #' }
    ```

* Unordered (bulleted) lists

    ```{r}
    #' \itemize{
    #'   \item First item
    #'   \item Second item
    #' }
    ```

* Definition (named) lists

    ```{r}
    #' \describe{
    #'   \item{One}{First item}
    #'   \item{Two}{Second item}
    #' }
    ```

## Mathematics

Standard LaTeX (with no extensions):

* `\eqn{a + b}`: inline eqution

* `\deqn{a + b}`: display (block) equation

