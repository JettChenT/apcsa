rm ./out.md
cat head.md part1.md part2.md part3.md footer.md > out.md
pandoc out.md -o output/out.pdf --from markdown --template eisvogel --listings --pdf-engine=xelatex -V CJKmainfont="MSYH.ttc"