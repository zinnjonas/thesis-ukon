rm NAME.pdf
pdflatex --aux-directory=obj --halt-on-error --job-name=NAME --quiet NAME.tex > error.txt
biber -q --output_directory obj NAME >> error.txt
makeglossaries -d obj -q NAME >> error.txt
pdflatex --aux-directory=obj --c-style-errors --halt-on-error --job-name=NAME --quiet NAME.tex >> error.txt
cat error.txt
start NAME.pdf