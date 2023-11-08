# Docker inheritance
FROM rocker/ml-verse

# Install keras
RUN R -e 'install.packages("tensorflow", update = TRUE, ask = FALSE)'
RUN R -e 'reticulate::install_python()'
RUN R -e 'tensorflow::install_tensorflow(envname = "r-tensorflow", version = "2.9")'
RUN R -e 'install.packages("keras", update = TRUE, ask = FALSE)'
RUN R -e 'keras::install_keras(version = "2.9")'

# Install required Bioconductor package
RUN R -e 'BiocManager::install("EBImage", update = TRUE, ask = FALSE)'