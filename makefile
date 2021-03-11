# make, make all: MD-FILES -> TEX-FILES -> PDF-FILES
# make kramdown:  MD-FILES -> TEX-FILES
# make pdflatex:  TEX-FILES -> PDF-FILES
# make clean: remove AUX-FILES, LOG-FILES, OUT-FILES
# make docs: copy NAV-FILES -> DOC-FILES

DOC-FILES = $(shell find docs/*-beta -type f -name 'index.md')
NAV-FILES = $(DOC-FILES:docs/%/index.md=_math/%/index.md)

MD-FILES  = $(shell find _math -type f -name '*.md' -and -not -name 'index.md')
TEX-FILES = $(MD-FILES:_math/%.md=_math/%.part.tex)
PDF-FILES = $(MD-FILES:_math/%.md=_math/%.pdf)
AUX-FILES = $(MD-FILES:_math/%.md=_math/%.aux)
LOG-FILES = $(MD-FILES:_math/%.md=_math/%.log)
OUT-FILES = $(MD-FILES:_math/%.md=_math/%.out)

KRAMDOWN = kramdown -o latex --latex-headers "section*,subsection*,subsubsection*,paragraph*,subparagraph*,subparagraph*"
PDFLATEX = pdflatex -interaction=batchmode

.PHONY: all docs kramdown pdflatex serve clean
	
all: kramdown pdflatex

docs: $(DOC-FILES)

docs/%/index.md: _math/%/index.md
	@echo copy: "$(@)"
	@-mkdir -p $(@D) && cp $< $@

kramdown: $(TEX-FILES)
	
_math/%.part.tex: _math/%.md
	@echo kramdown: "$(@F)"
	@$(KRAMDOWN) $< > $@

pdflatex: $(PDF-FILES)

_math/%.pdf: _math/%.tex _math/%.part.tex
	@echo pdflatex: "$(@F)"
	@cd $(@D) \
	&& ($(PDFLATEX) $(<F) > /dev/null) \
	&& ($(PDFLATEX) $(<F) > /dev/null)

serve:
	@-rm -r .jekyll-cache/  > /dev/null
	@-rm -r _site/  > /dev/null
	bundle exec jekyll serve --config _config.yml,_config_dev.yml --no-watch

clean:
	rm -f $(AUX-FILES) $(LOG-FILES) $(OUT-FILES)
