# Compile the CV
cd CV/ && 
mkdir -p out &&
pdflatex -output-directory=out CV.tex &&
cp out/CV.pdf ../CV.pdf && 
cd ..

# Compile the Presentation
cd Presentation/ && 
mkdir -p out &&
pdflatex -output-directory=out presentation.tex && 
biber out/presentation && 
pdflatex -output-directory=out presentation.tex && 
cp out/presentation.pdf ../presentation.pdf && 
cd ..

# Compile the Dissertation
cd Dissertation/ && 
mkdir -p out &&
pdflatex -output-directory=out dissertation.tex && 
biber out/dissertation && 
pdflatex -output-directory=out dissertation.tex && 
cp out/dissertation.pdf ../dissertation.pdf && 
cd ..
