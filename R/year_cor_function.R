#'A Year Correlation Function
#'
#'This function allows you to get the corrlation matrix for all numeric variables in the data for that year.
#'
#'@param year an individual year
#'
#'@return matrix
#'
#'@examples
#'year_cor(2013)
#'
#'@export

year_cor<-function(year){
  df<-dplyr::filter(Seasons_Stats_NBA,Year==year)
  df<-purrr::keep(df,is.numeric)
  df<-dplyr::select(df,-(Year))
  out<-cor(df,use="pairwise.complete.obs")
}
