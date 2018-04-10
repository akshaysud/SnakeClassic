#!/bin/sh
if [[ "$TRAVIS_PULL_REQUEST" != "false" ]]; then
  echo "This is a pull request. No deployment will be done."
  exit 0
fi
if [[ "$TRAVIS_BRANCH" != "build_testflight" ]]; then
  echo "Testing on a branch other than build_testflight. No deployment will be done."
  exit 0
fi
