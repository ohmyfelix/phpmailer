.PHONY: test
test:
	php -l phpmailer
	tmp=$$(mktemp -d); \
	trap 'rm -rf "$$tmp"' EXIT; \
	printf 'To: test@example.com\nSubject: Test\n\nHello\n' | PHPMAILER_PATH="$$tmp" php phpmailer; \
	set -- "$$tmp"/*.eml; \
	test "$$#" -eq 1; \
	test -f "$$1"; \
	grep -F 'To: test@example.com' "$$1"
