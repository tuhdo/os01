#!/bin/sh

# create build dir
for d in $(find images/ -type d); do
    mkdir -p build/$d
done

# export .lyx figures to .tex
cd build/
for f in $(find ../images/ -name "*.lyx"  -type f); do
    echo $(echo $f | sed  -e "s/images\//build\/images\//g"  -e "s/.lyx/.tex/g")
    lyx -E latex $(echo $f | sed  -e "s/images\//build\/images\//g"  -e "s/.lyx/.tex/g") $f
done

# process the images
find ../build/images/ -name '*.tex' -type f -exec sed -i -e '/\\begin{document}/,$!d' \
     -e '/\\begin{document}/d' -e '/\\end{document}/d'  -- {} +
