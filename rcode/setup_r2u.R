## Setup script for r2u/bioc2u
## By Benilton Carvalho

## https://stackoverflow.com/questions/70025153/how-to-access-the-shell-in-google-colab-when-running-the-r-kernel
shell_call <- function(command, ...) {
  result <- system(command, intern = TRUE, ...)
  cat(paste0(result, collapse = "\n"))
}

# Install curl if missing
shell_call("apt update -qq")
shell_call("apt install -y --no-install-recommends curl ca-certificates git")

## Setup bioc2u and r2u
shell_call("curl https://raw.githubusercontent.com/Bioconductor/bioc2u/devel/apt_setup.sh | sudo bash")
bspm::enable()
options(bspm.version.check=FALSE)

shell_call("git clone https://github.com/benilton/cursos.git")

install.packages("readxl")
