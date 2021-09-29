
# Create build folders
mkdir -p bld/CV && mkdir -p bld/presentation && mkdir -p bld/dissertation 

# Compile the CV
pdflatex -output-directory=bld/CV/ CV/CV.tex &&
cp bld/CV/CV.pdf CV.pdf && 

# Compile the Presentation
pdflatex -output-directory=bld/presentation/ presentation/presentation.tex && 
biber bld/presentation/presentation && 
pdflatex -output-directory=bld/presentation/ presentation/presentation.tex && 
cp bld/presentation/presentation.pdf presentation.pdf && 

# Compile the Dissertation
pdflatex -output-directory=bld/dissertation/ dissertation/dissertation.tex && 
biber bld/dissertation/dissertation && 
pdflatex -output-directory=bld/dissertation dissertation/dissertation.tex && 
cp bld/dissertation/dissertation.pdf dissertation.pdf 
