#!/usr/bin/env bash

# execute Drupal tests
php docroot/core/scripts/run-tests.sh --php `which php` --verbose --color --url http://localhost --db-url=mysql://root:@localhost/drupal
