all:
	@gcov *.gcda *.gcno
	@lcov -q -c -b . -d . -o coverage.info
	@genhtml coverage.info -o coverage  | grep "%"

clean:
	@rm -f *.o *.d
	@rm -rf coverage *.gcda *.gcno *.gcov coverage.info
