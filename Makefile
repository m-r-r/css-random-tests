help:
	@echo -e "usage:\n\tmake (publish|clean|help)"

clean:
	find -iname '.*.swp' -exec rm -vf {} ';'

publish:
	ghp-import . -pm "`date +'%Y-%m-%d'` update"

.PHONY: publish clean help
