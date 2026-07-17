# g++: compile and run all in one 
rcpp() {
    if [ $# -gt 0 ]; then
        g++ "$@" -o "${@%.*}" && \
        "./${@%.*}"
    else
        echo -e "Usage: rcpp <flags> <filename>.cpp\n"
        echo -e "  Flags:\n"
        echo -e "      - Enable Warnings"
        echo -e "          Wall -Weffc++ -Wextra -Wconversion -Wsign-conversionv\n"
        echo -e "      - Setting lang standard:"
        echo -e "          -std=c++11, -std=c++14, -std=c++17, -std=c++20, or -std=c++23\n" 
    fi


}

