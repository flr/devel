# FLCLASS.R - DESC
# /R/FLCLASS.R

# Copyright 2003-2014 FLR Team. Distributed under the GPL 2 or later
# Maintainer: FLR Team <flr-team@flr-project.org>
# Soundtrack:
# Notes:

#' A class for 
#'
#' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eleifend
#' odio ac rutrum luctus. Aenean placerat porttitor commodo. Pellentesque eget porta
#' libero. Pellentesque molestie mi sed orci feugiat, non mollis enim tristique. 
#' Suspendisse eu sapien vitae arcu lobortis ultrices vitae ac velit. Curabitur id 
#' 
#' @name FLCLASS
#' @rdname FLCLASS
#' @aliases FLCLASS FLCLASS-methods FLCLASS-class
#' @docType class
#'
#' @section Slots:
#'     \describe{
#'     \item{SLOT}{Neque porro quisquam est qui dolorem ipsum (\code{SLOTCLASS}).}
#' }
#'
#' @section Validity: \describe{
#'     \item{VALIDITY}{Neque porro quisquam est qui dolorem ipsum.}
#' }
#'
#' @section Accesors:
#' All slots in the class have accessor and replacement methods defined that
#' allow retrieving and substituting individual slots.
#'
#' The values passed for replacement need to be of the class of that slot.
#' A numeric vector can also be used when replacing FLQuant slots, and the
#' vector will be used to substitute the values in the slot, but not its other
#' attributes.
#'
#' @section Constructor:
#' A construction method exists for this class that can take named arguments for
#' any of its slots. All slots are then created to match the requirements of the
#' class validity. If an unnamed \code{FLQuant} object is provided, this is used
#' for sizing but not stored in any slot.
#'
#' @author The FLR Team
#' @seealso \link{FLComp}
#' @keywords classes
#' @examples
#' 
