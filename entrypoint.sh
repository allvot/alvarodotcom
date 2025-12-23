#!/bin/bash

bundle install
jekyll build --watch
jekyll serve --host 0.0.0.0 --port 3001 --watch
tail -f /dev/null
