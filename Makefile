help:
	@echo -e "usage:\n\tmake (publish|clean|help)"

clean:
	find -iname '.*.swp' -exec rm -vf {} ';'

publish:
	ghp-import . -m "`date +'%Y-%m-%d'` update"
	git push origin gh-pages

.PHONY: publish clean help
