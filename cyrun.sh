#!/bin/bash

node_modules/.bin/cypress run --reporter junit
cp -v test-results.xml ./test-results
