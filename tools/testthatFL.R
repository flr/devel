# testthatFL.R - DESC
# /testthatFL.R

# Copyright Iago MOSQUEIRA (WMR), 2020
# Author: Iago MOSQUEIRA (WMR) <iago.mosqueira@wur.nl>
#
# Distributed under the terms of the EUPL-1.2

# XX {{{
# }}}

# expect_validclass {{{

expect_validclass <- function(object, class) {
  
  # CAPTURE object and label
  act <- quasi_label(rlang::enquo(object), arg="object")

  # EXPECTATIONS

  # CLASS
  expect(
    is(act$val, class),
    sprintf("%s is not of class '%s'", act$lab, class)
    )

  # VALIDITY
  act$valid <- validObject(act$val)
  expect(
    all(act$valid),
    sprintf("%s is not a valid %s object", act$lab, class)
    )

  # RETURN value
  invisible(act$val)
} # }}}


