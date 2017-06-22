## ---- echo = FALSE, message = FALSE--------------------------------------
library(heatmaply)
library(knitr)
knitr::opts_chunk$set(
   # cache = TRUE,
   dpi = 60,
  comment = "#>",
  tidy = FALSE)


## ------------------------------------------------------------------------
cor_mat <- cor(raw_pam50_expression)
dimnames(cor_mat) <- NULL


heatmaply(cor_mat, 
    main = "Count data correlation",
    plot_method = "plotly",
    col_side_colors=tcga_brca_clinical)


## ------------------------------------------------------------------------
cor_mat <- cor(log2(raw_pam50_expression + 0.5))
dimnames(cor_mat) <- NULL


heatmaply(cor_mat, 
    main = "log2 Count data correlation",
    plot_method = "plotly",
    col_side_colors=tcga_brca_clinical)


## ------------------------------------------------------------------------

cor_mat <- cor(voomed_pam50_expression)
dimnames(cor_mat) <- NULL


heatmaply(cor_mat, 
    main = "log2 cpm data correlation",
    plot_method = "plotly",
    col_side_colors=tcga_brca_clinical)


