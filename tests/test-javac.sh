#!/bin/bash -e

# shellcheck disable=SC1090
source "$(dirname "$0")"/../scripts/resources.sh

if find . -name '*.java' -print0 | xargs -n1 -0 javac -Xlint; then
    test_passed "$0"
else
    test_failed "$0"
fi
