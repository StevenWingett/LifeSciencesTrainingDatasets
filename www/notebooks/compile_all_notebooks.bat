# For this to work you need to have 
# both R.exe and pandoc.exe in your
# path

for %%f in (*.Rmd) do (
    echo %%~nf
    R -e "rmarkdown::render('%%~nf.Rmd')" 
)