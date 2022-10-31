# c-template
This is a template project for new c-project.

main.c is the file containing <code>main()</code>.

All the other <code>.c</code> files are c code.

Header files are to be located in <code>includes/</code>

## Build

<code>make</code> will build the code.

## Unittest

Files for unittest are located in <code>unittests</code>.
For example, <code>module.c</code> is the file with target source code.
If you want to write unit-tests for <code>module.c</code>, create <code>unittests/module.c</code> and write test codes in this file.

<code>make unittest</code> will execute unit test for <code>module.c</code> and generate a report.
