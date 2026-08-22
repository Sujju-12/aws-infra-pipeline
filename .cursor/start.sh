#!/usr/bin/env bash
set -euo pipefail

cd "$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

test -x .venv/bin/python3
test -f node_modules/aws-cdk/package.json
