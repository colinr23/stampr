# ---- roxygen documentation ----
#
#' @title glob.change
#'
#' @description
#'  The function \code{glob.change} computes a set of three global change metrics for comparison
#'  between two polygon sets. These metrics are outlined in Robertson et al. (2007; Table 4).
#'
#' @details
#'  \code{glob.change} computes three change metrics, detailed below, that can be used to quantify changes
#'  between two polygon sets:
#'  \cr\cr
#'  \code{NumRatio} -- ratio between the number of polygons in T2 and T1;
#'  \deqn{\mathtt{NumRatio} = \frac{\#(T1)}{\#(T2)}}{NumRatio=#T1/#T2}
#'  \cr
#'  \code{AreaRatio} -- ratio between the areas of polygons in T2 and T1;
#'  \deqn{\mathtt{AreaRatio} = \frac{A(T2)}{A(T1)}}{AreaRatio=A(T1)/A(T2)}
#'  \cr
#'  \code{AvgAreaRatio} -- ratio between the \code{AreaRatio} and \code{NumRatio};
#'  \deqn{\mathtt{AvgAreaRatio} = \frac{\mathtt{AreaRatio}}{\mathtt{NumRatio}} = \frac{\frac{A(T2)}{A(T1)}}{\frac{\#(T1)}{\#(T2)}}}{AvgAreaRatio=AreaRatio/NumRatio}
#'
#'  @param T1 a \code{SpatialPolygons(DataFrame)} object containing the T1 polygons for change analysis.
#'  @param T2 same as T1 but for T2.
#'
#' @return
#'  Results for the \code{NumRatio}, \code{AreaRatio}, and \code{AvgAreaRatio} metrics.
#'
#' @keywords stamp
#' @export
# ---- End of roxygen documentation ----

glob.change <- function(T1,T2){
  NumRatio <- length(T1)/length(T2)
  AreaRatio <- gArea(T1)/gArea(T2)
  AvgAreaRatio <- AreaRatio/NumRatio
  return(list(NumRatio=NumRatio, AreaRatio=AreaRatio, AvgAreaRatio = AvgAreaRatio))
  }