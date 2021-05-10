minMaxScale <- function(x, m = 10, M = 40) {
    x <- (x - min(x)) / (max(x) - min(x))
    return(m + (M - m)*x)
}

Z <- function(x) (x - mean(x)) / sd(x)

plotPairs <- function(df)
    psych::pairs.panels(df, lm = T, smooth = F, ellipses = F, rug = F, hist.col = "#F8766D")


###### Vector Similarity & Distance ########
cossim <- function(x, y)
  sum(x*y) / sqrt( sum(x^2) * sum(y^2) )

eudist <- function(x1, x2)
  sqrt( sum( (as_unit_vec(x1) - as_unit_vec(x2))^2 ) )

as_unit_vec <- function(x) x / sqrt(sum(x^2))


###### Read ppmi word embeddings ######
read_ppmi <- function(fp) {
  d <- as.matrix(read.delim(
    fp,
    header = FALSE,
    row.names = 1,
    stringsAsFactors = FALSE
  ))
  colnames(d) <- NULL
  return(d)
}
