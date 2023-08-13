#install these packages
#Copy and Paste under the commands on the R terminal
#Enter "sudo -i R" to start R terminal!
#Enter "q()" to end R terminal! <-next select n to end R terminal!

install.packages(c("shiny","rgl","devtools"))
devtools::install_github("vqv/ggbiplot")
# Download package tarball from CRAN archive
url <- "https://cran.r-project.org/src/contrib/Archive/pca3d/pca3d_0.10.2.tar.gz"
pkgFile <- "pca3d_0.10.tar.gz"
download.file(url = url, destfile = pkgFile)
# Install dependencies
install.packages(c("ellipse"))
# Install package
install.packages(pkgs=pkgFile, type="source", repos=NULL)
# Delete package
unlink(pkgFile)
