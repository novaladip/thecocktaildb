build_runner:
	flutter packages pub run build_runner build --delete-conflicting-outputs

build_runner_watch:
	flutter packages pub run build_runner watch --delete-conflicting-outputs

test_coverage:
	flutter test --coverage

gen_code_coverage:
	genhtml coverage/lcov.info -o coverage/html