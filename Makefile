# emacs setup
# Tom Regner <tom@goochesa.de>
#

PYTHON ?= python
CASK ?= ~/.cask/bin/cask
EMACS ?= emacs
CURL ?= curl
GIT ?= git

CASK_URL = "https://raw.github.com/cask/cask/master/go"

bootstrap: $(HOME)/.emacs.src.d/org-mode/README $(HOME)/.cask/bin/cask
	$(CASK) install

$(HOME)/.cask/bin/cask: install-cask

$(HOME)/.emacs.src.d/org-mode/README: fetch-src

install-cask: 
	$(CURL) -fsSkL $(CASK_URL) | $(PYTHON)

fetch-src: $(HOME)/.emacs.src.d/
	bin/fetch-sources

$(HOME)/.emacs.src.d/:
	mkdir $(HOME)/.emacs.src.d/

.PHONY=install-cask
