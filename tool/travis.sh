#!/bin/bash

# Fast fail the script on failures.
set -e

if [ -n "$API_KEY" ]; then
  dart tool/create_config.dart
  THE_COMMAND="pub run test -p $TEST_PLATFORM"
  echo $THE_COMMAND
  exec $THE_COMMAND
else
  echo 'Missing firebase ENV variables.'
fi
