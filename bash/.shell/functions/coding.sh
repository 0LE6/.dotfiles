# g++: compile and run all in one 
rcpp() {
    if [ $# -gt 0 ]; then
        g++ "$@" -o "${@%.*}" && \
        "./${@%.*}"
    else
        echo -e "Usage: rcpp <filename>.cpp\n"
        echo -e "  Flags:\n"
        echo -e "      - Enable Warnings"
        echo -e "          Wall -Weffc++ -Wextra -Wconversion -Wsign-conversionv"
    fi
}
