TEX = pandoc -V lang="en-US"
src = template.tex details.yml
refsrc = references.tex references.yml
FLAGS = --pdf-engine=xelatex

RamZallan_Resume.pdf : $(src)
	$(TEX) $(filter-out $<,$^ ) -o $@ --template=$< $(FLAGS)

.PHONY: clean
clean :
	rm RamZallan_Resume.pdf

RamZallan_References.pdf : $(refsrc)
	$(TEX) $(filter-out $<,$^ ) -o $@ --template=$< $(FLAGS)
