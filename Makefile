# emacs setup
# Tom Regner <tom@goochesa.de>
#

PYTHON ?= python
CASK ?= ~/.cask/bin/cask
EMACS ?= emacs
CURL ?= curl
GIT ?= git

CASK_URL = "https://raw.github.com/cask/cask/master/go"

bootstrap: ${HOME}/.cask/bin/cask ${HOME}/.emacs.src.d/org-mode/README
	@$(CASK) install

${HOME}/.cask/bin/cask:
	@$(CURL) -fsSkL $(CASK_URL) | $(PYTHON)

${HOME}/.emacs.src.d/org-mode/README: ${HOME}/.emacs.src.d/
	@bin/fetch-sources

${HOME}/.emacs.src.d/:
	@mkdir ${HOME}/.emacs.src.d/


.PHONY: bootstrap
