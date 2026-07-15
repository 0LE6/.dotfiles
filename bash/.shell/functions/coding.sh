# g++: compile and run all in one 
rcpp() {
    if [ $# -eq 1 ]; then
        g++ "$@" -o "${@%.*}" && \
        "./${@%.*}"
    else
        echo "Usage: rcpp <filename>.cpp"
    fi
}
