
.PHONY: test
test:
	@for i in $$(find . -type d); do \
		if [ -e "$$i/Chart.yaml" ]; then \
			helm unittest $$i; \
		fi; \
	done

.PHONY: test-debug
test-debug:
	@for i in $$(find . -type d); do \
		if [ -e "$$i/Chart.yaml" ]; then \
			helm unittest $$i --debugPlugin; \
		fi; \
	done
