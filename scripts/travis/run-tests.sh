#!/usr/bin/env bash

# execute Drupal tests
cd docroot
php core/scripts/run-tests.sh \
  --php `which php` --verbose --color \
  --url http://localhost \
  --dburl mysql://root:@localhost/drupal \
  --directory modules/custom
cd -
# phpunit docroot/modules/custom
