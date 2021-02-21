#!/bin/bash

echo "Running compatibility is check for themes."
./vendor/bin/phpcs  --standard=PHPCompatibility --runtime-set testVersion 7.4 --report-full=./report/themes.log --extensions=php,inc,theme docroot/themes

echo "Running compatibility is check for modules."
./vendor/bin/phpcs  --standard=PHPCompatibility --runtime-set testVersion 7.4 --report-full=./report/modules.log --extensions=php,inc,module docroot/modules
