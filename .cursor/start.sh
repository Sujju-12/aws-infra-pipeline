#!/usr/bin/env bash
set -euo pipefail

cd "$(git rev-parse --show-toplevel)"

test -x .venv/bin/python3
test -f node_modules/aws-cdk/package.json
