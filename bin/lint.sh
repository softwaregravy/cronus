#!/usr/bin/env bash

standardrb --fix
erblint --lint-all -a
bundle-audit --update
brakeman -q -w2
