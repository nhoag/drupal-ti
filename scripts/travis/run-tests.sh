#!/usr/bin/env bash

# execute Drupal tests
php docroot/core/scripts/run-tests.sh \
  --php `which php` --verbose --color \
  --url http://localhost \
  --dburl mysql://root:@localhost/drupal \
  --directory docroot/modules/custom

# phpunit docroot/modules/custom
