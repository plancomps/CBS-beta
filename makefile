.PHONY: all

all: docs math kramdown pdflatex

CBS-DIRS   = $(shell find . -type f -name '*.cbs' -exec dirname {} \; )
CBS-FILES  = $(shell find . -type f -name '*.cbs' )

DOCS-FILES = $(CBS-DIRS:%=_docs/%/index.md)
MATH-FILES = $(CBS-DIRS:%=_math/%/index.md)

TEX-FILES  = $(CBS-FILES:%.cbs=_math/%.part.tex)
PDF-FILES  = $(CBS-FILES:%.cbs=_math/%.pdf)
AUX-FILES  = $(CBS-FILES:%.cbs=_math/%.aux)
LOG-FILES  = $(CBS-FILES:%.cbs=_math/%.log)
OUT-FILES  = $(CBS-FILES:%.cbs=_math/%.out)

KRAMDOWN = kramdown -o latex --latex-headers "section*,subsection*,subsubsection*,paragraph*,subparagraph*,subparagraph*"

PDFLATEX = pdflatex -interaction=batchmode

SUNSHINE = java -Xss16M -jar sunshine2.jar build --language ../cbs-beta-tools/CBS 

DOCS = $(SUNSHINE) --transform-goal "One Doc" --project 

MATH = $(SUNSHINE) --transform-goal "One Math" --project 

# Web pages

.PHONY: serve

serve:
	@-rm -r .jekyll-cache/
	@-rm -r _site/
	bundle exec jekyll serve --config _config.yml,_config_dev.yml --no-watch

.PHONY: funcons languages unstable-funcons unstable-languages docs math
.PHONY: funcons-docs languages-docs unstable-funcons-docs unstable-languages-docs
.PHONY: funcons-math languages-math unstable-funcons-math unstable-languages-math

docs: funcons-docs languages-docs unstable-funcons-docs unstable-languages-docs

math: funcons-math languages-math unstable-funcons-math unstable-languages-math

funcons: funcons-docs funcons-math

languages: languages-docs languages-math
	
unstable-funcons: unstable-funcons-docs unstable-funcons-math

unstable-languages: unstable-languages-docs unstable-languages-math

funcons-docs: 
	@echo docs: Funcons-beta
	@$(DOCS) Funcons-beta

funcons-math:
	@echo math: Funcons-beta
	@$(MATH) Funcons-beta

languages-docs: 
	@echo docs: Languages-beta
	@$(DOCS) Languages-beta/IMP/IMP-cbs
	@$(DOCS) Languages-beta/MiniJava/MiniJava-cbs
	@$(DOCS) Languages-beta/SIMPLE/SIMPLE-cbs
	@$(DOCS) Languages-beta/SL/SL-cbs
	@$(DOCS) Languages-beta/OCaml-Light/OC-L-cbs

languages-math:
	@echo math: Languages-beta
	@$(MATH) Languages-beta/IMP/IMP-cbs
	@$(MATH) Languages-beta/MiniJava/MiniJava-cbs
	@$(MATH) Languages-beta/SIMPLE/SIMPLE-cbs
	@$(MATH) Languages-beta/SL/SL-cbs
	@$(MATH) Languages-beta/OCaml-Light/OC-L-cbs

unstable-funcons-docs: 
	@echo docs: Unstable-Funcons-beta
	@$(DOCS) Unstable-Funcons-beta

unstable-funcons-math:
	@echo math: Unstable-Funcons-beta
	@$(MATH) Unstable-Funcons-beta

unstable-languages-docs: 
	@echo docs: Unstable-Languages-beta
	@$(DOCS) Unstable-Languages-beta/IMP-Plus-Plus/IMPPP-cbs
	@$(DOCS) Unstable-Languages-beta/LangDev-2019/LD-cbs
	@$(DOCS) Unstable-Languages-beta/SIMPLE-Threads/SIMPLE-THR-cbs

unstable-languages-math:
	@echo math: Unstable-Languages-beta
	@$(MATH) Unstable-Languages-beta/IMP-Plus-Plus/IMPPP-cbs
	@$(MATH) Unstable-Languages-beta/LangDev-2019/LD-cbs
	@$(MATH) Unstable-Languages-beta/SIMPLE-Threads/SIMPLE-THR-cbs

# LaTeX and PDFs

# make kramdown: MATH-FILES -> TEX-FILES
# make pdflatex: TEX-FILES  -> PDF-FILES AUX-FILES LOG-FILES OUT-FILES
# make clean: rm AUX-FILES LOG-FILES OUT-FILES

.PHONY: kramdown pdflatex tex-files pdf-files clean

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


clean:
	rm -f $(AUX-FILES) $(LOG-FILES) $(OUT-FILES)
