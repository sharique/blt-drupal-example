#!/bin/bash

echo "Running compatibility is check for core."
./vendor/bin/phpcs  --standard=PHPCompatibility --runtime-set testVersion 7.4 --report-full=./report/core.log --extensions=php,inc,module docroot/core

echo "Running compatibility is check for themes."
./vendor/bin/phpcs  --standard=PHPCompatibility --runtime-set testVersion 7.4 --report-full=./report/themes.log --extensions=php,inc,theme docroot/themes

echo "Running compatibility is check for modules."
./vendor/bin/phpcs  --standard=PHPCompatibility --runtime-set testVersion 7.4 --report-full=./report/modules.log --extensions=php,inc,module docroot/modules

echo "Running compatibility is check for profiles."
./vendor/bin/phpcs  --standard=PHPCompatibility --runtime-set testVersion 7.4 --report-full=./report/profiles.log --extensions=php,inc,module docroot/profiles

echo "Running compatibility is check for vendor."
./vendor/bin/phpcs  --standard=PHPCompatibility --runtime-set testVersion 7.4 --report-full=./report/vendor.log --extensions=php,inc,module vendor
