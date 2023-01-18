-include Makefile.options
###############################################################################
test/unit:
	RUST_LOG=DEBUG cargo test --verbose
.PHONY: test/unit		
###############################################################################
test/integration:
	RUST_LOG=DEBUG cargo test --verbose -- --include-ignored
.PHONY: test/integration		
###############################################################################
test/lint:
	cargo clippy --all-targets --all-features -- -D warnings
.PHONY: test/lint	
###############################################################################
