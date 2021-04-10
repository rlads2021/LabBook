minMaxScale <- function(x, m = 10, M = 40) {
    x <- (x - min(x)) / (max(x) - min(x))
    return(m + (M - m)*x)
}

Z <- function(x) (x - mean(x)) / sd(x)

plotPairs <- function(df) 
    psych::pairs.panels(df, lm = T, smooth = F, ellipses = F, rug = F, hist.col = "#F8766D")