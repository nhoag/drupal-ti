#!/usr/bin/env bash

# Run Drupal tests
cd docroot

# execute Drupal tests
php docroot/core/scripts/run-tests.sh --php `which php` --verbose --color --url http://localhost
