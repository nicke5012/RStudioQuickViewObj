#' Execute View() on highlighted text in RStudio
#'
#' @param obj highlighted_text
#' @export

quickViewObj <- function(obj) {

  context <- rstudioapi::getActiveDocumentContext()
  obj <- context$selection[[1]]$text

  view_command <- sprintf('View(%s)', obj)

  rstudioapi::sendToConsole(view_command, execute = TRUE)
}
