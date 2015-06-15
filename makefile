files = \
	beamercolorthemeiate.sty \
	beamercolorthemewhiterose.sty \
	beamerouterthemeiate.sty \
	beamerthemeiate.sty \
	brasao-ufsc.pdf \
	logo-iate.pdf \


all:
	@echo 'Usage: make [install | uninstall]'

install:
	@INSTALLDIR=$$(kpsewhich -var-value TEXMFHOME); \
	if [ $$? -ne 0 ]; then \
		echo 'Warning: "kpsewhich -var-value TEXMFHOME" failed.'; \
		echo 'Installing on default directory ~/texmf'; \
		INSTALLDIR=~/texmf; \
	fi; \
	INSTALLDIR="$$INSTALLDIR/tex/latex/iate/"; \
	mkdir -p "$$INSTALLDIR"; \
	for file in $(files); do \
		cp -f "$$file" "$$INSTALLDIR"; \
	done; \
	echo "Installed theme in $$INSTALLDIR".; \


uninstall:
	@INSTALLDIR=$$(kpsewhich -var-value TEXMFHOME); \
	if [ $$? -ne 0 ]; then \
		echo 'Warning: "kpsewhich -var-value TEXMFHOME" failed.'; \
		echo 'Installing on default directory ~/texmf'; \
		INSTALLDIR=~/texmf; \
	fi; \
	INSTALLDIR="$$INSTALLDIR/tex/latex/iate/"; \
	rm -rf "$$INSTALLDIR"; \
	echo "Uninstalled theme from $$INSTALLDIR".; \
