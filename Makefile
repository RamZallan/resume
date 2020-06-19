TEX = pandoc
src = template.tex details.yml
FLAGS = --latex-engine=xelatex

RamZallan_Resume.pdf : $(src)
	$(TEX) $(filter-out $<,$^ ) -o $@ --template=$< $(FLAGS)

.PHONY: clean
clean :
	rm RamZallan_Resume.pdf
